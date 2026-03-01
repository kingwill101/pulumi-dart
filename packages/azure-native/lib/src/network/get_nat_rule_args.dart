// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_nat_rule_args_doc}
/// Arguments for getNatRule.
/// {@endtemplate}
/// {@macro pulumi_network_get_nat_rule_args_doc}
class GetNatRuleArgs {
  /// The name of the gateway.
  final pulumi.Input<String> gatewayName;
  /// The name of the nat rule.
  final pulumi.Input<String> natRuleName;
  /// The resource group name of the VpnGateway.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNatRuleArgs].
  /// [gatewayName] The name of the gateway.
  /// [natRuleName] The name of the nat rule.
  /// [resourceGroupName] The resource group name of the VpnGateway.
  GetNatRuleArgs({
    required String gatewayName,
    required String natRuleName,
    required String resourceGroupName,
  }) :
      gatewayName = pulumi.Input.asInput<String>(gatewayName),
      natRuleName = pulumi.Input.asInput<String>(natRuleName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayName': gatewayName,
      'natRuleName': natRuleName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNatRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetNatRuleArgs(
      gatewayName: map['gatewayName'] as String,
      natRuleName: map['natRuleName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

