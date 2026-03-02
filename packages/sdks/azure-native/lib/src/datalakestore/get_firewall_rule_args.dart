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
    required this.accountName,
    required this.firewallRuleName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'firewallRuleName': firewallRuleName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetFirewallRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetFirewallRuleArgs(
      accountName: (map['accountName'] as String).input(),
      firewallRuleName: (map['firewallRuleName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

