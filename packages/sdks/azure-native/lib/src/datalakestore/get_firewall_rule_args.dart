// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datalakestore_get_firewall_rule_args_doc}
/// Arguments for getFirewallRule.
/// {@endtemplate}
/// {@macro pulumi_datalakestore_get_firewall_rule_args_doc}
class GetFirewallRuleArgs {
  /// The name of the Data Lake Store account.
  final pulumi.Input<String> accountName;
  /// The name of the firewall rule to retrieve.
  final pulumi.Input<String> firewallRuleName;
  /// The name of the Azure resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetFirewallRuleArgs].
  /// [accountName] The name of the Data Lake Store account.
  /// [firewallRuleName] The name of the firewall rule to retrieve.
  /// [resourceGroupName] The name of the Azure resource group.
  GetFirewallRuleArgs({
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> firewallRuleName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      firewallRuleName = pulumi.Input.asInput<String>(firewallRuleName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'firewallRuleName': firewallRuleName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetFirewallRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetFirewallRuleArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      firewallRuleName: pulumi.Output.create<String>(map['firewallRuleName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

