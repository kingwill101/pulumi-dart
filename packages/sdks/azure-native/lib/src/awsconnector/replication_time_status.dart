/// Specifies whether the replication time is enabled.
enum ReplicationTimeStatus {
  disabled("Disabled"),
  enabled("Enabled");

  const ReplicationTimeStatus(this.wireValue);
  final String wireValue;

  static ReplicationTimeStatus fromValue(String value) {
    for (final item in ReplicationTimeStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReplicationTimeStatus value: $value');
  }
}

