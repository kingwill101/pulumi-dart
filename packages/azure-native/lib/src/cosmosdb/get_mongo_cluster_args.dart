// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_get_mongo_cluster_args_doc}
/// Arguments for getMongoCluster.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_get_mongo_cluster_args_doc}
class GetMongoClusterArgs {
  /// The name of the mongo cluster.
  final pulumi.Input<String> mongoClusterName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetMongoClusterArgs].
  /// [mongoClusterName] The name of the mongo cluster.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetMongoClusterArgs({
    required String mongoClusterName,
    required String resourceGroupName,
  }) :
      mongoClusterName = pulumi.Input.asInput<String>(mongoClusterName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mongoClusterName': mongoClusterName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetMongoClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetMongoClusterArgs(
      mongoClusterName: map['mongoClusterName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

