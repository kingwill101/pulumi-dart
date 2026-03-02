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
    required this.accountName,
    required this.databaseName,
    required this.graphName,
    required this.resourceGroupName,
  });

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
      accountName: (map['accountName'] as String).input(),
      databaseName: (map['databaseName'] as String).input(),
      graphName: (map['graphName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

