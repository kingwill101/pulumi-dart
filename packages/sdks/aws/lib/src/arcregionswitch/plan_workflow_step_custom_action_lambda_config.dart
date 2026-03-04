// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_workflow_step_custom_action_lambda_config_lambda.dart';
import 'plan_workflow_step_custom_action_lambda_config_ungraceful.dart';

class PlanWorkflowStepCustomActionLambdaConfig {
  /// Lambda function configuration. See Lambda below.
  final pulumi.Input<List<PlanWorkflowStepCustomActionLambdaConfigLambda>>?
  lambdas;

  /// Region where the Lambda function should run. Valid values: `activatingRegion`, `deactivatingRegion`.
  final pulumi.Input<String> regionToRun;

  /// Retry interval in minutes.
  final pulumi.Input<double> retryIntervalMinutes;

  /// Timeout in minutes.
  final pulumi.Input<int>? timeoutMinutes;

  /// Ungraceful behavior configuration. See Ungraceful below.
  final pulumi.Input<List<PlanWorkflowStepCustomActionLambdaConfigUngraceful>>?
  ungracefuls;

  /// Creates a new [PlanWorkflowStepCustomActionLambdaConfig].
  /// [lambdas] Lambda function configuration. See Lambda below.
  /// [regionToRun] Region where the Lambda function should run. Valid values: `activatingRegion`, `deactivatingRegion`.
  /// [retryIntervalMinutes] Retry interval in minutes.
  /// [timeoutMinutes] Timeout in minutes.
  /// [ungracefuls] Ungraceful behavior configuration. See Ungraceful below.
  PlanWorkflowStepCustomActionLambdaConfig({
    this.lambdas,
    required this.regionToRun,
    required this.retryIntervalMinutes,
    this.timeoutMinutes,
    this.ungracefuls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lambdas':
          ?pulumi.Input.mapOptionalInputValue<
            List<PlanWorkflowStepCustomActionLambdaConfigLambda>,
            List<Map<String, dynamic>>
          >(
            lambdas,
            (value) =>
                pulumi.Input.encodeList<
                  PlanWorkflowStepCustomActionLambdaConfigLambda,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'regionToRun': regionToRun,
      'retryIntervalMinutes': retryIntervalMinutes,
      'timeoutMinutes': ?timeoutMinutes,
      'ungracefuls':
          ?pulumi.Input.mapOptionalInputValue<
            List<PlanWorkflowStepCustomActionLambdaConfigUngraceful>,
            List<Map<String, dynamic>>
          >(
            ungracefuls,
            (value) =>
                pulumi.Input.encodeList<
                  PlanWorkflowStepCustomActionLambdaConfigUngraceful,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory PlanWorkflowStepCustomActionLambdaConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return PlanWorkflowStepCustomActionLambdaConfig(
      lambdas: (() {
        final guardedValue = map['lambdas'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi
              .Input.decodeList<PlanWorkflowStepCustomActionLambdaConfigLambda>(
            guardedValue,
            (value) => PlanWorkflowStepCustomActionLambdaConfigLambda.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      regionToRun: pulumi.Input.fromValue(map['regionToRun'] as String),
      retryIntervalMinutes: pulumi.Input.fromValue(
        map['retryIntervalMinutes'] as double,
      ),
      timeoutMinutes: (() {
        final guardedValue = map['timeoutMinutes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      ungracefuls: (() {
        final guardedValue = map['ungracefuls'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            PlanWorkflowStepCustomActionLambdaConfigUngraceful
          >(
            guardedValue,
            (value) =>
                PlanWorkflowStepCustomActionLambdaConfigUngraceful.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
    );
  }
}
