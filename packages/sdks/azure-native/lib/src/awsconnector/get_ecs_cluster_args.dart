// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_ecs_cluster_args_doc}
/// Arguments for getEcsCluster.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_ecs_cluster_args_doc}
class GetEcsClusterArgs {
  /// Name of EcsCluster
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetEcsClusterArgs].
  /// [name] Name of EcsCluster
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetEcsClusterArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetEcsClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetEcsClusterArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

