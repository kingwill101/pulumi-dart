// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_inbound_nat_rule_args_doc}
/// Arguments for getInboundNatRule.
/// {@endtemplate}
/// {@macro pulumi_network_get_inbound_nat_rule_args_doc}
class GetInboundNatRuleArgs {
  /// Expands referenced resources.
  final pulumi.Input<String>? expand;
  /// The name of the inbound NAT rule.
  final pulumi.Input<String> inboundNatRuleName;
  /// The name of the load balancer.
  final pulumi.Input<String> loadBalancerName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetInboundNatRuleArgs].
  /// [expand] Expands referenced resources.
  /// [inboundNatRuleName] The name of the inbound NAT rule.
  /// [loadBalancerName] The name of the load balancer.
  /// [resourceGroupName] The name of the resource group.
  GetInboundNatRuleArgs({
    String? expand,
    required String inboundNatRuleName,
    required String loadBalancerName,
    required String resourceGroupName,
  }) :
      expand = pulumi.Input.asOptionalInput<String>(expand),
      inboundNatRuleName = pulumi.Input.asInput<String>(inboundNatRuleName),
      loadBalancerName = pulumi.Input.asInput<String>(loadBalancerName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'inboundNatRuleName': inboundNatRuleName,
      'loadBalancerName': loadBalancerName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetInboundNatRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetInboundNatRuleArgs(
      expand: map['expand'] == null ? null : map['expand'] as String,
      inboundNatRuleName: map['inboundNatRuleName'] as String,
      loadBalancerName: map['loadBalancerName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

