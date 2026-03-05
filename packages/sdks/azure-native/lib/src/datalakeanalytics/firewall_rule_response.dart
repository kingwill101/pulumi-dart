// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Data Lake Analytics firewall rule information.
class FirewallRuleResponse {
  /// The end IP address for the firewall rule. This can be either ipv4 or ipv6. Start and End should be in the same protocol.
  final pulumi.Input<String> endIpAddress;
  /// The resource identifier.
  final pulumi.Input<String> id;
  /// The resource name.
  final pulumi.Input<String> name;
  /// The start IP address for the firewall rule. This can be either ipv4 or ipv6. Start and End should be in the same protocol.
  final pulumi.Input<String> startIpAddress;
  /// The resource type.
  final pulumi.Input<String> type;

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
      endIpAddress: pulumi.Input.fromValue(map['endIpAddress'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      startIpAddress: pulumi.Input.fromValue(map['startIpAddress'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

