// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_dax_cluster_args_doc}
/// Arguments for getDaxCluster.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_dax_cluster_args_doc}
class GetDaxClusterArgs {
  /// Name of DaxCluster
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDaxClusterArgs].
  /// [name] Name of DaxCluster
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetDaxClusterArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDaxClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetDaxClusterArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
