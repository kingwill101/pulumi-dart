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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? createdAt,
    pulumi.Output<String>? customerEncryptionKeyArn,
    pulumi.Output<AgentFlowDefinition>? definition,
    pulumi.Output<String>? description,
    pulumi.Output<String>? executionRoleArn,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<AgentFlowTimeouts>? timeouts,
    pulumi.Output<String>? updatedAt,
    pulumi.Output<String>? version,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      customerEncryptionKeyArn = pulumi.Input.asOptionalInput<String>(customerEncryptionKeyArn),
      definition = pulumi.Input.asOptionalInput<AgentFlowDefinition>(definition),
      description = pulumi.Input.asOptionalInput<String>(description),
      executionRoleArn = pulumi.Input.asOptionalInput<String>(executionRoleArn),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<AgentFlowTimeouts>(timeouts),
      updatedAt = pulumi.Input.asOptionalInput<String>(updatedAt),
      version = pulumi.Input.asOptionalInput<String>(version);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      customerEncryptionKeyArn: map['customerEncryptionKeyArn'] == null ? null : pulumi.Output.create<String>(map['customerEncryptionKeyArn'] as String),
      definition: map['definition'] == null ? null : pulumi.Output.create<AgentFlowDefinition>(AgentFlowDefinition.fromMap((map['definition'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      executionRoleArn: map['executionRoleArn'] == null ? null : pulumi.Output.create<String>(map['executionRoleArn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<AgentFlowTimeouts>(AgentFlowTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      updatedAt: map['updatedAt'] == null ? null : pulumi.Output.create<String>(map['updatedAt'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

