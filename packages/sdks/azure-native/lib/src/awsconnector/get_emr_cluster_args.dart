// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_emr_cluster_args_doc}
/// Arguments for getEmrCluster.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_emr_cluster_args_doc}
class GetEmrClusterArgs {
  /// Name of EmrCluster
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetEmrClusterArgs].
  /// [name] Name of EmrCluster
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetEmrClusterArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetEmrClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetEmrClusterArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
