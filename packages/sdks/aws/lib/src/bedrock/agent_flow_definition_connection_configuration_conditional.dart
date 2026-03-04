// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentFlowDefinitionConnectionConfigurationConditional {
  final pulumi.Input<String> condition;

  /// Creates a new [AgentFlowDefinitionConnectionConfigurationConditional].
  /// [condition] Required.
  AgentFlowDefinitionConnectionConfigurationConditional({
    required this.condition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'condition': condition};
  }

  factory AgentFlowDefinitionConnectionConfigurationConditional.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentFlowDefinitionConnectionConfigurationConditional(
      condition: pulumi.Input.fromValue(map['condition'] as String),
    );
  }
}
