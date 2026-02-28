// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_knowledge_base_knowledge_base_configuration.dart';
import 'agent_knowledge_base_storage_configuration.dart';
import 'agent_knowledge_base_timeouts.dart';

/// {@template pulumi_bedrock_agent_knowledge_base_agent_knowledge_base_args_doc}
/// The set of arguments for AgentKnowledgeBase.
/// {@endtemplate}
/// {@macro pulumi_bedrock_agent_knowledge_base_agent_knowledge_base_args_doc}
class AgentKnowledgeBaseArgs {
  /// Description of the knowledge base.
  final pulumi.Input<String>? description;
  /// Details about the embeddings configuration of the knowledge base. See `knowledge_base_configuration` block for details.
  final pulumi.Input<AgentKnowledgeBaseKnowledgeBaseConfiguration> knowledgeBaseConfiguration;
  /// Name of the knowledge base.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of the IAM role with permissions to invoke API operations on the knowledge base.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> roleArn;
  /// Details about the storage configuration of the knowledge base. See `storage_configuration` block for details.
  final pulumi.Input<AgentKnowledgeBaseStorageConfiguration>? storageConfiguration;
  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<AgentKnowledgeBaseTimeouts>? timeouts;

  /// Creates a new [AgentKnowledgeBaseArgs].
  /// [description] Description of the knowledge base.
  /// [knowledgeBaseConfiguration] Details about the embeddings configuration of the knowledge base. See `knowledge_base_configuration` block for details.
  /// [name] Name of the knowledge base.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] ARN of the IAM role with permissions to invoke API operations on the knowledge base.
  /// [storageConfiguration] Details about the storage configuration of the knowledge base. See `storage_configuration` block for details.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  AgentKnowledgeBaseArgs({
    String? description,
    required AgentKnowledgeBaseKnowledgeBaseConfiguration knowledgeBaseConfiguration,
    String? name,
    String? region,
    required String roleArn,
    AgentKnowledgeBaseStorageConfiguration? storageConfiguration,
    Map<String, String>? tags,
    AgentKnowledgeBaseTimeouts? timeouts,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      knowledgeBaseConfiguration = pulumi.Input.asInput<AgentKnowledgeBaseKnowledgeBaseConfiguration>(knowledgeBaseConfiguration),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleArn = pulumi.Input.asInput<String>(roleArn),
      storageConfiguration = pulumi.Input.asOptionalInput<AgentKnowledgeBaseStorageConfiguration>(storageConfiguration),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timeouts = pulumi.Input.asOptionalInput<AgentKnowledgeBaseTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'knowledgeBaseConfiguration': pulumi.Input.mapInputValue<AgentKnowledgeBaseKnowledgeBaseConfiguration, Map<String, dynamic>>(knowledgeBaseConfiguration, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'roleArn': roleArn,
      'storageConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentKnowledgeBaseStorageConfiguration, Map<String, dynamic>>(storageConfiguration, (value) => value.toMap()),
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AgentKnowledgeBaseTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory AgentKnowledgeBaseArgs.fromMap(Map<String, dynamic> map) {
    return AgentKnowledgeBaseArgs(
      description: map['description'] == null ? null : map['description'] as String,
      knowledgeBaseConfiguration: AgentKnowledgeBaseKnowledgeBaseConfiguration.fromMap((map['knowledgeBaseConfiguration'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      roleArn: map['roleArn'] as String,
      storageConfiguration: map['storageConfiguration'] == null ? null : AgentKnowledgeBaseStorageConfiguration.fromMap((map['storageConfiguration'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      timeouts: map['timeouts'] == null ? null : AgentKnowledgeBaseTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>()),
    );
  }
}

