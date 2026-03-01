// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_get_gremlin_resource_gremlin_graph_args_doc}
/// Arguments for getGremlinResourceGremlinGraph.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_get_gremlin_resource_gremlin_graph_args_doc}
class GetGremlinResourceGremlinGraphArgs {
  /// Cosmos DB database account name.
  final pulumi.Input<String> accountName;
  /// Cosmos DB database name.
  final pulumi.Input<String> databaseName;
  /// Cosmos DB graph name.
  final pulumi.Input<String> graphName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetGremlinResourceGremlinGraphArgs].
  /// [accountName] Cosmos DB database account name.
  /// [databaseName] Cosmos DB database name.
  /// [graphName] Cosmos DB graph name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetGremlinResourceGremlinGraphArgs({
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

  factory GetGremlinResourceGremlinGraphArgs.fromMap(Map<String, dynamic> map) {
    return GetGremlinResourceGremlinGraphArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      databaseName: pulumi.Output.create<String>(map['databaseName'] as String),
      graphName: pulumi.Output.create<String>(map['graphName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

