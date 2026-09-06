// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cdn_knowledge_source_args_doc}
/// The set of arguments for KnowledgeSource.
/// {@endtemplate}
/// {@macro pulumi_cdn_knowledge_source_args_doc}
class KnowledgeSourceArgs {
  /// Description of the knowledge source.
  final pulumi.Input<String?>? description;
  /// The name of the knowledge source.
  final pulumi.Input<String?>? knowledgeSourceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Format or origin of the knowledge source.
  final pulumi.Input<dynamic> sourceType;
  /// Specifies the units of time for scheduling update intervals for the knowledge source.
  final pulumi.Input<dynamic>? updateFrequency;
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
  const KnowledgeSourceArgs({
    this.description,
    this.knowledgeSourceName,
    required this.resourceGroupName,
    required this.sourceType,
    this.updateFrequency,
    required this.url,
    required this.webAgentName,
  });

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
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      knowledgeSourceName: (() { final guardedValue = map['knowledgeSourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sourceType: pulumi.Input.fromValue(map['sourceType']),
      updateFrequency: (() { final guardedValue = map['updateFrequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      url: pulumi.Input.fromValue(map['url'] as String),
      webAgentName: pulumi.Input.fromValue(map['webAgentName'] as String),
    );
  }
}
