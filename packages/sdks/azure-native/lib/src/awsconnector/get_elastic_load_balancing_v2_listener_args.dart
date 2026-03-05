// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_elastic_load_balancing_v2_listener_args_doc}
/// Arguments for getElasticLoadBalancingV2Listener.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_elastic_load_balancing_v2_listener_args_doc}
class GetElasticLoadBalancingV2ListenerArgs {
  /// Name of ElasticLoadBalancingV2Listener
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetElasticLoadBalancingV2ListenerArgs].
  /// [name] Name of ElasticLoadBalancingV2Listener
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetElasticLoadBalancingV2ListenerArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetElasticLoadBalancingV2ListenerArgs.fromMap(Map<String, dynamic> map) {
    return GetElasticLoadBalancingV2ListenerArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

