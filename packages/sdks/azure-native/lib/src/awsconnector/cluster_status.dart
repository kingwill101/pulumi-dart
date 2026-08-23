/// Property value
enum ClusterStatus {
  aCTIVE("ACTIVE"),
  cREATING("CREATING"),
  dELETING("DELETING"),
  fAILED("FAILED"),
  pENDING("PENDING"),
  uPDATING("UPDATING");

  const ClusterStatus(this.wireValue);
  final String wireValue;

  static ClusterStatus fromValue(String value) {
    for (final item in ClusterStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterStatus value: $value');
  }
}
