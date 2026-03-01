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
  ListMongoClusterConnectionStringsArgs({
    required pulumi.Output<String> mongoClusterName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      mongoClusterName = pulumi.Input.asInput<String>(mongoClusterName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mongoClusterName': mongoClusterName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListMongoClusterConnectionStringsArgs.fromMap(Map<String, dynamic> map) {
    return ListMongoClusterConnectionStringsArgs(
      mongoClusterName: pulumi.Output.create<String>(map['mongoClusterName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

