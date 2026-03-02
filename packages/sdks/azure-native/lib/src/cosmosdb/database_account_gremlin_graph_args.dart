// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gremlin_graph_resource.dart';

/// {@template pulumi_cosmosdb_database_account_gremlin_graph_args_doc}
/// The set of arguments for DatabaseAccountGremlinGraph.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_database_account_gremlin_graph_args_doc}
class DatabaseAccountGremlinGraphArgs {
  /// Cosmos DB database account name.
  final pulumi.Input<String> accountName;
  /// Cosmos DB database name.
  final pulumi.Input<String> databaseName;
  /// Cosmos DB graph name.
  final pulumi.Input<String>? graphName;
  /// A key-value pair of options to be applied for the request. This corresponds to the headers sent with the request.
  final pulumi.Input<Map<String, String>> options;
  /// The standard JSON format of a Gremlin graph
  final pulumi.Input<GremlinGraphResource> resource;
  /// Name of an Azure resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [DatabaseAccountGremlinGraphArgs].
  /// [accountName] Cosmos DB database account name.
  /// [databaseName] Cosmos DB database name.
  /// [graphName] Cosmos DB graph name.
  /// [options] A key-value pair of options to be applied for the request. This corresponds to the headers sent with the request.
  /// [resource] The standard JSON format of a Gremlin graph
  /// [resourceGroupName] Name of an Azure resource group.
  DatabaseAccountGremlinGraphArgs({
    required this.accountName,
    required this.databaseName,
    this.graphName,
    required this.options,
    required this.resource,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'databaseName': databaseName,
      'graphName': ?graphName,
      'options': options,
      'resource': pulumi.Input.mapInputValue<GremlinGraphResource, Map<String, dynamic>>(resource, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory DatabaseAccountGremlinGraphArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseAccountGremlinGraphArgs(
      accountName: (map['accountName'] as String).input(),
      databaseName: (map['databaseName'] as String).input(),
      graphName: map['graphName'] == null ? null : (map['graphName']! as String).input(),
      options: ((map['options'] as Map).cast<String, String>()).input(),
      resource: (GremlinGraphResource.fromMap((map['resource'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

