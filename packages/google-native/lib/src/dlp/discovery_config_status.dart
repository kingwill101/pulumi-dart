/// Required. A status for this configuration.
enum DiscoveryConfigStatus {
  statusUnspecified("STATUS_UNSPECIFIED"),
  running("RUNNING"),
  paused("PAUSED");

  const DiscoveryConfigStatus(this.value);
  final String value;

  static DiscoveryConfigStatus fromValue(String value) {
    for (final item in DiscoveryConfigStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiscoveryConfigStatus value: $value');
  }
}

