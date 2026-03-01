// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lb_get_backend_address_pool_get_backend_address_pool_args_doc}
/// Arguments for getBackendAddressPool.
/// {@endtemplate}
/// {@macro pulumi_lb_get_backend_address_pool_get_backend_address_pool_args_doc}
class GetBackendAddressPoolArgs {
  /// The ID of the Load Balancer in which the Backend Address Pool exists.
  final pulumi.Input<String> loadbalancerId;
  /// Specifies the name of the Backend Address Pool.
  final pulumi.Input<String> name;

  /// Creates a new [GetBackendAddressPoolArgs].
  /// [loadbalancerId] The ID of the Load Balancer in which the Backend Address Pool exists.
  /// [name] Specifies the name of the Backend Address Pool.
  GetBackendAddressPoolArgs({
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

  factory GetBackendAddressPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetBackendAddressPoolArgs(
      loadbalancerId: map['loadbalancerId'] as String,
      name: map['name'] as String,
    );
  }
}

