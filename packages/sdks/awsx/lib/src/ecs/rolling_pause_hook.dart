// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pause_timeout_action.dart';

class RollingPauseHook {
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

  /// Creates a new [RollingPauseHook].
  /// [timeoutAction] Action ECS takes when this pause hook times out. ROLLBACK reverts the deployment, CONTINUE
  /// [timeoutMinutes] Number of minutes ECS waits for ContinueServiceDeployment before applying timeoutAction.
  const RollingPauseHook({
    this.timeoutAction,
    this.timeoutMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'timeoutAction': ?pulumi.Input.mapOptionalInputValue<PauseTimeoutAction, String>(timeoutAction, (value) => value.wireValue),
      'timeoutMinutes': ?timeoutMinutes,
    };
  }

  factory RollingPauseHook.fromMap(Map<String, dynamic> map) {
    return RollingPauseHook(
      timeoutAction: (() { final guardedValue = map['timeoutAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PauseTimeoutAction.fromValue(guardedValue as String)); })(),
      timeoutMinutes: (() { final guardedValue = map['timeoutMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
