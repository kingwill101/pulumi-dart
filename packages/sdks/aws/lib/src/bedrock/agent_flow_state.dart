// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_flow_definition.dart';
import 'agent_flow_timeouts.dart';

/// Input properties used for looking up and filtering AgentFlow resources.
class AgentFlowState {
  /// ARN of the flow.
  final pulumi.Input<String?>? arn;
  /// The time at which the flow was created.
  final pulumi.Input<String?>? createdAt;
  /// ARN of the KMS key to encrypt the flow.
  final pulumi.Input<String?>? customerEncryptionKeyArn;
  /// A definition of the nodes and connections between nodes in the flow. See Definition for more information.
  final pulumi.Input<AgentFlowDefinition?>? definition;
  /// A description for the flow.
  final pulumi.Input<String?>? description;
  /// ARN of the service role with permissions to create and manage a flow. For more information, see [Create a service role for flows in Amazon Bedrock](https://docs.aws.amazon.com/bedrock/latest/userguide/flows-permissions.html) in the Amazon Bedrock User Guide.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? executionRoleArn;
  /// A name for the flow.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The status of the flow.
  final pulumi.Input<String?>? status;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  final pulumi.Input<AgentFlowTimeouts?>? timeouts;
  /// The time at which the flow was last updated.
  final pulumi.Input<String?>? updatedAt;
  /// The version of the flow.
  final pulumi.Input<String?>? version;

  /// Creates a new [AgentFlowState].
  /// [arn] ARN of the flow.
  /// [createdAt] The time at which the flow was created.
  /// [customerEncryptionKeyArn] ARN of the KMS key to encrypt the flow.
  /// [definition] A definition of the nodes and connections between nodes in the flow. See Definition for more information.
  /// [description] A description for the flow.
  /// [executionRoleArn] ARN of the service role with permissions to create and manage a flow. For more information, see [Create a service role for flows in Amazon Bedrock](https://docs.aws.amazon.com/bedrock/latest/userguide/flows-permissions.html) in the Amazon Bedrock User Guide.
  /// [name] A name for the flow.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] The status of the flow.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [timeouts] Optional.
  /// [updatedAt] The time at which the flow was last updated.
  /// [version] The version of the flow.
  const AgentFlowState({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerEncryptionKeyArn: (() { final guardedValue = map['customerEncryptionKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      definition: (() { final guardedValue = map['definition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentFlowDefinition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      executionRoleArn: (() { final guardedValue = map['executionRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentFlowTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
