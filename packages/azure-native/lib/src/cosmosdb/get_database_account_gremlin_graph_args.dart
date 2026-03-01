// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_get_database_account_gremlin_graph_args_doc}
/// Arguments for getDatabaseAccountGremlinGraph.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_get_database_account_gremlin_graph_args_doc}
class GetDatabaseAccountGremlinGraphArgs {
  /// Cosmos DB database account name.
  final pulumi.Input<String> accountName;
  /// Cosmos DB database name.
  final pulumi.Input<String> databaseName;
  /// Cosmos DB graph name.
  final pulumi.Input<String> graphName;
  /// Name of an Azure resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDatabaseAccountGremlinGraphArgs].
  /// [accountName] Cosmos DB database account name.
  /// [databaseName] Cosmos DB database name.
  /// [graphName] Cosmos DB graph name.
  /// [resourceGroupName] Name of an Azure resource group.
  GetDatabaseAccountGremlinGraphArgs({
    required String accountName,
    required String databaseName,
    required String graphName,
    required String resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      databaseName = pulumi.Input.asInput<String>(databaseName),
      graphName = pulumi.Input.asInput<String>(graphName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'databaseName': databaseName,
      'graphName': graphName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDatabaseAccountGremlinGraphArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabaseAccountGremlinGraphArgs(
      accountName: map['accountName'] as String,
      databaseName: map['databaseName'] as String,
      graphName: map['graphName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

