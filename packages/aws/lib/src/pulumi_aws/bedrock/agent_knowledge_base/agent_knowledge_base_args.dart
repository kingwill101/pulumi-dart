// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../agent_knowledge_base_knowledge_base_configuration/agent_knowledge_base_knowledge_base_configuration.dart';
import '../agent_knowledge_base_storage_configuration/agent_knowledge_base_storage_configuration.dart';
import '../agent_knowledge_base_timeouts/agent_knowledge_base_timeouts.dart';

/// The set of arguments for AgentKnowledgeBase.
class AgentKnowledgeBaseArgs {
  /// Description of the knowledge base.
  final pulumi.Input<String>? description;

  /// Details about the embeddings configuration of the knowledge base. See `knowledge_base_configuration` block for details.
  final pulumi.Input<AgentKnowledgeBaseKnowledgeBaseConfiguration>
      knowledgeBaseConfiguration;

  /// Name of the knowledge base.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ARN of the IAM role with permissions to invoke API operations on the knowledge base.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> roleArn;

  /// Details about the storage configuration of the knowledge base. See `storage_configuration` block for details.
  final pulumi.Input<AgentKnowledgeBaseStorageConfiguration>?
      storageConfiguration;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<AgentKnowledgeBaseTimeouts>? timeouts;

  AgentKnowledgeBaseArgs({
    this.description,
    required this.knowledgeBaseConfiguration,
    this.name,
    this.region,
    required this.roleArn,
    this.storageConfiguration,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['knowledgeBaseConfiguration'] = pulumi.Input.mapInputValue<
            AgentKnowledgeBaseKnowledgeBaseConfiguration, Map<String, dynamic>>(
        knowledgeBaseConfiguration, (value) => value.toMap());
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['roleArn'] = roleArn;
    final storageConfigurationValue = storageConfiguration;
    if (storageConfigurationValue != null) {
      map['storageConfiguration'] = pulumi.Input.mapOptionalInputValue<
              AgentKnowledgeBaseStorageConfiguration, Map<String, dynamic>>(
          storageConfigurationValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          AgentKnowledgeBaseTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AgentKnowledgeBaseArgs.fromMap(Map<String, dynamic> map) {
    return AgentKnowledgeBaseArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      knowledgeBaseConfiguration:
          pulumi.Input.asInput<AgentKnowledgeBaseKnowledgeBaseConfiguration>(
              map['knowledgeBaseConfiguration']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      roleArn: pulumi.Input.asInput<String>(map['roleArn']),
      storageConfiguration:
          pulumi.Input.asOptionalInput<AgentKnowledgeBaseStorageConfiguration>(
              map['storageConfiguration']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: pulumi.Input.asOptionalInput<AgentKnowledgeBaseTimeouts>(
          map['timeouts']),
    );
  }
}
