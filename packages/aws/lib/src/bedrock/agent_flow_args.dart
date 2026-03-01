// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_flow_definition.dart';
import 'agent_flow_timeouts.dart';

/// {@template pulumi_bedrock_agent_flow_agent_flow_args_doc}
/// The set of arguments for AgentFlow.
/// {@endtemplate}
/// {@macro pulumi_bedrock_agent_flow_agent_flow_args_doc}
class AgentFlowArgs {
  /// The Amazon Resource Name (ARN) of the KMS key to encrypt the flow.
  final pulumi.Input<String>? customerEncryptionKeyArn;
  /// A definition of the nodes and connections between nodes in the flow. See Definition for more information.
  final pulumi.Input<AgentFlowDefinition>? definition;
  /// A description for the flow.
  final pulumi.Input<String>? description;
  /// The Amazon Resource Name (ARN) of the service role with permissions to create and manage a flow. For more information, see [Create a service role for flows in Amazon Bedrock](https://docs.aws.amazon.com/bedrock/latest/userguide/flows-permissions.html) in the Amazon Bedrock User Guide.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> executionRoleArn;
  /// A name for the flow.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<AgentFlowTimeouts>? timeouts;

  /// Creates a new [AgentFlowArgs].
  /// [customerEncryptionKeyArn] The Amazon Resource Name (ARN) of the KMS key to encrypt the flow.
  /// [definition] A definition of the nodes and connections between nodes in the flow. See Definition for more information.
  /// [description] A description for the flow.
  /// [executionRoleArn] The Amazon Resource Name (ARN) of the service role with permissions to create and manage a flow. For more information, see [Create a service role for flows in Amazon Bedrock](https://docs.aws.amazon.com/bedrock/latest/userguide/flows-permissions.html) in the Amazon Bedrock User Guide.
  /// [name] A name for the flow.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  AgentFlowArgs({
    String? customerEncryptionKeyArn,
    AgentFlowDefinition? definition,
    String? description,
    required String executionRoleArn,
    String? name,
    String? region,
    Map<String, String>? tags,
    AgentFlowTimeouts? timeouts,
  }) :
      customerEncryptionKeyArn = pulumi.Input.asOptionalInput<String>(customerEncryptionKeyArn),
      definition = pulumi.Input.asOptionalInput<AgentFlowDefinition>(definition),
      description = pulumi.Input.asOptionalInput<String>(description),
      executionRoleArn = pulumi.Input.asInput<String>(executionRoleArn),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timeouts = pulumi.Input.asOptionalInput<AgentFlowTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerEncryptionKeyArn': ?customerEncryptionKeyArn,
      'definition': ?pulumi.Input.mapOptionalInputValue<AgentFlowDefinition, Map<String, dynamic>>(definition, (value) => value.toMap()),
      'description': ?description,
      'executionRoleArn': executionRoleArn,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AgentFlowTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory AgentFlowArgs.fromMap(Map<String, dynamic> map) {
    return AgentFlowArgs(
      customerEncryptionKeyArn: map['customerEncryptionKeyArn'] == null ? null : map['customerEncryptionKeyArn'] as String,
      definition: map['definition'] == null ? null : AgentFlowDefinition.fromMap((map['definition'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      executionRoleArn: map['executionRoleArn'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      timeouts: map['timeouts'] == null ? null : AgentFlowTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>()),
    );
  }
}

