// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lb_get_lbrule_get_lbrule_args_doc}
/// Arguments for getLBRule.
/// {@endtemplate}
/// {@macro pulumi_lb_get_lbrule_get_lbrule_args_doc}
class GetLBRuleArgs {
  /// The ID of the Load Balancer Rule.
  final pulumi.Input<String> loadbalancerId;
  /// The name of this Load Balancer Rule.
  final pulumi.Input<String> name;

  /// Creates a new [GetLBRuleArgs].
  /// [loadbalancerId] The ID of the Load Balancer Rule.
  /// [name] The name of this Load Balancer Rule.
  GetLBRuleArgs({
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

  factory GetLBRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetLBRuleArgs(
      loadbalancerId: map['loadbalancerId'] as String,
      name: map['name'] as String,
    );
  }
}

