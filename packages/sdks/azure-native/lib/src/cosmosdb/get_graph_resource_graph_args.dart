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
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> graphName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      graphName = pulumi.Input.asInput<String>(graphName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'graphName': graphName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetGraphResourceGraphArgs.fromMap(Map<String, dynamic> map) {
    return GetGraphResourceGraphArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      graphName: pulumi.Output.create<String>(map['graphName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

