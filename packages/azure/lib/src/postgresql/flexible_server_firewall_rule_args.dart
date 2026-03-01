// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_postgresql_flexible_server_firewall_rule_flexible_server_firewall_rule_args_doc}
/// The set of arguments for FlexibleServerFirewallRule.
/// {@endtemplate}
/// {@macro pulumi_postgresql_flexible_server_firewall_rule_flexible_server_firewall_rule_args_doc}
class FlexibleServerFirewallRuleArgs {
  /// The IPv4 Address defining the end of the range of addresses associated with this PostgreSQL Flexible Server Firewall Rule.
  final pulumi.Input<String> endIpAddress;
  /// The name which should be used for this PostgreSQL Flexible Server Firewall Rule. Changing this forces a new PostgreSQL Flexible Server Firewall Rule to be created.
  final pulumi.Input<String>? name;
  /// The ID of the PostgreSQL Flexible Server from which to create this PostgreSQL Flexible Server Firewall Rule. Changing this forces a new PostgreSQL Flexible Server Firewall Rule to be created.
  final pulumi.Input<String> serverId;
  /// The IPv4 Address defining the start of the range of addresses associated with this PostgreSQL Flexible Server Firewall Rule.
  final pulumi.Input<String> startIpAddress;

  /// Creates a new [FlexibleServerFirewallRuleArgs].
  /// [endIpAddress] The IPv4 Address defining the end of the range of addresses associated with this PostgreSQL Flexible Server Firewall Rule.
  /// [name] The name which should be used for this PostgreSQL Flexible Server Firewall Rule. Changing this forces a new PostgreSQL Flexible Server Firewall Rule to be created.
  /// [serverId] The ID of the PostgreSQL Flexible Server from which to create this PostgreSQL Flexible Server Firewall Rule. Changing this forces a new PostgreSQL Flexible Server Firewall Rule to be created.
  /// [startIpAddress] The IPv4 Address defining the start of the range of addresses associated with this PostgreSQL Flexible Server Firewall Rule.
  FlexibleServerFirewallRuleArgs({
    required String endIpAddress,
    String? name,
    required String serverId,
    required String startIpAddress,
  }) :
      endIpAddress = pulumi.Input.asInput<String>(endIpAddress),
      name = pulumi.Input.asOptionalInput<String>(name),
      serverId = pulumi.Input.asInput<String>(serverId),
      startIpAddress = pulumi.Input.asInput<String>(startIpAddress);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endIpAddress': endIpAddress,
      'name': ?name,
      'serverId': serverId,
      'startIpAddress': startIpAddress,
    };
  }

  factory FlexibleServerFirewallRuleArgs.fromMap(Map<String, dynamic> map) {
    return FlexibleServerFirewallRuleArgs(
      endIpAddress: map['endIpAddress'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      serverId: map['serverId'] as String,
      startIpAddress: map['startIpAddress'] as String,
    );
  }
}

