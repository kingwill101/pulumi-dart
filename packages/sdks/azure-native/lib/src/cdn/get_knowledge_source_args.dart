// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cdn_get_knowledge_source_args_doc}
/// Arguments for getKnowledgeSource.
/// {@endtemplate}
/// {@macro pulumi_cdn_get_knowledge_source_args_doc}
class GetKnowledgeSourceArgs {
  /// The name of the knowledge source.
  final pulumi.Input<String> knowledgeSourceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the web agent.
  final pulumi.Input<String> webAgentName;

  /// Creates a new [GetKnowledgeSourceArgs].
  /// [knowledgeSourceName] The name of the knowledge source.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [webAgentName] The name of the web agent.
  GetKnowledgeSourceArgs({
    required pulumi.Output<String> knowledgeSourceName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> webAgentName,
  }) :
      knowledgeSourceName = pulumi.Input.asInput<String>(knowledgeSourceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      webAgentName = pulumi.Input.asInput<String>(webAgentName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'knowledgeSourceName': knowledgeSourceName,
      'resourceGroupName': resourceGroupName,
      'webAgentName': webAgentName,
    };
  }

  factory GetKnowledgeSourceArgs.fromMap(Map<String, dynamic> map) {
    return GetKnowledgeSourceArgs(
      knowledgeSourceName: pulumi.Output.create<String>(map['knowledgeSourceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      webAgentName: pulumi.Output.create<String>(map['webAgentName'] as String),
    );
  }
}

