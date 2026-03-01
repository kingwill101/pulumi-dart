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
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> databaseName,
    required pulumi.Output<String> graphName,
    required pulumi.Output<String> resourceGroupName,
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
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      databaseName: pulumi.Output.create<String>(map['databaseName'] as String),
      graphName: pulumi.Output.create<String>(map['graphName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

