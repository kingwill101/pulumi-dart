// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_workflow_step_parallel_config_step_custom_action_lambda_config_lambda.dart';
import 'plan_workflow_step_parallel_config_step_custom_action_lambda_config_ungraceful.dart';

class PlanWorkflowStepParallelConfigStepCustomActionLambdaConfig {
  /// Lambda function configuration. See Lambda below.
  final pulumi.Input<List<PlanWorkflowStepParallelConfigStepCustomActionLambdaConfigLambda>>? lambdas;
  /// Region where the Lambda function should run. Valid values: `activatingRegion`, `deactivatingRegion`.
  final pulumi.Input<String> regionToRun;
  /// Retry interval in minutes.
  final pulumi.Input<double> retryIntervalMinutes;
  /// Timeout in minutes.
  final pulumi.Input<int>? timeoutMinutes;
  /// Ungraceful behavior configuration. See Ungraceful below.
  final pulumi.Input<List<PlanWorkflowStepParallelConfigStepCustomActionLambdaConfigUngraceful>>? ungracefuls;

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
      'lambdas': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepParallelConfigStepCustomActionLambdaConfigLambda>, List<Map<String, dynamic>>>(lambdas, (value) => pulumi.Input.encodeList<PlanWorkflowStepParallelConfigStepCustomActionLambdaConfigLambda, Map<String, dynamic>>(value, (value) => value.toMap())),
      'regionToRun': regionToRun,
      'retryIntervalMinutes': retryIntervalMinutes,
      'timeoutMinutes': ?timeoutMinutes,
      'ungracefuls': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepParallelConfigStepCustomActionLambdaConfigUngraceful>, List<Map<String, dynamic>>>(ungracefuls, (value) => pulumi.Input.encodeList<PlanWorkflowStepParallelConfigStepCustomActionLambdaConfigUngraceful, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PlanWorkflowStepParallelConfigStepCustomActionLambdaConfig.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepParallelConfigStepCustomActionLambdaConfig(
      lambdas: map['lambdas'] == null ? null : ((pulumi.Input.decodeList<PlanWorkflowStepParallelConfigStepCustomActionLambdaConfigLambda>(map['lambdas']!, (value) => PlanWorkflowStepParallelConfigStepCustomActionLambdaConfigLambda.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      regionToRun: (map['regionToRun'] as String).input(),
      retryIntervalMinutes: (map['retryIntervalMinutes'] as double).input(),
      timeoutMinutes: map['timeoutMinutes'] == null ? null : ((map['timeoutMinutes'] as int).input()).input(),
      ungracefuls: map['ungracefuls'] == null ? null : ((pulumi.Input.decodeList<PlanWorkflowStepParallelConfigStepCustomActionLambdaConfigUngraceful>(map['ungracefuls']!, (value) => PlanWorkflowStepParallelConfigStepCustomActionLambdaConfigUngraceful.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
    );
  }
}

