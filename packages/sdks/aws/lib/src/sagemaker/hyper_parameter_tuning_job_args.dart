// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hyper_parameter_tuning_job_autotune.dart';
import 'hyper_parameter_tuning_job_config.dart';
import 'hyper_parameter_tuning_job_timeouts.dart';
import 'hyper_parameter_tuning_job_training_job_definition.dart';
import 'hyper_parameter_tuning_job_warm_start_config.dart';

/// {@template pulumi_sagemaker_hyper_parameter_tuning_job_hyper_parameter_tuning_job_args_doc}
/// The set of arguments for HyperParameterTuningJob.
/// {@endtemplate}
/// {@macro pulumi_sagemaker_hyper_parameter_tuning_job_hyper_parameter_tuning_job_args_doc}
class HyperParameterTuningJobArgs {
  /// Autotune settings. See `autotune`.
  final pulumi.Input<HyperParameterTuningJobAutotune?>? autotune;
  /// Tuning job settings. See `config`.
  final pulumi.Input<HyperParameterTuningJobConfig> config;
  /// Name of the tuning job.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Map of tags to assign to this resource.
  final pulumi.Input<Map<String, String>?>? tags;
  final pulumi.Input<HyperParameterTuningJobTimeouts?>? timeouts;
  /// Single training job definition for tuning. See `trainingJobDefinition`.
  final pulumi.Input<HyperParameterTuningJobTrainingJobDefinition?>? trainingJobDefinition;
  /// Multiple training job definitions for tuning. See `trainingJobDefinition`.
  final pulumi.Input<List<HyperParameterTuningJobTrainingJobDefinition>?>? trainingJobDefinitions;
  /// Warm start settings. See `warmStartConfig`.
  final pulumi.Input<HyperParameterTuningJobWarmStartConfig?>? warmStartConfig;

  /// Creates a new [HyperParameterTuningJobArgs].
  /// [autotune] Autotune settings. See `autotune`.
  /// [config] Tuning job settings. See `config`.
  /// [name] Name of the tuning job.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to this resource.
  /// [timeouts] Optional.
  /// [trainingJobDefinition] Single training job definition for tuning. See `trainingJobDefinition`.
  /// [trainingJobDefinitions] Multiple training job definitions for tuning. See `trainingJobDefinition`.
  /// [warmStartConfig] Warm start settings. See `warmStartConfig`.
  const HyperParameterTuningJobArgs({
    this.autotune,
    required this.config,
    this.name,
    this.region,
    this.tags,
    this.timeouts,
    this.trainingJobDefinition,
    this.trainingJobDefinitions,
    this.warmStartConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autotune': ?pulumi.Input.mapOptionalInputValue<HyperParameterTuningJobAutotune, Map<String, dynamic>>(autotune, (value) => value.toMap()),
      'config': pulumi.Input.mapInputValue<HyperParameterTuningJobConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<HyperParameterTuningJobTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'trainingJobDefinition': ?pulumi.Input.mapOptionalInputValue<HyperParameterTuningJobTrainingJobDefinition, Map<String, dynamic>>(trainingJobDefinition, (value) => value.toMap()),
      'trainingJobDefinitions': ?pulumi.Input.mapOptionalInputValue<List<HyperParameterTuningJobTrainingJobDefinition>, List<Map<String, dynamic>>>(trainingJobDefinitions, (value) => pulumi.Input.encodeList<HyperParameterTuningJobTrainingJobDefinition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'warmStartConfig': ?pulumi.Input.mapOptionalInputValue<HyperParameterTuningJobWarmStartConfig, Map<String, dynamic>>(warmStartConfig, (value) => value.toMap()),
    };
  }

  factory HyperParameterTuningJobArgs.fromMap(Map<String, dynamic> map) {
    return HyperParameterTuningJobArgs(
      autotune: (() { final guardedValue = map['autotune']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HyperParameterTuningJobAutotune.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      config: pulumi.Input.fromValue(HyperParameterTuningJobConfig.fromMap((map['config']! as Map).cast<String, dynamic>())),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HyperParameterTuningJobTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      trainingJobDefinition: (() { final guardedValue = map['trainingJobDefinition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HyperParameterTuningJobTrainingJobDefinition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      trainingJobDefinitions: (() { final guardedValue = map['trainingJobDefinitions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HyperParameterTuningJobTrainingJobDefinition>(guardedValue, (value) => HyperParameterTuningJobTrainingJobDefinition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      warmStartConfig: (() { final guardedValue = map['warmStartConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HyperParameterTuningJobWarmStartConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
