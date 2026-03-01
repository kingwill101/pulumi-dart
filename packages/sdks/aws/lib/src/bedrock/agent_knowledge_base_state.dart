// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_knowledge_base_knowledge_base_configuration.dart';
import 'agent_knowledge_base_storage_configuration.dart';
import 'agent_knowledge_base_timeouts.dart';

/// Input properties used for looking up and filtering AgentKnowledgeBase resources.
class AgentKnowledgeBaseState {
  /// ARN of the knowledge base.
  final pulumi.Input<String>? arn;
  /// Time at which the knowledge base was created.
  final pulumi.Input<String>? createdAt;
  /// Description of the knowledge base.
  final pulumi.Input<String>? description;
  final pulumi.Input<List<String>>? failureReasons;
  /// Details about the embeddings configuration of the knowledge base. See `knowledge_base_configuration` block for details.
  final pulumi.Input<AgentKnowledgeBaseKnowledgeBaseConfiguration>? knowledgeBaseConfiguration;
  /// Name of the knowledge base.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of the IAM role with permissions to invoke API operations on the knowledge base.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? roleArn;
  /// Details about the storage configuration of the knowledge base. See `storage_configuration` block for details.
  final pulumi.Input<AgentKnowledgeBaseStorageConfiguration>? storageConfiguration;
  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<AgentKnowledgeBaseTimeouts>? timeouts;
  /// Time at which the knowledge base was last updated.
  final pulumi.Input<String>? updatedAt;

  /// Creates a new [AgentKnowledgeBaseState].
  /// [arn] ARN of the knowledge base.
  /// [createdAt] Time at which the knowledge base was created.
  /// [description] Description of the knowledge base.
  /// [failureReasons] Optional.
  /// [knowledgeBaseConfiguration] Details about the embeddings configuration of the knowledge base. See `knowledge_base_configuration` block for details.
  /// [name] Name of the knowledge base.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] ARN of the IAM role with permissions to invoke API operations on the knowledge base.
  /// [storageConfiguration] Details about the storage configuration of the knowledge base. See `storage_configuration` block for details.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  /// [updatedAt] Time at which the knowledge base was last updated.
  AgentKnowledgeBaseState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? createdAt,
    pulumi.Output<String>? description,
    pulumi.Output<List<String>>? failureReasons,
    pulumi.Output<AgentKnowledgeBaseKnowledgeBaseConfiguration>? knowledgeBaseConfiguration,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? roleArn,
    pulumi.Output<AgentKnowledgeBaseStorageConfiguration>? storageConfiguration,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<AgentKnowledgeBaseTimeouts>? timeouts,
    pulumi.Output<String>? updatedAt,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      description = pulumi.Input.asOptionalInput<String>(description),
      failureReasons = pulumi.Input.asOptionalInput<List<String>>(failureReasons),
      knowledgeBaseConfiguration = pulumi.Input.asOptionalInput<AgentKnowledgeBaseKnowledgeBaseConfiguration>(knowledgeBaseConfiguration),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
      storageConfiguration = pulumi.Input.asOptionalInput<AgentKnowledgeBaseStorageConfiguration>(storageConfiguration),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<AgentKnowledgeBaseTimeouts>(timeouts),
      updatedAt = pulumi.Input.asOptionalInput<String>(updatedAt);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'createdAt': ?createdAt,
      'description': ?description,
      'failureReasons': ?failureReasons,
      'knowledgeBaseConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentKnowledgeBaseKnowledgeBaseConfiguration, Map<String, dynamic>>(knowledgeBaseConfiguration, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'roleArn': ?roleArn,
      'storageConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentKnowledgeBaseStorageConfiguration, Map<String, dynamic>>(storageConfiguration, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AgentKnowledgeBaseTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'updatedAt': ?updatedAt,
    };
  }

  factory AgentKnowledgeBaseState.fromMap(Map<String, dynamic> map) {
    return AgentKnowledgeBaseState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      failureReasons: map['failureReasons'] == null ? null : pulumi.Output.create<List<String>>((map['failureReasons'] as List).cast<String>()),
      knowledgeBaseConfiguration: map['knowledgeBaseConfiguration'] == null ? null : pulumi.Output.create<AgentKnowledgeBaseKnowledgeBaseConfiguration>(AgentKnowledgeBaseKnowledgeBaseConfiguration.fromMap((map['knowledgeBaseConfiguration'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
      storageConfiguration: map['storageConfiguration'] == null ? null : pulumi.Output.create<AgentKnowledgeBaseStorageConfiguration>(AgentKnowledgeBaseStorageConfiguration.fromMap((map['storageConfiguration'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<AgentKnowledgeBaseTimeouts>(AgentKnowledgeBaseTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      updatedAt: map['updatedAt'] == null ? null : pulumi.Output.create<String>(map['updatedAt'] as String),
    );
  }
}

