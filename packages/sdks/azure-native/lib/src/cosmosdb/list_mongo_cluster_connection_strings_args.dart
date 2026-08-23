// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_list_mongo_cluster_connection_strings_args_doc}
/// Arguments for listMongoClusterConnectionStrings.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_list_mongo_cluster_connection_strings_args_doc}
class ListMongoClusterConnectionStringsArgs {
  /// The name of the mongo cluster.
  final pulumi.Input<String> mongoClusterName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListMongoClusterConnectionStringsArgs].
  /// [mongoClusterName] The name of the mongo cluster.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const ListMongoClusterConnectionStringsArgs({
    required this.mongoClusterName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mongoClusterName': mongoClusterName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListMongoClusterConnectionStringsArgs.fromMap(Map<String, dynamic> map) {
    return ListMongoClusterConnectionStringsArgs(
      mongoClusterName: pulumi.Input.fromValue(map['mongoClusterName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
