// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_elastic_load_balancing_v2_target_group_args_doc}
/// Arguments for getElasticLoadBalancingV2TargetGroup.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_elastic_load_balancing_v2_target_group_args_doc}
class GetElasticLoadBalancingV2TargetGroupArgs {
  /// Name of ElasticLoadBalancingV2TargetGroup
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetElasticLoadBalancingV2TargetGroupArgs].
  /// [name] Name of ElasticLoadBalancingV2TargetGroup
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetElasticLoadBalancingV2TargetGroupArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetElasticLoadBalancingV2TargetGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetElasticLoadBalancingV2TargetGroupArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

