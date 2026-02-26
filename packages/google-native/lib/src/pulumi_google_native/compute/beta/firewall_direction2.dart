/// Direction of traffic to which this firewall applies, either `INGRESS` or `EGRESS`. The default is `INGRESS`. For `EGRESS` traffic, you cannot specify the sourceTags fields.
enum FirewallDirection2 {
  egress("EGRESS"),
  ingress("INGRESS");

  const FirewallDirection2(this.value);
  final String value;

  static FirewallDirection2 fromValue(String value) {
    for (final item in FirewallDirection2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirewallDirection2 value: $value');
  }
}
