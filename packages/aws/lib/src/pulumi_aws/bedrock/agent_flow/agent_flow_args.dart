// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../agent_flow_definition/agent_flow_definition.dart';
import '../agent_flow_timeouts/agent_flow_timeouts.dart';

/// The set of arguments for AgentFlow.
class AgentFlowArgs {
  /// The Amazon Resource Name (ARN) of the KMS key to encrypt the flow.
  final Input<String>? customerEncryptionKeyArn;

  /// A definition of the nodes and connections between nodes in the flow. See Definition for more information.
  final Input<AgentFlowDefinition>? definition;

  /// A description for the flow.
  final Input<String>? description;

  /// The Amazon Resource Name (ARN) of the service role with permissions to create and manage a flow. For more information, see [Create a service role for flows in Amazon Bedrock](https://docs.aws.amazon.com/bedrock/latest/userguide/flows-permissions.html) in the Amazon Bedrock User Guide.
  ///
  /// The following arguments are optional:
  final Input<String> executionRoleArn;

  /// A name for the flow.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<AgentFlowTimeouts>? timeouts;

  AgentFlowArgs({
    this.customerEncryptionKeyArn,
    this.definition,
    this.description,
    required this.executionRoleArn,
    this.name,
    this.region,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customerEncryptionKeyArnValue = customerEncryptionKeyArn;
    if (customerEncryptionKeyArnValue != null) {
      map['customerEncryptionKeyArn'] = customerEncryptionKeyArnValue;
    }
    final definitionValue = definition;
    if (definitionValue != null) {
      map['definition'] = Input.mapOptionalInputValue<AgentFlowDefinition,
          Map<String, dynamic>>(definitionValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['executionRoleArn'] = executionRoleArn;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] =
          Input.mapOptionalInputValue<AgentFlowTimeouts, Map<String, dynamic>>(
              timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AgentFlowArgs.fromMap(Map<String, dynamic> map) {
    return AgentFlowArgs(
      customerEncryptionKeyArn:
          Input.asOptionalInput<String>(map['customerEncryptionKeyArn']),
      definition: Input.asOptionalInput<AgentFlowDefinition>(map['definition']),
      description: Input.asOptionalInput<String>(map['description']),
      executionRoleArn: Input.asInput<String>(map['executionRoleArn']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: Input.asOptionalInput<AgentFlowTimeouts>(map['timeouts']),
    );
  }
}
