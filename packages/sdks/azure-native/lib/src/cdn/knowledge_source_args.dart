// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cdn_knowledge_source_args_doc}
/// The set of arguments for KnowledgeSource.
/// {@endtemplate}
/// {@macro pulumi_cdn_knowledge_source_args_doc}
class KnowledgeSourceArgs {
  /// Description of the knowledge source.
  final pulumi.Input<String>? description;
  /// The name of the knowledge source.
  final pulumi.Input<String>? knowledgeSourceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Format or origin of the knowledge source.
  final pulumi.Input<String> sourceType;
  /// Specifies the units of time for scheduling update intervals for the knowledge source.
  final pulumi.Input<String>? updateFrequency;
  /// Endpoint or location of the knowledge source.
  final pulumi.Input<String> url;
  /// The name of the web agent.
  final pulumi.Input<String> webAgentName;

  /// Creates a new [KnowledgeSourceArgs].
  /// [description] Description of the knowledge source.
  /// [knowledgeSourceName] The name of the knowledge source.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sourceType] Format or origin of the knowledge source.
  /// [updateFrequency] Specifies the units of time for scheduling update intervals for the knowledge source.
  /// [url] Endpoint or location of the knowledge source.
  /// [webAgentName] The name of the web agent.
  KnowledgeSourceArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? knowledgeSourceName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> sourceType,
    pulumi.Output<String>? updateFrequency,
    required pulumi.Output<String> url,
    required pulumi.Output<String> webAgentName,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      knowledgeSourceName = pulumi.Input.asOptionalInput<String>(knowledgeSourceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sourceType = pulumi.Input.asInput<String>(sourceType),
      updateFrequency = pulumi.Input.asOptionalInput<String>(updateFrequency),
      url = pulumi.Input.asInput<String>(url),
      webAgentName = pulumi.Input.asInput<String>(webAgentName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'knowledgeSourceName': ?knowledgeSourceName,
      'resourceGroupName': resourceGroupName,
      'sourceType': sourceType,
      'updateFrequency': ?updateFrequency,
      'url': url,
      'webAgentName': webAgentName,
    };
  }

  factory KnowledgeSourceArgs.fromMap(Map<String, dynamic> map) {
    return KnowledgeSourceArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      knowledgeSourceName: map['knowledgeSourceName'] == null ? null : pulumi.Output.create<String>(map['knowledgeSourceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sourceType: pulumi.Output.create<String>(map['sourceType'] as String),
      updateFrequency: map['updateFrequency'] == null ? null : pulumi.Output.create<String>(map['updateFrequency'] as String),
      url: pulumi.Output.create<String>(map['url'] as String),
      webAgentName: pulumi.Output.create<String>(map['webAgentName'] as String),
    );
  }
}

