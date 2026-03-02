// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_elastic_load_balancing_v2_load_balancer_args_doc}
/// Arguments for getElasticLoadBalancingV2LoadBalancer.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_elastic_load_balancing_v2_load_balancer_args_doc}
class GetElasticLoadBalancingV2LoadBalancerArgs {
  /// Name of ElasticLoadBalancingV2LoadBalancer
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetElasticLoadBalancingV2LoadBalancerArgs].
  /// [name] Name of ElasticLoadBalancingV2LoadBalancer
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetElasticLoadBalancingV2LoadBalancerArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetElasticLoadBalancingV2LoadBalancerArgs.fromMap(Map<String, dynamic> map) {
    return GetElasticLoadBalancingV2LoadBalancerArgs(
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

