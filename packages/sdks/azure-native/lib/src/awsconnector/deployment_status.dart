/// Property value
enum DeploymentStatus {
  cOMPLETED("COMPLETED"),
  eLIGIBLE("ELIGIBLE"),
  iNPROGRESS("IN_PROGRESS"),
  nOTELIGIBLE("NOT_ELIGIBLE"),
  pENDINGUPDATE("PENDING_UPDATE");

  const DeploymentStatus(this.wireValue);
  final String wireValue;

  static DeploymentStatus fromValue(String value) {
    for (final item in DeploymentStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeploymentStatus value: $value');
  }
}
