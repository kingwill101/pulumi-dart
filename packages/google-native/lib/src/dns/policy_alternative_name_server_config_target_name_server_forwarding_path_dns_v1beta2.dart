/// Forwarding path for this TargetNameServer. If unset or set to DEFAULT, Cloud DNS makes forwarding decisions based on address ranges; that is, RFC1918 addresses go to the VPC network, non-RFC1918 addresses go to the internet. When set to PRIVATE, Cloud DNS always sends queries through the VPC network for this target.
enum PolicyAlternativeNameServerConfigTargetNameServerForwardingPathDnsV1beta2 {
  default_("default"),
  private("private");

  const PolicyAlternativeNameServerConfigTargetNameServerForwardingPathDnsV1beta2(
      this.value);
  final String value;

  static PolicyAlternativeNameServerConfigTargetNameServerForwardingPathDnsV1beta2
      fromValue(String value) {
    for (final item
        in PolicyAlternativeNameServerConfigTargetNameServerForwardingPathDnsV1beta2
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown PolicyAlternativeNameServerConfigTargetNameServerForwardingPathDnsV1beta2 value: $value');
  }
}
