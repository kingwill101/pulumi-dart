// ignore_for_file: unused_element, unnecessary_cast


/// A Firewall rule properties.
class FirewallRulePropertiesResponse {
  /// End IP address.
  final String? endIpAddress;
  /// Provisioning state.
  final String provisioningState;
  /// Start IP address.
  final String? startIpAddress;

  /// Creates a new [FirewallRulePropertiesResponse].
  /// [endIpAddress] End IP address.
  /// [provisioningState] Provisioning state.
  /// [startIpAddress] Start IP address.
  FirewallRulePropertiesResponse({
    this.endIpAddress,
    required this.provisioningState,
    this.startIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endIpAddress': ?endIpAddress,
      'provisioningState': provisioningState,
      'startIpAddress': ?startIpAddress,
    };
  }

  factory FirewallRulePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return FirewallRulePropertiesResponse(
      endIpAddress: map['endIpAddress'] == null ? null : map['endIpAddress'] as String,
      provisioningState: map['provisioningState'] as String,
      startIpAddress: map['startIpAddress'] == null ? null : map['startIpAddress'] as String,
    );
  }
}

