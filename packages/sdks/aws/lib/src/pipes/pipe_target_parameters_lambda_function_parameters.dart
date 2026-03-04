// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipeTargetParametersLambdaFunctionParameters {
  /// Specify whether to invoke the function synchronously or asynchronously. Valid Values: REQUEST_RESPONSE, FIRE_AND_FORGET.
  final pulumi.Input<String> invocationType;

  /// Creates a new [PipeTargetParametersLambdaFunctionParameters].
  /// [invocationType] Specify whether to invoke the function synchronously or asynchronously. Valid Values: REQUEST_RESPONSE, FIRE_AND_FORGET.
  PipeTargetParametersLambdaFunctionParameters({required this.invocationType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'invocationType': invocationType};
  }

  factory PipeTargetParametersLambdaFunctionParameters.fromMap(
    Map<String, dynamic> map,
  ) {
    return PipeTargetParametersLambdaFunctionParameters(
      invocationType: pulumi.Input.fromValue(map['invocationType'] as String),
    );
  }
}
