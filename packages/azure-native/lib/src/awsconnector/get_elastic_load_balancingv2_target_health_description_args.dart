// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_elastic_load_balancingv2_target_health_description_args_doc}
/// Arguments for getElasticLoadBalancingv2TargetHealthDescription.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_elastic_load_balancingv2_target_health_description_args_doc}
class GetElasticLoadBalancingv2TargetHealthDescriptionArgs {
  /// Name of ElasticLoadBalancingv2TargetHealthDescription
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetElasticLoadBalancingv2TargetHealthDescriptionArgs].
  /// [name] Name of ElasticLoadBalancingv2TargetHealthDescription
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetElasticLoadBalancingv2TargetHealthDescriptionArgs({
    required String name,
    required String resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetElasticLoadBalancingv2TargetHealthDescriptionArgs.fromMap(Map<String, dynamic> map) {
    return GetElasticLoadBalancingv2TargetHealthDescriptionArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

