/// Indicates whether to replicate delete markers. Disabled by default.
enum DeleteMarkerReplicationStatus {
  disabled("Disabled"),
  enabled("Enabled");

  const DeleteMarkerReplicationStatus(this.wireValue);
  final String wireValue;

  static DeleteMarkerReplicationStatus fromValue(String value) {
    for (final item in DeleteMarkerReplicationStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeleteMarkerReplicationStatus value: $value');
  }
}

