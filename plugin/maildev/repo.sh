# Adds a new project to the management list.
# Arguments:
#   1. dir: The project directories
#   2. name: The project custom name.
#
function _do_maildev() {
  local name=${1?'name arg required'}
  shift 1

  # shellcheck disable=SC2086
  # shellcheck disable=SC2068
  _do_repo_plugin_cmd_add "${name}" 'maildev' ${_DO_MAILDEV_CMDS} $@
}
