// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PlanWorkflowStepParallelConfigStepCustomActionLambdaConfigLambda {
  /// ARN of the Lambda function.
  final pulumi.Input<String> arn;

  /// ARN of the cross-account role to assume.
  final pulumi.Input<String>? crossAccountRole;

  /// External ID for cross-account role assumption.
  final pulumi.Input<String>? externalId;

  /// Creates a new [PlanWorkflowStepParallelConfigStepCustomActionLambdaConfigLambda].
  /// [arn] ARN of the Lambda function.
  /// [crossAccountRole] ARN of the cross-account role to assume.
  /// [externalId] External ID for cross-account role assumption.
  PlanWorkflowStepParallelConfigStepCustomActionLambdaConfigLambda({
    required this.arn,
    this.crossAccountRole,
    this.externalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'crossAccountRole': ?crossAccountRole,
      'externalId': ?externalId,
    };
  }

  factory PlanWorkflowStepParallelConfigStepCustomActionLambdaConfigLambda.fromMap(
    Map<String, dynamic> map,
  ) {
    return PlanWorkflowStepParallelConfigStepCustomActionLambdaConfigLambda(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      crossAccountRole: (() {
        final guardedValue = map['crossAccountRole'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      externalId: (() {
        final guardedValue = map['externalId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
