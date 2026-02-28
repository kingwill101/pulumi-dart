/// Direction of traffic to which this firewall applies, either `INGRESS` or `EGRESS`. The default is `INGRESS`. For `EGRESS` traffic, you cannot specify the sourceTags fields.
enum FirewallDirectionComputeV1 {
  egress("EGRESS"),
  ingress("INGRESS");

  const FirewallDirectionComputeV1(this.value);
  final String value;

  static FirewallDirectionComputeV1 fromValue(String value) {
    for (final item in FirewallDirectionComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirewallDirectionComputeV1 value: $value');
  }
}
