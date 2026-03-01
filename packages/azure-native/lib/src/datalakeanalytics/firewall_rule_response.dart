// ignore_for_file: unused_element, unnecessary_cast


/// Data Lake Analytics firewall rule information.
class FirewallRuleResponse {
  /// The end IP address for the firewall rule. This can be either ipv4 or ipv6. Start and End should be in the same protocol.
  final String endIpAddress;
  /// The resource identifier.
  final String id;
  /// The resource name.
  final String name;
  /// The start IP address for the firewall rule. This can be either ipv4 or ipv6. Start and End should be in the same protocol.
  final String startIpAddress;
  /// The resource type.
  final String type;

  /// Creates a new [FirewallRuleResponse].
  /// [endIpAddress] The end IP address for the firewall rule. This can be either ipv4 or ipv6. Start and End should be in the same protocol.
  /// [id] The resource identifier.
  /// [name] The resource name.
  /// [startIpAddress] The start IP address for the firewall rule. This can be either ipv4 or ipv6. Start and End should be in the same protocol.
  /// [type] The resource type.
  FirewallRuleResponse({
    required this.endIpAddress,
    required this.id,
    required this.name,
    required this.startIpAddress,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endIpAddress': endIpAddress,
      'id': id,
      'name': name,
      'startIpAddress': startIpAddress,
      'type': type,
    };
  }

  factory FirewallRuleResponse.fromMap(Map<String, dynamic> map) {
    return FirewallRuleResponse(
      endIpAddress: map['endIpAddress'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      startIpAddress: map['startIpAddress'] as String,
      type: map['type'] as String,
    );
  }
}

