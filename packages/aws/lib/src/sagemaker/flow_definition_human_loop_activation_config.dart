// ignore_for_file: unused_element, unnecessary_cast

import 'flow_definition_human_loop_activation_config_human_loop_activation_conditions_config.dart';

class FlowDefinitionHumanLoopActivationConfig {
  /// defines under what conditions SageMaker AI creates a human loop. See Human Loop Activation Conditions Config details below.
  final FlowDefinitionHumanLoopActivationConfigHumanLoopActivationConditionsConfig? humanLoopActivationConditionsConfig;

  /// Creates a new [FlowDefinitionHumanLoopActivationConfig].
  /// [humanLoopActivationConditionsConfig] defines under what conditions SageMaker AI creates a human loop. See Human Loop Activation Conditions Config details below.
  FlowDefinitionHumanLoopActivationConfig({
    this.humanLoopActivationConditionsConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'humanLoopActivationConditionsConfig': ?humanLoopActivationConditionsConfig == null ? null : humanLoopActivationConditionsConfig!.toMap(),
    };
  }

  factory FlowDefinitionHumanLoopActivationConfig.fromMap(Map<String, dynamic> map) {
    return FlowDefinitionHumanLoopActivationConfig(
      humanLoopActivationConditionsConfig: map['humanLoopActivationConditionsConfig'] == null ? null : FlowDefinitionHumanLoopActivationConfigHumanLoopActivationConditionsConfig.fromMap((map['humanLoopActivationConditionsConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

