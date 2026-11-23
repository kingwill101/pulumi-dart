// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pause_timeout_action.dart';
import 'progressive_pause_lifecycle_stage.dart';

class ProgressivePauseHook {
  /// Stages at which ECS waits for an external decision. Hooks at the same stage run in parallel.
  /// Each pause must be continued and each Lambda hook must succeed before the deployment proceeds.
  /// A pause can also be released by its timeout action. Array order does not define execution
  /// order.
  ///
  /// PRE_PRODUCTION_TRAFFIC_SHIFT pauses before every traffic shift step for canary and linear
  /// deployments, requiring a separate ContinueServiceDeployment call for each new hookId.
  final pulumi.Input<List<ProgressivePauseLifecycleStage>> lifecycleStages;
  /// Action ECS takes when this pause hook times out. ROLLBACK reverts the deployment, CONTINUE
  /// releases this hook while leaving any other unfinished hooks at the stage in effect.
  ///
  /// Default - AWS default of PauseTimeoutAction.ROLLBACK.
  final pulumi.Input<PauseTimeoutAction?>? timeoutAction;
  /// Number of minutes ECS waits for ContinueServiceDeployment before applying timeoutAction.
  ///
  /// Valid range: 1-20160 minutes (14 days).
  ///
  /// Default - AWS default of 1440 minutes (24 hours).
  final pulumi.Input<double?>? timeoutMinutes;

  /// Creates a new [ProgressivePauseHook].
  /// [lifecycleStages] Stages at which ECS waits for an external decision. Hooks at the same stage run in parallel.
  /// [timeoutAction] Action ECS takes when this pause hook times out. ROLLBACK reverts the deployment, CONTINUE
  /// [timeoutMinutes] Number of minutes ECS waits for ContinueServiceDeployment before applying timeoutAction.
  const ProgressivePauseHook({
    required this.lifecycleStages,
    this.timeoutAction,
    this.timeoutMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lifecycleStages': pulumi.Input.mapInputValue<List<ProgressivePauseLifecycleStage>, List<String>>(lifecycleStages, (value) => pulumi.Input.encodeList<ProgressivePauseLifecycleStage, String>(value, (value) => value.wireValue)),
      'timeoutAction': ?pulumi.Input.mapOptionalInputValue<PauseTimeoutAction, String>(timeoutAction, (value) => value.wireValue),
      'timeoutMinutes': ?timeoutMinutes,
    };
  }

  factory ProgressivePauseHook.fromMap(Map<String, dynamic> map) {
    return ProgressivePauseHook(
      lifecycleStages: pulumi.Input.fromValue(pulumi.Input.decodeList<ProgressivePauseLifecycleStage>(map['lifecycleStages']!, (value) => ProgressivePauseLifecycleStage.fromValue(value as String))),
      timeoutAction: (() { final guardedValue = map['timeoutAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PauseTimeoutAction.fromValue(guardedValue as String)); })(),
      timeoutMinutes: (() { final guardedValue = map['timeoutMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
