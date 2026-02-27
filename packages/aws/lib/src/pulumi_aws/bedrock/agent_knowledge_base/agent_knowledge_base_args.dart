// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../agent_knowledge_base_knowledge_base_configuration/agent_knowledge_base_knowledge_base_configuration.dart';
import '../agent_knowledge_base_storage_configuration/agent_knowledge_base_storage_configuration.dart';
import '../agent_knowledge_base_timeouts/agent_knowledge_base_timeouts.dart';

/// The set of arguments for AgentKnowledgeBase.
class AgentKnowledgeBaseArgs {
  /// Description of the knowledge base.
  final Input<String>? description;

  /// Details about the embeddings configuration of the knowledge base. See `knowledge_base_configuration` block for details.
  final Input<AgentKnowledgeBaseKnowledgeBaseConfiguration>
      knowledgeBaseConfiguration;

  /// Name of the knowledge base.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ARN of the IAM role with permissions to invoke API operations on the knowledge base.
  ///
  /// The following arguments are optional:
  final Input<String> roleArn;

  /// Details about the storage configuration of the knowledge base. See `storage_configuration` block for details.
  final Input<AgentKnowledgeBaseStorageConfiguration>? storageConfiguration;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<AgentKnowledgeBaseTimeouts>? timeouts;

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
    map['knowledgeBaseConfiguration'] = Input.mapInputValue<
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
      map['storageConfiguration'] = Input.mapOptionalInputValue<
              AgentKnowledgeBaseStorageConfiguration, Map<String, dynamic>>(
          storageConfigurationValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = Input.mapOptionalInputValue<AgentKnowledgeBaseTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AgentKnowledgeBaseArgs.fromMap(Map<String, dynamic> map) {
    return AgentKnowledgeBaseArgs(
      description: Input.asOptionalInput<String>(map['description']),
      knowledgeBaseConfiguration:
          Input.asInput<AgentKnowledgeBaseKnowledgeBaseConfiguration>(
              map['knowledgeBaseConfiguration']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      roleArn: Input.asInput<String>(map['roleArn']),
      storageConfiguration:
          Input.asOptionalInput<AgentKnowledgeBaseStorageConfiguration>(
              map['storageConfiguration']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts:
          Input.asOptionalInput<AgentKnowledgeBaseTimeouts>(map['timeouts']),
    );
  }
}
