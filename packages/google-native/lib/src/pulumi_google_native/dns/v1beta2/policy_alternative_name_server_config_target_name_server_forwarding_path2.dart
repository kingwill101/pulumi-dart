/// Forwarding path for this TargetNameServer. If unset or set to DEFAULT, Cloud DNS makes forwarding decisions based on address ranges; that is, RFC1918 addresses go to the VPC network, non-RFC1918 addresses go to the internet. When set to PRIVATE, Cloud DNS always sends queries through the VPC network for this target.
enum PolicyAlternativeNameServerConfigTargetNameServerForwardingPath2 {
  default_("default"),
  private("private");

  const PolicyAlternativeNameServerConfigTargetNameServerForwardingPath2(
      this.value);
  final String value;

  static PolicyAlternativeNameServerConfigTargetNameServerForwardingPath2
      fromValue(String value) {
    for (final item
        in PolicyAlternativeNameServerConfigTargetNameServerForwardingPath2
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown PolicyAlternativeNameServerConfigTargetNameServerForwardingPath2 value: $value');
  }
}
