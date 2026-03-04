// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The parameters used to create a new firewall rule while creating a new Data Lake Store account.
class CreateFirewallRuleWithAccountParameters {
  /// The end IP address for the firewall rule. This can be either ipv4 or ipv6. Start and End should be in the same protocol.
  final pulumi.Input<String> endIpAddress;

  /// The unique name of the firewall rule to create.
  final pulumi.Input<String> name;

  /// The start IP address for the firewall rule. This can be either ipv4 or ipv6. Start and End should be in the same protocol.
  final pulumi.Input<String> startIpAddress;

  /// Creates a new [CreateFirewallRuleWithAccountParameters].
  /// [endIpAddress] The end IP address for the firewall rule. This can be either ipv4 or ipv6. Start and End should be in the same protocol.
  /// [name] The unique name of the firewall rule to create.
  /// [startIpAddress] The start IP address for the firewall rule. This can be either ipv4 or ipv6. Start and End should be in the same protocol.
  CreateFirewallRuleWithAccountParameters({
    required this.endIpAddress,
    required this.name,
    required this.startIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endIpAddress': endIpAddress,
      'name': name,
      'startIpAddress': startIpAddress,
    };
  }

  factory CreateFirewallRuleWithAccountParameters.fromMap(
    Map<String, dynamic> map,
  ) {
    return CreateFirewallRuleWithAccountParameters(
      endIpAddress: pulumi.Input.fromValue(map['endIpAddress'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      startIpAddress: pulumi.Input.fromValue(map['startIpAddress'] as String),
    );
  }
}
