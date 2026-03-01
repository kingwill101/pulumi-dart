// ignore_for_file: unused_element, unnecessary_cast


/// The properties of a mongo cluster firewall rule.
class FirewallRulePropertiesResponse {
  /// The end IP address of the mongo cluster firewall rule. Must be IPv4 format.
  final String endIpAddress;
  /// The provisioning state of the firewall rule.
  final String provisioningState;
  /// The start IP address of the mongo cluster firewall rule. Must be IPv4 format.
  final String startIpAddress;

  /// Creates a new [FirewallRulePropertiesResponse].
  /// [endIpAddress] The end IP address of the mongo cluster firewall rule. Must be IPv4 format.
  /// [provisioningState] The provisioning state of the firewall rule.
  /// [startIpAddress] The start IP address of the mongo cluster firewall rule. Must be IPv4 format.
  FirewallRulePropertiesResponse({
    required this.endIpAddress,
    required this.provisioningState,
    required this.startIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endIpAddress': endIpAddress,
      'provisioningState': provisioningState,
      'startIpAddress': startIpAddress,
    };
  }

  factory FirewallRulePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return FirewallRulePropertiesResponse(
      endIpAddress: map['endIpAddress'] as String,
      provisioningState: map['provisioningState'] as String,
      startIpAddress: map['startIpAddress'] as String,
    );
  }
}

