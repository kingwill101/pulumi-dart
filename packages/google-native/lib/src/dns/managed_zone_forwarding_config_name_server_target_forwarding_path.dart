/// Forwarding path for this NameServerTarget. If unset or set to DEFAULT, Cloud DNS makes forwarding decisions based on IP address ranges; that is, RFC1918 addresses go to the VPC network, non-RFC1918 addresses go to the internet. When set to PRIVATE, Cloud DNS always sends queries through the VPC network for this target.
enum ManagedZoneForwardingConfigNameServerTargetForwardingPath {
  default_("default"),
  private("private");

  const ManagedZoneForwardingConfigNameServerTargetForwardingPath(this.value);
  final String value;

  static ManagedZoneForwardingConfigNameServerTargetForwardingPath fromValue(String value) {
    for (final item in ManagedZoneForwardingConfigNameServerTargetForwardingPath.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedZoneForwardingConfigNameServerTargetForwardingPath value: $value');
  }
}

