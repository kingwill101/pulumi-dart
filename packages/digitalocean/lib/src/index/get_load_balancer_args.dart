// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_load_balancer_get_load_balancer_args_doc}
/// Arguments for getLoadBalancer.
/// {@endtemplate}
/// {@macro pulumi_index_get_load_balancer_get_load_balancer_args_doc}
class GetLoadBalancerArgs {
  /// The ID of load balancer.
  final pulumi.Input<String>? id;
  /// The name of load balancer.
  final pulumi.Input<String>? name;

  /// Creates a new [GetLoadBalancerArgs].
  /// [id] The ID of load balancer.
  /// [name] The name of load balancer.
  GetLoadBalancerArgs({
    String? id,
    String? name,
  }) :
      id = pulumi.Input.asOptionalInput<String>(id),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
    };
  }

  factory GetLoadBalancerArgs.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerArgs(
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

