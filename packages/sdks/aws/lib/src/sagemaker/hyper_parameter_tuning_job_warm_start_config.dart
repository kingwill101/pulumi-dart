// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hyper_parameter_tuning_job_warm_start_config_parent_hyper_parameter_tuning_job.dart';

class HyperParameterTuningJobWarmStartConfig {
  /// Parent tuning jobs for warm start.
  final pulumi.Input<List<HyperParameterTuningJobWarmStartConfigParentHyperParameterTuningJob>>? parentHyperParameterTuningJobs;
  /// Warm start mode.
  final pulumi.Input<String>? warmStartType;

  /// Creates a new [HyperParameterTuningJobWarmStartConfig].
  /// [parentHyperParameterTuningJobs] Parent tuning jobs for warm start.
  /// [warmStartType] Warm start mode.
  const HyperParameterTuningJobWarmStartConfig({
    this.parentHyperParameterTuningJobs,
    this.warmStartType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parentHyperParameterTuningJobs': ?pulumi.Input.mapOptionalInputValue<List<HyperParameterTuningJobWarmStartConfigParentHyperParameterTuningJob>, List<Map<String, dynamic>>>(parentHyperParameterTuningJobs, (value) => pulumi.Input.encodeList<HyperParameterTuningJobWarmStartConfigParentHyperParameterTuningJob, Map<String, dynamic>>(value, (value) => value.toMap())),
      'warmStartType': ?warmStartType,
    };
  }

  factory HyperParameterTuningJobWarmStartConfig.fromMap(Map<String, dynamic> map) {
    return HyperParameterTuningJobWarmStartConfig(
      parentHyperParameterTuningJobs: (() { final guardedValue = map['parentHyperParameterTuningJobs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HyperParameterTuningJobWarmStartConfigParentHyperParameterTuningJob>(guardedValue, (value) => HyperParameterTuningJobWarmStartConfigParentHyperParameterTuningJob.fromMap((value as Map).cast<String, dynamic>()))); })(),
      warmStartType: (() { final guardedValue = map['warmStartType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
