// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_db_instance_plans_plan_plan_config_pause.dart';
import 'get_db_instance_plans_plan_plan_config_resume.dart';
import 'get_db_instance_plans_plan_plan_config_scale_in.dart';
import 'get_db_instance_plans_plan_plan_config_scale_out.dart';

class GetDbInstancePlansPlanPlanConfig {
  /// Pause instance plan config.
  final pulumi.Input<List<GetDbInstancePlansPlanPlanConfigPause>> pauses;
  /// Resume instance plan config.
  final pulumi.Input<List<GetDbInstancePlansPlanPlanConfigResume>> resumes;
  /// Scale In instance plan config.
  final pulumi.Input<List<GetDbInstancePlansPlanPlanConfigScaleIn>> scaleIns;
  /// Scale out instance plan config.
  final pulumi.Input<List<GetDbInstancePlansPlanPlanConfigScaleOut>> scaleOuts;

  /// Creates a new [GetDbInstancePlansPlanPlanConfig].
  /// [pauses] Pause instance plan config.
  /// [resumes] Resume instance plan config.
  /// [scaleIns] Scale In instance plan config.
  /// [scaleOuts] Scale out instance plan config.
  GetDbInstancePlansPlanPlanConfig({
    required this.pauses,
    required this.resumes,
    required this.scaleIns,
    required this.scaleOuts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pauses': pulumi.Input.mapInputValue<List<GetDbInstancePlansPlanPlanConfigPause>, List<Map<String, dynamic>>>(pauses, (value) => pulumi.Input.encodeList<GetDbInstancePlansPlanPlanConfigPause, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resumes': pulumi.Input.mapInputValue<List<GetDbInstancePlansPlanPlanConfigResume>, List<Map<String, dynamic>>>(resumes, (value) => pulumi.Input.encodeList<GetDbInstancePlansPlanPlanConfigResume, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scaleIns': pulumi.Input.mapInputValue<List<GetDbInstancePlansPlanPlanConfigScaleIn>, List<Map<String, dynamic>>>(scaleIns, (value) => pulumi.Input.encodeList<GetDbInstancePlansPlanPlanConfigScaleIn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scaleOuts': pulumi.Input.mapInputValue<List<GetDbInstancePlansPlanPlanConfigScaleOut>, List<Map<String, dynamic>>>(scaleOuts, (value) => pulumi.Input.encodeList<GetDbInstancePlansPlanPlanConfigScaleOut, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetDbInstancePlansPlanPlanConfig.fromMap(Map<String, dynamic> map) {
    return GetDbInstancePlansPlanPlanConfig(
      pauses: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDbInstancePlansPlanPlanConfigPause>(map['pauses']!, (value) => GetDbInstancePlansPlanPlanConfigPause.fromMap((value as Map).cast<String, dynamic>()))),
      resumes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDbInstancePlansPlanPlanConfigResume>(map['resumes']!, (value) => GetDbInstancePlansPlanPlanConfigResume.fromMap((value as Map).cast<String, dynamic>()))),
      scaleIns: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDbInstancePlansPlanPlanConfigScaleIn>(map['scaleIns']!, (value) => GetDbInstancePlansPlanPlanConfigScaleIn.fromMap((value as Map).cast<String, dynamic>()))),
      scaleOuts: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDbInstancePlansPlanPlanConfigScaleOut>(map['scaleOuts']!, (value) => GetDbInstancePlansPlanPlanConfigScaleOut.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

