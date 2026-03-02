// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A Firewall rule properties.
class FirewallRuleProperties {
  /// End IP address.
  final pulumi.Input<String>? endIpAddress;
  /// Start IP address.
  final pulumi.Input<String>? startIpAddress;

  /// Creates a new [FirewallRuleProperties].
  /// [endIpAddress] End IP address.
  /// [startIpAddress] Start IP address.
  FirewallRuleProperties({
    this.endIpAddress,
    this.startIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endIpAddress': ?endIpAddress,
      'startIpAddress': ?startIpAddress,
    };
  }

  factory FirewallRuleProperties.fromMap(Map<String, dynamic> map) {
    return FirewallRuleProperties(
      endIpAddress: map['endIpAddress'] == null ? null : (map['endIpAddress'] as String).input(),
      startIpAddress: map['startIpAddress'] == null ? null : (map['startIpAddress'] as String).input(),
    );
  }
}

