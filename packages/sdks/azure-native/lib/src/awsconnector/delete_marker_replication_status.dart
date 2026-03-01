/// Indicates whether to replicate delete markers. Disabled by default.
enum DeleteMarkerReplicationStatus {
  disabled("Disabled"),
  enabled("Enabled");

  const DeleteMarkerReplicationStatus(this.value);
  final String value;

  static DeleteMarkerReplicationStatus fromValue(String value) {
    for (final item in DeleteMarkerReplicationStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeleteMarkerReplicationStatus value: $value');
  }
}

