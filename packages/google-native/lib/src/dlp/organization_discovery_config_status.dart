/// Required. A status for this configuration.
enum OrganizationDiscoveryConfigStatus {
  statusUnspecified("STATUS_UNSPECIFIED"),
  running("RUNNING"),
  paused("PAUSED");

  const OrganizationDiscoveryConfigStatus(this.value);
  final String value;

  static OrganizationDiscoveryConfigStatus fromValue(String value) {
    for (final item in OrganizationDiscoveryConfigStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown OrganizationDiscoveryConfigStatus value: $value',
    );
  }
}
