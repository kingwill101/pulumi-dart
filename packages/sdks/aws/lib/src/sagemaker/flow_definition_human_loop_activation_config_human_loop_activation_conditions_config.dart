// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlowDefinitionHumanLoopActivationConfigHumanLoopActivationConditionsConfig {
  /// A JSON expressing use-case specific conditions declaratively. If any condition is matched, atomic tasks are created against the configured work team. For more information about how to structure the JSON, see [JSON Schema for Human Loop Activation Conditions in Amazon Augmented AI](https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-human-fallback-conditions-json-schema.html).
  final pulumi.Input<String> humanLoopActivationConditions;

  /// Creates a new [FlowDefinitionHumanLoopActivationConfigHumanLoopActivationConditionsConfig].
  /// [humanLoopActivationConditions] A JSON expressing use-case specific conditions declaratively. If any condition is matched, atomic tasks are created against the configured work team. For more information about how to structure the JSON, see [JSON Schema for Human Loop Activation Conditions in Amazon Augmented AI](https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-human-fallback-conditions-json-schema.html).
  FlowDefinitionHumanLoopActivationConfigHumanLoopActivationConditionsConfig({
    required this.humanLoopActivationConditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'humanLoopActivationConditions': humanLoopActivationConditions,
    };
  }

  factory FlowDefinitionHumanLoopActivationConfigHumanLoopActivationConditionsConfig.fromMap(Map<String, dynamic> map) {
    return FlowDefinitionHumanLoopActivationConfigHumanLoopActivationConditionsConfig(
      humanLoopActivationConditions: (map['humanLoopActivationConditions'] as String).input(),
    );
  }
}

