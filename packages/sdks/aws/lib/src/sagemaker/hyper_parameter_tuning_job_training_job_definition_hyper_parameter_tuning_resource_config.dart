// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hyper_parameter_tuning_job_training_job_definition_hyper_parameter_tuning_resource_config_instance_config.dart';

class HyperParameterTuningJobTrainingJobDefinitionHyperParameterTuningResourceConfig {
  /// Allocation strategy for tuning resources.
  final pulumi.Input<String?>? allocationStrategy;
  /// Per-instance-type resource settings. See `instanceConfigs`.
  final pulumi.Input<List<HyperParameterTuningJobTrainingJobDefinitionHyperParameterTuningResourceConfigInstanceConfig>?>? instanceConfigs;
  /// Number of training instances.
  final pulumi.Input<int?>? instanceCount;
  /// Training instance type.
  final pulumi.Input<String?>? instanceType;
  /// KMS key ID for volume encryption.
  final pulumi.Input<String?>? volumeKmsKeyId;
  /// Volume size in GB.
  ///
  /// Do not set `instanceCount`, `instanceType`, or `volumeSizeInGb` when `instanceConfigs` is set.
  final pulumi.Input<int?>? volumeSizeInGb;

  /// Creates a new [HyperParameterTuningJobTrainingJobDefinitionHyperParameterTuningResourceConfig].
  /// [allocationStrategy] Allocation strategy for tuning resources.
  /// [instanceConfigs] Per-instance-type resource settings. See `instanceConfigs`.
  /// [instanceCount] Number of training instances.
  /// [instanceType] Training instance type.
  /// [volumeKmsKeyId] KMS key ID for volume encryption.
  /// [volumeSizeInGb] Volume size in GB.
  const HyperParameterTuningJobTrainingJobDefinitionHyperParameterTuningResourceConfig({
    this.allocationStrategy,
    this.instanceConfigs,
    this.instanceCount,
    this.instanceType,
    this.volumeKmsKeyId,
    this.volumeSizeInGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationStrategy': ?allocationStrategy,
      'instanceConfigs': ?pulumi.Input.mapOptionalInputValue<List<HyperParameterTuningJobTrainingJobDefinitionHyperParameterTuningResourceConfigInstanceConfig>, List<Map<String, dynamic>>>(instanceConfigs, (value) => pulumi.Input.encodeList<HyperParameterTuningJobTrainingJobDefinitionHyperParameterTuningResourceConfigInstanceConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceCount': ?instanceCount,
      'instanceType': ?instanceType,
      'volumeKmsKeyId': ?volumeKmsKeyId,
      'volumeSizeInGb': ?volumeSizeInGb,
    };
  }

  factory HyperParameterTuningJobTrainingJobDefinitionHyperParameterTuningResourceConfig.fromMap(Map<String, dynamic> map) {
    return HyperParameterTuningJobTrainingJobDefinitionHyperParameterTuningResourceConfig(
      allocationStrategy: (() { final guardedValue = map['allocationStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceConfigs: (() { final guardedValue = map['instanceConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HyperParameterTuningJobTrainingJobDefinitionHyperParameterTuningResourceConfigInstanceConfig>(guardedValue, (value) => HyperParameterTuningJobTrainingJobDefinitionHyperParameterTuningResourceConfigInstanceConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      instanceCount: (() { final guardedValue = map['instanceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeKmsKeyId: (() { final guardedValue = map['volumeKmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeSizeInGb: (() { final guardedValue = map['volumeSizeInGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
