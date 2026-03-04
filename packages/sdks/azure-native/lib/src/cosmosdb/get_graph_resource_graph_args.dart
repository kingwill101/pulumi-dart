// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_get_graph_resource_graph_args_doc}
/// Arguments for getGraphResourceGraph.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_get_graph_resource_graph_args_doc}
class GetGraphResourceGraphArgs {
  /// Cosmos DB database account name.
  final pulumi.Input<String> accountName;

  /// Cosmos DB graph resource name.
  final pulumi.Input<String> graphName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetGraphResourceGraphArgs].
  /// [accountName] Cosmos DB database account name.
  /// [graphName] Cosmos DB graph resource name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetGraphResourceGraphArgs({
    required this.accountName,
    required this.graphName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'graphName': graphName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetGraphResourceGraphArgs.fromMap(Map<String, dynamic> map) {
    return GetGraphResourceGraphArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      graphName: pulumi.Input.fromValue(map['graphName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
