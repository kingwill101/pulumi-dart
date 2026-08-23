// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentFlowDefinitionConnectionConfigurationConditional {
  /// The condition that triggers this connection. For more information about how to write conditions, see the Condition node type in the [Node types](https://docs.aws.amazon.com/bedrock/latest/userguide/node-types.html) topic in the Amazon Bedrock User Guide.
  final pulumi.Input<String> condition;

  /// Creates a new [AgentFlowDefinitionConnectionConfigurationConditional].
  /// [condition] The condition that triggers this connection. For more information about how to write conditions, see the Condition node type in the [Node types](https://docs.aws.amazon.com/bedrock/latest/userguide/node-types.html) topic in the Amazon Bedrock User Guide.
  const AgentFlowDefinitionConnectionConfigurationConditional({
    required this.condition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': condition,
    };
  }

  factory AgentFlowDefinitionConnectionConfigurationConditional.fromMap(Map<String, dynamic> map) {
    return AgentFlowDefinitionConnectionConfigurationConditional(
      condition: pulumi.Input.fromValue(map['condition'] as String),
    );
  }
}
