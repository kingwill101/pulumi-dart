// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_definition_human_loop_activation_config_human_loop_activation_conditions_config.dart';

class FlowDefinitionHumanLoopActivationConfig {
  /// defines under what conditions SageMaker AI creates a human loop. See Human Loop Activation Conditions Config details below.
  final pulumi.Input<FlowDefinitionHumanLoopActivationConfigHumanLoopActivationConditionsConfig>? humanLoopActivationConditionsConfig;

  /// Creates a new [FlowDefinitionHumanLoopActivationConfig].
  /// [humanLoopActivationConditionsConfig] defines under what conditions SageMaker AI creates a human loop. See Human Loop Activation Conditions Config details below.
  FlowDefinitionHumanLoopActivationConfig({
    this.humanLoopActivationConditionsConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'humanLoopActivationConditionsConfig': ?pulumi.Input.mapOptionalInputValue<FlowDefinitionHumanLoopActivationConfigHumanLoopActivationConditionsConfig, Map<String, dynamic>>(humanLoopActivationConditionsConfig, (value) => value.toMap()),
    };
  }

  factory FlowDefinitionHumanLoopActivationConfig.fromMap(Map<String, dynamic> map) {
    return FlowDefinitionHumanLoopActivationConfig(
      humanLoopActivationConditionsConfig: (() { final guardedValue = map['humanLoopActivationConditionsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlowDefinitionHumanLoopActivationConfigHumanLoopActivationConditionsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

