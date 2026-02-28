/// Forwarding path for this NameServerTarget. If unset or set to DEFAULT, Cloud DNS makes forwarding decisions based on IP address ranges; that is, RFC1918 addresses go to the VPC network, non-RFC1918 addresses go to the internet. When set to PRIVATE, Cloud DNS always sends queries through the VPC network for this target.
enum ManagedZoneForwardingConfigNameServerTargetForwardingPathDnsV1beta2 {
  default_("default"),
  private("private");

  const ManagedZoneForwardingConfigNameServerTargetForwardingPathDnsV1beta2(this.value);
  final String value;

  static ManagedZoneForwardingConfigNameServerTargetForwardingPathDnsV1beta2 fromValue(String value) {
    for (final item in ManagedZoneForwardingConfigNameServerTargetForwardingPathDnsV1beta2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedZoneForwardingConfigNameServerTargetForwardingPathDnsV1beta2 value: $value');
  }
}

