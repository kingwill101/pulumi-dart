// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_flow_definition.dart';
import 'agent_flow_timeouts.dart';

/// Input properties used for looking up and filtering AgentFlow resources.
class AgentFlowState {
  /// The Amazon Resource Name (ARN) of the flow.
  final pulumi.Input<String>? arn;
  /// The time at which the flow was created.
  final pulumi.Input<String>? createdAt;
  /// The Amazon Resource Name (ARN) of the KMS key to encrypt the flow.
  final pulumi.Input<String>? customerEncryptionKeyArn;
  /// A definition of the nodes and connections between nodes in the flow. See Definition for more information.
  final pulumi.Input<AgentFlowDefinition>? definition;
  /// A description for the flow.
  final pulumi.Input<String>? description;
  /// The Amazon Resource Name (ARN) of the service role with permissions to create and manage a flow. For more information, see [Create a service role for flows in Amazon Bedrock](https://docs.aws.amazon.com/bedrock/latest/userguide/flows-permissions.html) in the Amazon Bedrock User Guide.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? executionRoleArn;
  /// A name for the flow.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The status of the flow.
  final pulumi.Input<String>? status;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<AgentFlowTimeouts>? timeouts;
  /// The time at which the flow was last updated.
  final pulumi.Input<String>? updatedAt;
  /// The version of the flow.
  final pulumi.Input<String>? version;

  /// Creates a new [AgentFlowState].
  /// [arn] The Amazon Resource Name (ARN) of the flow.
  /// [createdAt] The time at which the flow was created.
  /// [customerEncryptionKeyArn] The Amazon Resource Name (ARN) of the KMS key to encrypt the flow.
  /// [definition] A definition of the nodes and connections between nodes in the flow. See Definition for more information.
  /// [description] A description for the flow.
  /// [executionRoleArn] The Amazon Resource Name (ARN) of the service role with permissions to create and manage a flow. For more information, see [Create a service role for flows in Amazon Bedrock](https://docs.aws.amazon.com/bedrock/latest/userguide/flows-permissions.html) in the Amazon Bedrock User Guide.
  /// [name] A name for the flow.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] The status of the flow.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  /// [updatedAt] The time at which the flow was last updated.
  /// [version] The version of the flow.
  AgentFlowState({
    this.arn,
    this.createdAt,
    this.customerEncryptionKeyArn,
    this.definition,
    this.description,
    this.executionRoleArn,
    this.name,
    this.region,
    this.status,
    this.tags,
    this.tagsAll,
    this.timeouts,
    this.updatedAt,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'createdAt': ?createdAt,
      'customerEncryptionKeyArn': ?customerEncryptionKeyArn,
      'definition': ?pulumi.Input.mapOptionalInputValue<AgentFlowDefinition, Map<String, dynamic>>(definition, (value) => value.toMap()),
      'description': ?description,
      'executionRoleArn': ?executionRoleArn,
      'name': ?name,
      'region': ?region,
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AgentFlowTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'updatedAt': ?updatedAt,
      'version': ?version,
    };
  }

  factory AgentFlowState.fromMap(Map<String, dynamic> map) {
    return AgentFlowState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      createdAt: map['createdAt'] == null ? null : ((map['createdAt'] as String).input()).input(),
      customerEncryptionKeyArn: map['customerEncryptionKeyArn'] == null ? null : ((map['customerEncryptionKeyArn'] as String).input()).input(),
      definition: map['definition'] == null ? null : ((AgentFlowDefinition.fromMap((map['definition']! as Map).cast<String, dynamic>())).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      executionRoleArn: map['executionRoleArn'] == null ? null : ((map['executionRoleArn'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      status: map['status'] == null ? null : ((map['status'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((AgentFlowTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
      updatedAt: map['updatedAt'] == null ? null : ((map['updatedAt'] as String).input()).input(),
      version: map['version'] == null ? null : ((map['version'] as String).input()).input(),
    );
  }
}

