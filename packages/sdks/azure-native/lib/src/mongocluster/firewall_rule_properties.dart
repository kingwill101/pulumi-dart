// ignore_for_file: unused_element, unnecessary_cast


/// The properties of a mongo cluster firewall rule.
class FirewallRuleProperties {
  /// The end IP address of the mongo cluster firewall rule. Must be IPv4 format.
  final String endIpAddress;
  /// The start IP address of the mongo cluster firewall rule. Must be IPv4 format.
  final String startIpAddress;

  /// Creates a new [FirewallRuleProperties].
  /// [endIpAddress] The end IP address of the mongo cluster firewall rule. Must be IPv4 format.
  /// [startIpAddress] The start IP address of the mongo cluster firewall rule. Must be IPv4 format.
  FirewallRuleProperties({
    required this.endIpAddress,
    required this.startIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endIpAddress': endIpAddress,
      'startIpAddress': startIpAddress,
    };
  }

  factory FirewallRuleProperties.fromMap(Map<String, dynamic> map) {
    return FirewallRuleProperties(
      endIpAddress: map['endIpAddress'] as String,
      startIpAddress: map['startIpAddress'] as String,
    );
  }
}

