// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lb_get_lboutbound_rule_get_lboutbound_rule_args_doc}
/// Arguments for getLBOutboundRule.
/// {@endtemplate}
/// {@macro pulumi_lb_get_lboutbound_rule_get_lboutbound_rule_args_doc}
class GetLBOutboundRuleArgs {
  /// The ID of the Load Balancer in which the Outbound Rule exists.
  final pulumi.Input<String> loadbalancerId;
  /// The name of this Load Balancer Outbound Rule.
  final pulumi.Input<String> name;

  /// Creates a new [GetLBOutboundRuleArgs].
  /// [loadbalancerId] The ID of the Load Balancer in which the Outbound Rule exists.
  /// [name] The name of this Load Balancer Outbound Rule.
  GetLBOutboundRuleArgs({
    required String loadbalancerId,
    required String name,
  }) :
      loadbalancerId = pulumi.Input.asInput<String>(loadbalancerId),
      name = pulumi.Input.asInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loadbalancerId': loadbalancerId,
      'name': name,
    };
  }

  factory GetLBOutboundRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetLBOutboundRuleArgs(
      loadbalancerId: map['loadbalancerId'] as String,
      name: map['name'] as String,
    );
  }
}

