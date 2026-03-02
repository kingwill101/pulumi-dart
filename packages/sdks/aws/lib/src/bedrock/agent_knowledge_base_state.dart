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
    this.arn,
    this.createdAt,
    this.description,
    this.failureReasons,
    this.knowledgeBaseConfiguration,
    this.name,
    this.region,
    this.roleArn,
    this.storageConfiguration,
    this.tags,
    this.tagsAll,
    this.timeouts,
    this.updatedAt,
  });

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
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      createdAt: map['createdAt'] == null ? null : ((map['createdAt'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      failureReasons: map['failureReasons'] == null ? null : (((map['failureReasons'] as List).cast<String>()).input()).input(),
      knowledgeBaseConfiguration: map['knowledgeBaseConfiguration'] == null ? null : ((AgentKnowledgeBaseKnowledgeBaseConfiguration.fromMap((map['knowledgeBaseConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      roleArn: map['roleArn'] == null ? null : ((map['roleArn'] as String).input()).input(),
      storageConfiguration: map['storageConfiguration'] == null ? null : ((AgentKnowledgeBaseStorageConfiguration.fromMap((map['storageConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((AgentKnowledgeBaseTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
      updatedAt: map['updatedAt'] == null ? null : ((map['updatedAt'] as String).input()).input(),
    );
  }
}

