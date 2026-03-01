// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mssql_outbound_firewall_rule_outbound_firewall_rule_args_doc}
/// The set of arguments for OutboundFirewallRule.
/// {@endtemplate}
/// {@macro pulumi_mssql_outbound_firewall_rule_outbound_firewall_rule_args_doc}
class OutboundFirewallRuleArgs {
  /// The name of the outbound firewall rule. This should be a FQDN. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The resource ID of the SQL Server on which to create the Outbound Firewall Rule. Changing this forces a new resource to be created.
  final pulumi.Input<String> serverId;

  /// Creates a new [OutboundFirewallRuleArgs].
  /// [name] The name of the outbound firewall rule. This should be a FQDN. Changing this forces a new resource to be created.
  /// [serverId] The resource ID of the SQL Server on which to create the Outbound Firewall Rule. Changing this forces a new resource to be created.
  OutboundFirewallRuleArgs({
    String? name,
    required String serverId,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      serverId = pulumi.Input.asInput<String>(serverId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'serverId': serverId,
    };
  }

  factory OutboundFirewallRuleArgs.fromMap(Map<String, dynamic> map) {
    return OutboundFirewallRuleArgs(
      name: map['name'] == null ? null : map['name'] as String,
      serverId: map['serverId'] as String,
    );
  }
}

