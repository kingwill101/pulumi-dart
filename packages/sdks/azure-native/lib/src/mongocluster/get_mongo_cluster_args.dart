// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mongocluster_get_mongo_cluster_args_doc}
/// Arguments for getMongoCluster.
/// {@endtemplate}
/// {@macro pulumi_mongocluster_get_mongo_cluster_args_doc}
class GetMongoClusterArgs {
  /// The name of the mongo cluster.
  final pulumi.Input<String> mongoClusterName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetMongoClusterArgs].
  /// [mongoClusterName] The name of the mongo cluster.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetMongoClusterArgs({
    required this.mongoClusterName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mongoClusterName': mongoClusterName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetMongoClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetMongoClusterArgs(
      mongoClusterName: pulumi.Input.fromValue(map['mongoClusterName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

