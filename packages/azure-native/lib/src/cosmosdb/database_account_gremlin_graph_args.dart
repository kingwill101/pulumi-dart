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
    required String accountName,
    required String databaseName,
    String? graphName,
    required Map<String, String> options,
    required GremlinGraphResource resource,
    required String resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      databaseName = pulumi.Input.asInput<String>(databaseName),
      graphName = pulumi.Input.asOptionalInput<String>(graphName),
      options = pulumi.Input.asInput<Map<String, String>>(options),
      resource = pulumi.Input.asInput<GremlinGraphResource>(resource),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      accountName: map['accountName'] as String,
      databaseName: map['databaseName'] as String,
      graphName: map['graphName'] == null ? null : map['graphName'] as String,
      options: (map['options'] as Map).cast<String, String>(),
      resource: GremlinGraphResource.fromMap((map['resource'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

