/// Direction of traffic to which this firewall applies, either `INGRESS` or `EGRESS`. The default is `INGRESS`. For `EGRESS` traffic, you cannot specify the sourceTags fields.
enum FirewallDirection {
  egress("EGRESS"),
  ingress("INGRESS");

  const FirewallDirection(this.value);
  final String value;

  static FirewallDirection fromValue(String value) {
    for (final item in FirewallDirection.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirewallDirection value: $value');
  }
}

