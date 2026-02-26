/// Direction of traffic to which this firewall applies, either `INGRESS` or `EGRESS`. The default is `INGRESS`. For `EGRESS` traffic, you cannot specify the sourceTags fields.
enum FirewallDirection3 {
  egress("EGRESS"),
  ingress("INGRESS");

  const FirewallDirection3(this.value);
  final String value;

  static FirewallDirection3 fromValue(String value) {
    for (final item in FirewallDirection3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirewallDirection3 value: $value');
  }
}
