// ignore_for_file: unused_element, unnecessary_cast


class PipeTargetParametersStepFunctionStateMachineParameters {
  /// Specify whether to invoke the function synchronously or asynchronously. Valid Values: REQUEST_RESPONSE, FIRE_AND_FORGET.
  final String invocationType;

  /// Creates a new [PipeTargetParametersStepFunctionStateMachineParameters].
  /// [invocationType] Specify whether to invoke the function synchronously or asynchronously. Valid Values: REQUEST_RESPONSE, FIRE_AND_FORGET.
  PipeTargetParametersStepFunctionStateMachineParameters({
    required this.invocationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'invocationType': invocationType,
    };
  }

  factory PipeTargetParametersStepFunctionStateMachineParameters.fromMap(Map<String, dynamic> map) {
    return PipeTargetParametersStepFunctionStateMachineParameters(
      invocationType: map['invocationType'] as String,
    );
  }
}

