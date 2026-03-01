// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_workflow_step_parallel_config_step_custom_action_lambda_config_lambda.dart';
import 'plan_workflow_step_parallel_config_step_custom_action_lambda_config_ungraceful.dart';

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
    PlanWorkflowStepParallelConfigStepCustomActionLambdaConfigUngraceful
  >?
  ungracefuls;

  /// Creates a new [PlanWorkflowStepParallelConfigStepCustomActionLambdaConfig].
  /// [lambdas] Lambda function configuration. See Lambda below.
  /// [regionToRun] Region where the Lambda function should run. Valid values: `activatingRegion`, `deactivatingRegion`.
  /// [retryIntervalMinutes] Retry interval in minutes.
  /// [timeoutMinutes] Timeout in minutes.
  /// [ungracefuls] Ungraceful behavior configuration. See Ungraceful below.
  PlanWorkflowStepParallelConfigStepCustomActionLambdaConfig({
    this.lambdas,
    required this.regionToRun,
    required this.retryIntervalMinutes,
    this.timeoutMinutes,
    this.ungracefuls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lambdas': ?lambdas == null
          ? null
          : pulumi.Input.encodeList<
              PlanWorkflowStepParallelConfigStepCustomActionLambdaConfigLambda,
              Map<String, dynamic>
            >(lambdas!, (value) => value.toMap()),
      'regionToRun': regionToRun,
      'retryIntervalMinutes': retryIntervalMinutes,
      'timeoutMinutes': ?timeoutMinutes,
      'ungracefuls': ?ungracefuls == null
          ? null
          : pulumi.Input.encodeList<
              PlanWorkflowStepParallelConfigStepCustomActionLambdaConfigUngraceful,
              Map<String, dynamic>
            >(ungracefuls!, (value) => value.toMap()),
    };
  }

  factory PlanWorkflowStepParallelConfigStepCustomActionLambdaConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return PlanWorkflowStepParallelConfigStepCustomActionLambdaConfig(
      lambdas: map['lambdas'] == null
          ? null
          : pulumi.Input.decodeList<
              PlanWorkflowStepParallelConfigStepCustomActionLambdaConfigLambda
            >(
              map['lambdas'],
              (value) =>
                  PlanWorkflowStepParallelConfigStepCustomActionLambdaConfigLambda.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      regionToRun: map['regionToRun'] as String,
      retryIntervalMinutes: map['retryIntervalMinutes'] as double,
      timeoutMinutes: map['timeoutMinutes'] == null
          ? null
          : map['timeoutMinutes'] as int,
      ungracefuls: map['ungracefuls'] == null
          ? null
          : pulumi.Input.decodeList<
              PlanWorkflowStepParallelConfigStepCustomActionLambdaConfigUngraceful
            >(
              map['ungracefuls'],
              (value) =>
                  PlanWorkflowStepParallelConfigStepCustomActionLambdaConfigUngraceful.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
