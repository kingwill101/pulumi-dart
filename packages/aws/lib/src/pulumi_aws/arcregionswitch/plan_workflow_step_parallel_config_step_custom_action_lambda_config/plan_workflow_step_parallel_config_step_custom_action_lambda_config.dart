// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../plan_workflow_step_parallel_config_step_custom_action_lambda_config_lambda/plan_workflow_step_parallel_config_step_custom_action_lambda_config_lambda.dart';
import '../plan_workflow_step_parallel_config_step_custom_action_lambda_config_ungraceful/plan_workflow_step_parallel_config_step_custom_action_lambda_config_ungraceful.dart';

class PlanWorkflowStepParallelConfigStepCustomActionLambdaConfig {
  /// Lambda function configuration. See Lambda below.
  final List<PlanWorkflowStepParallelConfigStepCustomActionLambdaConfigLambda>?
      lambdas;

  /// Region where the Lambda function should run. Valid values: `activatingRegion`, `deactivatingRegion`.
  final String regionToRun;

  /// Retry interval in minutes.
  final double retryIntervalMinutes;

  /// Timeout in minutes.
  final int? timeoutMinutes;

  /// Ungraceful behavior configuration. See Ungraceful below.
  final List<
          PlanWorkflowStepParallelConfigStepCustomActionLambdaConfigUngraceful>?
      ungracefuls;

  PlanWorkflowStepParallelConfigStepCustomActionLambdaConfig({
    this.lambdas,
    required this.regionToRun,
    required this.retryIntervalMinutes,
    this.timeoutMinutes,
    this.ungracefuls,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final lambdasValue = lambdas;
    if (lambdasValue != null) {
      map['lambdas'] = pulumi.Input.encodeList<
          PlanWorkflowStepParallelConfigStepCustomActionLambdaConfigLambda,
          Map<String, dynamic>>(lambdasValue, (value) => value.toMap());
    }
    map['regionToRun'] = regionToRun;
    map['retryIntervalMinutes'] = retryIntervalMinutes;
    final timeoutMinutesValue = timeoutMinutes;
    if (timeoutMinutesValue != null) {
      map['timeoutMinutes'] = timeoutMinutesValue;
    }
    final ungracefulsValue = ungracefuls;
    if (ungracefulsValue != null) {
      map['ungracefuls'] = pulumi.Input.encodeList<
          PlanWorkflowStepParallelConfigStepCustomActionLambdaConfigUngraceful,
          Map<String, dynamic>>(ungracefulsValue, (value) => value.toMap());
    }
    return map;
  }

  factory PlanWorkflowStepParallelConfigStepCustomActionLambdaConfig.fromMap(
      Map<String, dynamic> map) {
    return PlanWorkflowStepParallelConfigStepCustomActionLambdaConfig(
      lambdas: map['lambdas'] == null
          ? null
          : pulumi.Input.decodeList<
                  PlanWorkflowStepParallelConfigStepCustomActionLambdaConfigLambda>(
              map['lambdas'],
              (value) =>
                  PlanWorkflowStepParallelConfigStepCustomActionLambdaConfigLambda
                      .fromMap((value as Map).cast<String, dynamic>())),
      regionToRun: map['regionToRun'] as String,
      retryIntervalMinutes: map['retryIntervalMinutes'] as double,
      timeoutMinutes:
          map['timeoutMinutes'] == null ? null : map['timeoutMinutes'] as int,
      ungracefuls: map['ungracefuls'] == null
          ? null
          : pulumi.Input.decodeList<
                  PlanWorkflowStepParallelConfigStepCustomActionLambdaConfigUngraceful>(
              map['ungracefuls'],
              (value) =>
                  PlanWorkflowStepParallelConfigStepCustomActionLambdaConfigUngraceful
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
