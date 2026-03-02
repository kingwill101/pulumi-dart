// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'db_instance_plan_plan_config_pause.dart';
import 'db_instance_plan_plan_config_resume.dart';
import 'db_instance_plan_plan_config_scale_down.dart';
import 'db_instance_plan_plan_config_scale_in.dart';
import 'db_instance_plan_plan_config_scale_out.dart';
import 'db_instance_plan_plan_config_scale_up.dart';

class DbInstancePlanPlanConfig {
  /// Pause instance plan config. See `pause` below.
  final pulumi.Input<DbInstancePlanPlanConfigPause>? pause;
  /// Resume instance plan config. See `resume` below.
  final pulumi.Input<DbInstancePlanPlanConfigResume>? resume;
  /// Scale down instance plan config. See `scale_down` below.
  final pulumi.Input<DbInstancePlanPlanConfigScaleDown>? scaleDown;
  /// Scale In instance plan config. See `scale_in` below.
  final pulumi.Input<DbInstancePlanPlanConfigScaleIn>? scaleIn;
  /// Scale out instance plan config. See `scale_out` below.
  final pulumi.Input<DbInstancePlanPlanConfigScaleOut>? scaleOut;
  /// Scale up instance plan config. See `scale_up` below.
  final pulumi.Input<DbInstancePlanPlanConfigScaleUp>? scaleUp;

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
      'pause': ?pulumi.Input.mapOptionalInputValue<DbInstancePlanPlanConfigPause, Map<String, dynamic>>(pause, (value) => value.toMap()),
      'resume': ?pulumi.Input.mapOptionalInputValue<DbInstancePlanPlanConfigResume, Map<String, dynamic>>(resume, (value) => value.toMap()),
      'scaleDown': ?pulumi.Input.mapOptionalInputValue<DbInstancePlanPlanConfigScaleDown, Map<String, dynamic>>(scaleDown, (value) => value.toMap()),
      'scaleIn': ?pulumi.Input.mapOptionalInputValue<DbInstancePlanPlanConfigScaleIn, Map<String, dynamic>>(scaleIn, (value) => value.toMap()),
      'scaleOut': ?pulumi.Input.mapOptionalInputValue<DbInstancePlanPlanConfigScaleOut, Map<String, dynamic>>(scaleOut, (value) => value.toMap()),
      'scaleUp': ?pulumi.Input.mapOptionalInputValue<DbInstancePlanPlanConfigScaleUp, Map<String, dynamic>>(scaleUp, (value) => value.toMap()),
    };
  }

  factory DbInstancePlanPlanConfig.fromMap(Map<String, dynamic> map) {
    return DbInstancePlanPlanConfig(
      pause: map['pause'] == null ? null : (DbInstancePlanPlanConfigPause.fromMap((map['pause'] as Map).cast<String, dynamic>())).input(),
      resume: map['resume'] == null ? null : (DbInstancePlanPlanConfigResume.fromMap((map['resume'] as Map).cast<String, dynamic>())).input(),
      scaleDown: map['scaleDown'] == null ? null : (DbInstancePlanPlanConfigScaleDown.fromMap((map['scaleDown'] as Map).cast<String, dynamic>())).input(),
      scaleIn: map['scaleIn'] == null ? null : (DbInstancePlanPlanConfigScaleIn.fromMap((map['scaleIn'] as Map).cast<String, dynamic>())).input(),
      scaleOut: map['scaleOut'] == null ? null : (DbInstancePlanPlanConfigScaleOut.fromMap((map['scaleOut'] as Map).cast<String, dynamic>())).input(),
      scaleUp: map['scaleUp'] == null ? null : (DbInstancePlanPlanConfigScaleUp.fromMap((map['scaleUp'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

