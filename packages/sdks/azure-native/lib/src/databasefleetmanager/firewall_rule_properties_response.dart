// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A Firewall rule properties.
class FirewallRulePropertiesResponse {
  /// End IP address.
  final pulumi.Input<String>? endIpAddress;
  /// Provisioning state.
  final pulumi.Input<String> provisioningState;
  /// Start IP address.
  final pulumi.Input<String>? startIpAddress;

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
      endIpAddress: map['endIpAddress'] == null ? null : (map['endIpAddress'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      startIpAddress: map['startIpAddress'] == null ? null : (map['startIpAddress'] as String).input(),
    );
  }
}

