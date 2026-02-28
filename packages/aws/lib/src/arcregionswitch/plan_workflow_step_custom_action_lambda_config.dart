// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_workflow_step_custom_action_lambda_config_lambda.dart';
import 'plan_workflow_step_custom_action_lambda_config_ungraceful.dart';

class PlanWorkflowStepCustomActionLambdaConfig {
  /// Lambda function configuration. See Lambda below.
  final List<PlanWorkflowStepCustomActionLambdaConfigLambda>? lambdas;

  /// Region where the Lambda function should run. Valid values: `activatingRegion`, `deactivatingRegion`.
  final String regionToRun;

  /// Retry interval in minutes.
  final double retryIntervalMinutes;

  /// Timeout in minutes.
  final int? timeoutMinutes;

  /// Ungraceful behavior configuration. See Ungraceful below.
  final List<PlanWorkflowStepCustomActionLambdaConfigUngraceful>? ungracefuls;

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
    final map = <String, dynamic>{};
    final lambdasValue = lambdas;
    if (lambdasValue != null) {
      map['lambdas'] = pulumi.Input.encodeList<
          PlanWorkflowStepCustomActionLambdaConfigLambda,
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
          PlanWorkflowStepCustomActionLambdaConfigUngraceful,
          Map<String, dynamic>>(ungracefulsValue, (value) => value.toMap());
    }
    return map;
  }

  factory PlanWorkflowStepCustomActionLambdaConfig.fromMap(
      Map<String, dynamic> map) {
    return PlanWorkflowStepCustomActionLambdaConfig(
      lambdas: map['lambdas'] == null
          ? null
          : pulumi.Input.decodeList<
                  PlanWorkflowStepCustomActionLambdaConfigLambda>(
              map['lambdas'],
              (value) => PlanWorkflowStepCustomActionLambdaConfigLambda.fromMap(
                  (value as Map).cast<String, dynamic>())),
      regionToRun: map['regionToRun'] as String,
      retryIntervalMinutes: map['retryIntervalMinutes'] as double,
      timeoutMinutes:
          map['timeoutMinutes'] == null ? null : map['timeoutMinutes'] as int,
      ungracefuls: map['ungracefuls'] == null
          ? null
          : pulumi.Input.decodeList<
                  PlanWorkflowStepCustomActionLambdaConfigUngraceful>(
              map['ungracefuls'],
              (value) =>
                  PlanWorkflowStepCustomActionLambdaConfigUngraceful.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
