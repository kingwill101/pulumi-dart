// ignore_for_file: unused_element, unnecessary_cast

class PlanWorkflowStepParallelConfigStepCustomActionLambdaConfigLambda {
  /// ARN of the Lambda function.
  final String arn;

  /// ARN of the cross-account role to assume.
  final String? crossAccountRole;

  /// External ID for cross-account role assumption.
  final String? externalId;

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
      arn: map['arn'] as String,
      crossAccountRole: map['crossAccountRole'] == null
          ? null
          : map['crossAccountRole'] as String,
      externalId: map['externalId'] == null
          ? null
          : map['externalId'] as String,
    );
  }
}
