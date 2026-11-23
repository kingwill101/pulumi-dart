// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_failure_action.dart';
import 'rolling_lambda_hook.dart';
import 'rolling_pause_hook.dart';

class RollingDeploymentStrategy {
  /// Action taken when the deployment circuit breaker detects a failed deployment. The circuit
  /// breaker is always enabled.
  ///
  /// ROLLBACK restores the last successful completed deployment when one is available. STOP marks
  /// the deployment as failed without automatic rollback.
  ///
  /// Default - DeploymentFailureAction.ROLLBACK
  final pulumi.Input<DeploymentFailureAction?>? failureAction;
  /// Lambda functions invoked at PRE_SCALE_UP before rolling replacement tasks start.
  ///
  /// Lambda and pause hooks run in parallel at this stage, and all must complete before tasks start.
  ///
  /// Default - No Lambda hooks.
  final pulumi.Input<List<RollingLambdaHook>?>? lambdaHooks;
  /// Pauses at PRE_SCALE_UP before rolling replacement tasks start. To continue the deployment an
  /// external workflow has to call ContinueServiceDeployment with the deployment ARN, the pause
  /// hookId, and CONTINUE or ROLLBACK.
  ///
  /// If no ContinueServiceDeployment is received before the timeout then the timeoutAction is
  /// performed.
  ///
  /// Default - No pause hooks.
  final pulumi.Input<List<RollingPauseHook>?>? pauseHooks;

  /// Creates a new [RollingDeploymentStrategy].
  /// [failureAction] Action taken when the deployment circuit breaker detects a failed deployment. The circuit
  /// [lambdaHooks] Lambda functions invoked at PRE_SCALE_UP before rolling replacement tasks start.
  /// [pauseHooks] Pauses at PRE_SCALE_UP before rolling replacement tasks start. To continue the deployment an
  const RollingDeploymentStrategy({
    this.failureAction,
    this.lambdaHooks,
    this.pauseHooks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureAction': ?pulumi.Input.mapOptionalInputValue<DeploymentFailureAction, String>(failureAction, (value) => value.wireValue),
      'lambdaHooks': ?pulumi.Input.mapOptionalInputValue<List<RollingLambdaHook>, List<Map<String, dynamic>>>(lambdaHooks, (value) => pulumi.Input.encodeList<RollingLambdaHook, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pauseHooks': ?pulumi.Input.mapOptionalInputValue<List<RollingPauseHook>, List<Map<String, dynamic>>>(pauseHooks, (value) => pulumi.Input.encodeList<RollingPauseHook, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RollingDeploymentStrategy.fromMap(Map<String, dynamic> map) {
    return RollingDeploymentStrategy(
      failureAction: (() { final guardedValue = map['failureAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentFailureAction.fromValue(guardedValue as String)); })(),
      lambdaHooks: (() { final guardedValue = map['lambdaHooks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RollingLambdaHook>(guardedValue, (value) => RollingLambdaHook.fromMap((value as Map).cast<String, dynamic>()))); })(),
      pauseHooks: (() { final guardedValue = map['pauseHooks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RollingPauseHook>(guardedValue, (value) => RollingPauseHook.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
