// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hyper_parameter_tuning_job_training_job_definition_resource_config_instance_group.dart';
import 'hyper_parameter_tuning_job_training_job_definition_resource_config_instance_placement_config.dart';

class HyperParameterTuningJobTrainingJobDefinitionResourceConfig {
  /// Number of instances.
  final pulumi.Input<int?>? instanceCount;
  /// Instance group settings. See `instanceGroups`.
  final pulumi.Input<List<HyperParameterTuningJobTrainingJobDefinitionResourceConfigInstanceGroup>?>? instanceGroups;
  /// Placement settings. See `instancePlacementConfig`.
  final pulumi.Input<HyperParameterTuningJobTrainingJobDefinitionResourceConfigInstancePlacementConfig?>? instancePlacementConfig;
  /// Instance type.
  final pulumi.Input<String?>? instanceType;
  /// Warm pool keep-alive period in seconds.
  final pulumi.Input<int?>? keepAlivePeriodInSeconds;
  /// Training plan ARN.
  final pulumi.Input<String?>? trainingPlanArn;
  /// KMS key ID for volume encryption.
  final pulumi.Input<String?>? volumeKmsKeyId;
  /// Volume size in GB.
  final pulumi.Input<int?>? volumeSizeInGb;

  /// Creates a new [HyperParameterTuningJobTrainingJobDefinitionResourceConfig].
  /// [instanceCount] Number of instances.
  /// [instanceGroups] Instance group settings. See `instanceGroups`.
  /// [instancePlacementConfig] Placement settings. See `instancePlacementConfig`.
  /// [instanceType] Instance type.
  /// [keepAlivePeriodInSeconds] Warm pool keep-alive period in seconds.
  /// [trainingPlanArn] Training plan ARN.
  /// [volumeKmsKeyId] KMS key ID for volume encryption.
  /// [volumeSizeInGb] Volume size in GB.
  const HyperParameterTuningJobTrainingJobDefinitionResourceConfig({
    this.instanceCount,
    this.instanceGroups,
    this.instancePlacementConfig,
    this.instanceType,
    this.keepAlivePeriodInSeconds,
    this.trainingPlanArn,
    this.volumeKmsKeyId,
    this.volumeSizeInGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceCount': ?instanceCount,
      'instanceGroups': ?pulumi.Input.mapOptionalInputValue<List<HyperParameterTuningJobTrainingJobDefinitionResourceConfigInstanceGroup>, List<Map<String, dynamic>>>(instanceGroups, (value) => pulumi.Input.encodeList<HyperParameterTuningJobTrainingJobDefinitionResourceConfigInstanceGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instancePlacementConfig': ?pulumi.Input.mapOptionalInputValue<HyperParameterTuningJobTrainingJobDefinitionResourceConfigInstancePlacementConfig, Map<String, dynamic>>(instancePlacementConfig, (value) => value.toMap()),
      'instanceType': ?instanceType,
      'keepAlivePeriodInSeconds': ?keepAlivePeriodInSeconds,
      'trainingPlanArn': ?trainingPlanArn,
      'volumeKmsKeyId': ?volumeKmsKeyId,
      'volumeSizeInGb': ?volumeSizeInGb,
    };
  }

  factory HyperParameterTuningJobTrainingJobDefinitionResourceConfig.fromMap(Map<String, dynamic> map) {
    return HyperParameterTuningJobTrainingJobDefinitionResourceConfig(
      instanceCount: (() { final guardedValue = map['instanceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      instanceGroups: (() { final guardedValue = map['instanceGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HyperParameterTuningJobTrainingJobDefinitionResourceConfigInstanceGroup>(guardedValue, (value) => HyperParameterTuningJobTrainingJobDefinitionResourceConfigInstanceGroup.fromMap((value as Map).cast<String, dynamic>()))); })(),
      instancePlacementConfig: (() { final guardedValue = map['instancePlacementConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HyperParameterTuningJobTrainingJobDefinitionResourceConfigInstancePlacementConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keepAlivePeriodInSeconds: (() { final guardedValue = map['keepAlivePeriodInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      trainingPlanArn: (() { final guardedValue = map['trainingPlanArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeKmsKeyId: (() { final guardedValue = map['volumeKmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeSizeInGb: (() { final guardedValue = map['volumeSizeInGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
