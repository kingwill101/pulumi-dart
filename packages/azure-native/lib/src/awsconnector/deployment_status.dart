/// Property value
enum DeploymentStatus {
  cOMPLETED("COMPLETED"),
  eLIGIBLE("ELIGIBLE"),
  iNPROGRESS("IN_PROGRESS"),
  nOTELIGIBLE("NOT_ELIGIBLE"),
  pENDINGUPDATE("PENDING_UPDATE");

  const DeploymentStatus(this.value);
  final String value;

  static DeploymentStatus fromValue(String value) {
    for (final item in DeploymentStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeploymentStatus value: $value');
  }
}

