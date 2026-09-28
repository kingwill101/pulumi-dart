// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentFlowDefinitionConnectionConfigurationConditional {
  /// List of conditions. See `definition.node.configuration.condition.condition` Block for details.
  final pulumi.Input<String> condition;

  /// Creates a new [AgentFlowDefinitionConnectionConfigurationConditional].
  /// [condition] List of conditions. See `definition.node.configuration.condition.condition` Block for details.
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
