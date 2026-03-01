// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_enterpriseknowledgegraph_get_enterprise_knowledge_graph_args_doc}
/// Arguments for getEnterpriseKnowledgeGraph.
/// {@endtemplate}
/// {@macro pulumi_enterpriseknowledgegraph_get_enterprise_knowledge_graph_args_doc}
class GetEnterpriseKnowledgeGraphArgs {
  /// The name of the EnterpriseKnowledgeGraph resource group in the user subscription.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the EnterpriseKnowledgeGraph resource.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetEnterpriseKnowledgeGraphArgs].
  /// [resourceGroupName] The name of the EnterpriseKnowledgeGraph resource group in the user subscription.
  /// [resourceName] The name of the EnterpriseKnowledgeGraph resource.
  GetEnterpriseKnowledgeGraphArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetEnterpriseKnowledgeGraphArgs.fromMap(Map<String, dynamic> map) {
    return GetEnterpriseKnowledgeGraphArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
    );
  }
}

