// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipeTargetParametersStepFunctionStateMachineParameters {
  /// Specify whether to invoke the function synchronously or asynchronously. Valid Values: REQUEST_RESPONSE, FIRE_AND_FORGET.
  final pulumi.Input<String> invocationType;

  /// Creates a new [PipeTargetParametersStepFunctionStateMachineParameters].
  /// [invocationType] Specify whether to invoke the function synchronously or asynchronously. Valid Values: REQUEST_RESPONSE, FIRE_AND_FORGET.
  const PipeTargetParametersStepFunctionStateMachineParameters({
    required this.invocationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'invocationType': invocationType,
    };
  }

  factory PipeTargetParametersStepFunctionStateMachineParameters.fromMap(Map<String, dynamic> map) {
    return PipeTargetParametersStepFunctionStateMachineParameters(
      invocationType: pulumi.Input.fromValue(map['invocationType'] as String),
    );
  }
}
