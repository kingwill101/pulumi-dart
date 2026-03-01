/// Specifies whether the replication time is enabled.
enum ReplicationTimeStatus {
  disabled("Disabled"),
  enabled("Enabled");

  const ReplicationTimeStatus(this.value);
  final String value;

  static ReplicationTimeStatus fromValue(String value) {
    for (final item in ReplicationTimeStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReplicationTimeStatus value: $value');
  }
}

