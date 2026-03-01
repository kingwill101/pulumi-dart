/// Property value
enum ClusterStatus {
  aCTIVE("ACTIVE"),
  cREATING("CREATING"),
  dELETING("DELETING"),
  fAILED("FAILED"),
  pENDING("PENDING"),
  uPDATING("UPDATING");

  const ClusterStatus(this.value);
  final String value;

  static ClusterStatus fromValue(String value) {
    for (final item in ClusterStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterStatus value: $value');
  }
}

