// ignore_for_file: unused_element, unnecessary_cast


/// A network security group rule to apply to an inbound endpoint.
class NetworkSecurityGroupRuleResponse {
  /// The action that should be taken for a specified IP address, subnet range or tag.
  final String access;
  /// Priorities within a pool must be unique and are evaluated in order of priority. The lower the number the higher the priority. For example, rules could be specified with order numbers of 150, 250, and 350. The rule with the order number of 150 takes precedence over the rule that has an order of 250. Allowed priorities are 150 to 4096. If any reserved or duplicate values are provided the request fails with HTTP status code 400.
  final int priority;
  /// Valid values are a single IP address (i.e. 10.10.10.10), IP subnet (i.e. 192.168.1.0/24), default tag, or * (for all addresses).  If any other values are provided the request fails with HTTP status code 400.
  final String sourceAddressPrefix;
  /// Valid values are '*' (for all ports 0 - 65535) or arrays of ports or port ranges (i.e. 100-200). The ports should in the range of 0 to 65535 and the port ranges or ports can't overlap. If any other values are provided the request fails with HTTP status code 400. Default value will be *.
  final List<String>? sourcePortRanges;

  /// Creates a new [NetworkSecurityGroupRuleResponse].
  /// [access] The action that should be taken for a specified IP address, subnet range or tag.
  /// [priority] Priorities within a pool must be unique and are evaluated in order of priority. The lower the number the higher the priority. For example, rules could be specified with order numbers of 150, 250, and 350. The rule with the order number of 150 takes precedence over the rule that has an order of 250. Allowed priorities are 150 to 4096. If any reserved or duplicate values are provided the request fails with HTTP status code 400.
  /// [sourceAddressPrefix] Valid values are a single IP address (i.e. 10.10.10.10), IP subnet (i.e. 192.168.1.0/24), default tag, or * (for all addresses).  If any other values are provided the request fails with HTTP status code 400.
  /// [sourcePortRanges] Valid values are '*' (for all ports 0 - 65535) or arrays of ports or port ranges (i.e. 100-200). The ports should in the range of 0 to 65535 and the port ranges or ports can't overlap. If any other values are provided the request fails with HTTP status code 400. Default value will be *.
  NetworkSecurityGroupRuleResponse({
    required this.access,
    required this.priority,
    required this.sourceAddressPrefix,
    this.sourcePortRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access': access,
      'priority': priority,
      'sourceAddressPrefix': sourceAddressPrefix,
      'sourcePortRanges': ?sourcePortRanges,
    };
  }

  factory NetworkSecurityGroupRuleResponse.fromMap(Map<String, dynamic> map) {
    return NetworkSecurityGroupRuleResponse(
      access: map['access'] as String,
      priority: map['priority'] as int,
      sourceAddressPrefix: map['sourceAddressPrefix'] as String,
      sourcePortRanges: map['sourcePortRanges'] == null ? null : (map['sourcePortRanges'] as List).cast<String>(),
    );
  }
}

