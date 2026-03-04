// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_rds_db_cluster_args_doc}
/// Arguments for getRdsDbCluster.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_rds_db_cluster_args_doc}
class GetRdsDbClusterArgs {
  /// Name of RdsDBCluster
  final pulumi.Input<String> name;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetRdsDbClusterArgs].
  /// [name] Name of RdsDBCluster
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetRdsDbClusterArgs({required this.name, required this.resourceGroupName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetRdsDbClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetRdsDbClusterArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
