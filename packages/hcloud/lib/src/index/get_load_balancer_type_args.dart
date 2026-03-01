// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_load_balancer_type_get_load_balancer_type_args_doc}
/// Arguments for getLoadBalancerType.
/// {@endtemplate}
/// {@macro pulumi_index_get_load_balancer_type_get_load_balancer_type_args_doc}
class GetLoadBalancerTypeArgs {
  /// ID of the Load Balancer Type.
  final pulumi.Input<int>? id;
  /// Name of the Load Balancer Type.
  final pulumi.Input<String>? name;

  /// Creates a new [GetLoadBalancerTypeArgs].
  /// [id] ID of the Load Balancer Type.
  /// [name] Name of the Load Balancer Type.
  GetLoadBalancerTypeArgs({
    int? id,
    String? name,
  }) :
      id = pulumi.Input.asOptionalInput<int>(id),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
    };
  }

  factory GetLoadBalancerTypeArgs.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerTypeArgs(
      id: map['id'] == null ? null : map['id'] as int,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

