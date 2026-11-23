// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RollingLambdaHook {
  /// ARN of the Lambda function to invoke. A version or alias ARN can be used to select the function
  /// revision that handles the hook.
  ///
  /// The function must return a JSON object with a hookStatus of SUCCEEDED, FAILED, or IN_PROGRESS.
  /// If IN_PROGRESS is returned then ECS will invoke the hook again until either FAILED or SUCCEEDED
  /// are returned.
  final pulumi.Input<String> functionArn;
  /// Custom JSON-compatible configuration passed to the Lambda function as event.hookDetails. Values
  /// can include nested objects, arrays, numbers, booleans, null, and Pulumi outputs. The component
  /// resolves outputs and serializes the object as JSON for ECS.
  ///
  /// A function returning IN_PROGRESS can also return hookDetails to persist state between its
  /// invocations within the same deployment. That state is not shared with other hooks or later
  /// deployments. Pass secret identifiers rather than secret values and let the function retrieve
  /// secrets using its execution role.
  ///
  /// Default - No custom configuration is passed.
  final pulumi.Input<Map<String, dynamic>?>? hookDetails;
  /// ARN of the IAM role ECS assumes to invoke this function. The role must trust ecs.amazonaws.com
  /// and allow lambda:InvokeFunction on functionArn, including any version or alias qualifier.
  ///
  /// If omitted, the service creates one shared invocation role for all Lambda hooks that omit this
  /// property, scoped to their function ARNs.
  ///
  /// Default - A shared invocation role is created when needed.
  final pulumi.Input<String?>? invocationRoleArn;

  /// Creates a new [RollingLambdaHook].
  /// [functionArn] ARN of the Lambda function to invoke. A version or alias ARN can be used to select the function
  /// [hookDetails] Custom JSON-compatible configuration passed to the Lambda function as event.hookDetails. Values
  /// [invocationRoleArn] ARN of the IAM role ECS assumes to invoke this function. The role must trust ecs.amazonaws.com
  const RollingLambdaHook({
    required this.functionArn,
    this.hookDetails,
    this.invocationRoleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionArn': functionArn,
      'hookDetails': ?hookDetails,
      'invocationRoleArn': ?invocationRoleArn,
    };
  }

  factory RollingLambdaHook.fromMap(Map<String, dynamic> map) {
    return RollingLambdaHook(
      functionArn: pulumi.Input.fromValue(map['functionArn'] as String),
      hookDetails: (() { final guardedValue = map['hookDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      invocationRoleArn: (() { final guardedValue = map['invocationRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
