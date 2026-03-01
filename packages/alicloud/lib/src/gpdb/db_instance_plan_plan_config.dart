// ignore_for_file: unused_element, unnecessary_cast

import 'db_instance_plan_plan_config_pause.dart';
import 'db_instance_plan_plan_config_resume.dart';
import 'db_instance_plan_plan_config_scale_down.dart';
import 'db_instance_plan_plan_config_scale_in.dart';
import 'db_instance_plan_plan_config_scale_out.dart';
import 'db_instance_plan_plan_config_scale_up.dart';

class DbInstancePlanPlanConfig {
  /// Pause instance plan config. See `pause` below.
  final DbInstancePlanPlanConfigPause? pause;
  /// Resume instance plan config. See `resume` below.
  final DbInstancePlanPlanConfigResume? resume;
  /// Scale down instance plan config. See `scale_down` below.
  final DbInstancePlanPlanConfigScaleDown? scaleDown;
  /// Scale In instance plan config. See `scale_in` below.
  final DbInstancePlanPlanConfigScaleIn? scaleIn;
  /// Scale out instance plan config. See `scale_out` below.
  final DbInstancePlanPlanConfigScaleOut? scaleOut;
  /// Scale up instance plan config. See `scale_up` below.
  final DbInstancePlanPlanConfigScaleUp? scaleUp;

  /// Creates a new [DbInstancePlanPlanConfig].
  /// [pause] Pause instance plan config. See `pause` below.
  /// [resume] Resume instance plan config. See `resume` below.
  /// [scaleDown] Scale down instance plan config. See `scale_down` below.
  /// [scaleIn] Scale In instance plan config. See `scale_in` below.
  /// [scaleOut] Scale out instance plan config. See `scale_out` below.
  /// [scaleUp] Scale up instance plan config. See `scale_up` below.
  DbInstancePlanPlanConfig({
    this.pause,
    this.resume,
    this.scaleDown,
    this.scaleIn,
    this.scaleOut,
    this.scaleUp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pause': ?pause == null ? null : pause!.toMap(),
      'resume': ?resume == null ? null : resume!.toMap(),
      'scaleDown': ?scaleDown == null ? null : scaleDown!.toMap(),
      'scaleIn': ?scaleIn == null ? null : scaleIn!.toMap(),
      'scaleOut': ?scaleOut == null ? null : scaleOut!.toMap(),
      'scaleUp': ?scaleUp == null ? null : scaleUp!.toMap(),
    };
  }

  factory DbInstancePlanPlanConfig.fromMap(Map<String, dynamic> map) {
    return DbInstancePlanPlanConfig(
      pause: map['pause'] == null ? null : DbInstancePlanPlanConfigPause.fromMap((map['pause'] as Map).cast<String, dynamic>()),
      resume: map['resume'] == null ? null : DbInstancePlanPlanConfigResume.fromMap((map['resume'] as Map).cast<String, dynamic>()),
      scaleDown: map['scaleDown'] == null ? null : DbInstancePlanPlanConfigScaleDown.fromMap((map['scaleDown'] as Map).cast<String, dynamic>()),
      scaleIn: map['scaleIn'] == null ? null : DbInstancePlanPlanConfigScaleIn.fromMap((map['scaleIn'] as Map).cast<String, dynamic>()),
      scaleOut: map['scaleOut'] == null ? null : DbInstancePlanPlanConfigScaleOut.fromMap((map['scaleOut'] as Map).cast<String, dynamic>()),
      scaleUp: map['scaleUp'] == null ? null : DbInstancePlanPlanConfigScaleUp.fromMap((map['scaleUp'] as Map).cast<String, dynamic>()),
    );
  }
}

