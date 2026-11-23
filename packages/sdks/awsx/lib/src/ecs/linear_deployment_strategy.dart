// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_failure_action.dart';
import 'progressive_lambda_hook.dart';
import 'progressive_pause_hook.dart';

class LinearDeploymentStrategy {
  /// Number of minutes to keep the previous service revision running after all production traffic
  /// has shifted to the new revision. This is separate from the canary observation period or the
  /// waits between linear traffic increments.
  ///
  /// Valid range: 0-1440 minutes.
  final pulumi.Input<double> bakeTimeMinutes;
  /// Action taken when the deployment circuit breaker detects a failed deployment. The circuit
  /// breaker is always enabled.
  ///
  /// ROLLBACK restores the last successful completed deployment when one is available. STOP marks
  /// the deployment as failed without automatic rollback.
  ///
  /// Default - DeploymentFailureAction.ROLLBACK
  final pulumi.Input<DeploymentFailureAction?>? failureAction;
  /// Lambda functions invoked at selected deployment stages.
  ///
  /// Lambda and pause hooks at the same stage run in parallel. All must complete before the
  /// deployment proceeds.
  ///
  /// Default - No Lambda hooks.
  final pulumi.Input<List<ProgressiveLambdaHook>?>? lambdaHooks;
  /// Pauses at selected deployment stages for external approval or validation. To continue the
  /// deployment an external workflow has to call ContinueServiceDeployment with the deployment ARN,
  /// the pause hookId, and CONTINUE or ROLLBACK.
  ///
  /// If no ContinueServiceDeployment is received before the timeout then the timeoutAction is
  /// performed.
  ///
  /// Default - No pause hooks.
  final pulumi.Input<List<ProgressivePauseHook>?>? pauseHooks;
  /// Number of minutes to wait between traffic increments. Valid range: 0-1440 minutes (24 hours).
  ///
  /// Default - AWS default of 6 minutes
  final pulumi.Input<double?>? stepBakeTimeMinutes;
  /// Percentage of production traffic shifted to the new service revision in each increment. Valid
  /// values are multiples of 0.1 from 3.0 to 100.0.
  ///
  /// Default - AWS default of 10.0
  final pulumi.Input<double?>? stepPercent;

  /// Creates a new [LinearDeploymentStrategy].
  /// [bakeTimeMinutes] Number of minutes to keep the previous service revision running after all production traffic
  /// [failureAction] Action taken when the deployment circuit breaker detects a failed deployment. The circuit
  /// [lambdaHooks] Lambda functions invoked at selected deployment stages.
  /// [pauseHooks] Pauses at selected deployment stages for external approval or validation. To continue the
  /// [stepBakeTimeMinutes] Number of minutes to wait between traffic increments. Valid range: 0-1440 minutes (24 hours).
  /// [stepPercent] Percentage of production traffic shifted to the new service revision in each increment. Valid
  const LinearDeploymentStrategy({
    required this.bakeTimeMinutes,
    this.failureAction,
    this.lambdaHooks,
    this.pauseHooks,
    this.stepBakeTimeMinutes,
    this.stepPercent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bakeTimeMinutes': bakeTimeMinutes,
      'failureAction': ?pulumi.Input.mapOptionalInputValue<DeploymentFailureAction, String>(failureAction, (value) => value.wireValue),
      'lambdaHooks': ?pulumi.Input.mapOptionalInputValue<List<ProgressiveLambdaHook>, List<Map<String, dynamic>>>(lambdaHooks, (value) => pulumi.Input.encodeList<ProgressiveLambdaHook, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pauseHooks': ?pulumi.Input.mapOptionalInputValue<List<ProgressivePauseHook>, List<Map<String, dynamic>>>(pauseHooks, (value) => pulumi.Input.encodeList<ProgressivePauseHook, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stepBakeTimeMinutes': ?stepBakeTimeMinutes,
      'stepPercent': ?stepPercent,
    };
  }

  factory LinearDeploymentStrategy.fromMap(Map<String, dynamic> map) {
    return LinearDeploymentStrategy(
      bakeTimeMinutes: pulumi.Input.fromValue((map['bakeTimeMinutes'] as num).toDouble()),
      failureAction: (() { final guardedValue = map['failureAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentFailureAction.fromValue(guardedValue as String)); })(),
      lambdaHooks: (() { final guardedValue = map['lambdaHooks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ProgressiveLambdaHook>(guardedValue, (value) => ProgressiveLambdaHook.fromMap((value as Map).cast<String, dynamic>()))); })(),
      pauseHooks: (() { final guardedValue = map['pauseHooks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ProgressivePauseHook>(guardedValue, (value) => ProgressivePauseHook.fromMap((value as Map).cast<String, dynamic>()))); })(),
      stepBakeTimeMinutes: (() { final guardedValue = map['stepBakeTimeMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      stepPercent: (() { final guardedValue = map['stepPercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
