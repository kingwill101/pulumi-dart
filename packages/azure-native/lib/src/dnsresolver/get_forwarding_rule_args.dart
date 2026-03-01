// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dnsresolver_get_forwarding_rule_args_doc}
/// Arguments for getForwardingRule.
/// {@endtemplate}
/// {@macro pulumi_dnsresolver_get_forwarding_rule_args_doc}
class GetForwardingRuleArgs {
  /// The name of the DNS forwarding ruleset.
  final pulumi.Input<String> dnsForwardingRulesetName;
  /// The name of the forwarding rule.
  final pulumi.Input<String> forwardingRuleName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetForwardingRuleArgs].
  /// [dnsForwardingRulesetName] The name of the DNS forwarding ruleset.
  /// [forwardingRuleName] The name of the forwarding rule.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetForwardingRuleArgs({
    required String dnsForwardingRulesetName,
    required String forwardingRuleName,
    required String resourceGroupName,
  }) :
      dnsForwardingRulesetName = pulumi.Input.asInput<String>(dnsForwardingRulesetName),
      forwardingRuleName = pulumi.Input.asInput<String>(forwardingRuleName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsForwardingRulesetName': dnsForwardingRulesetName,
      'forwardingRuleName': forwardingRuleName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetForwardingRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetForwardingRuleArgs(
      dnsForwardingRulesetName: map['dnsForwardingRulesetName'] as String,
      forwardingRuleName: map['forwardingRuleName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

