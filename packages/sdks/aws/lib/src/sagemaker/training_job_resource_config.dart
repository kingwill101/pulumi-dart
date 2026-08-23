// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'training_job_resource_config_instance_group.dart';
import 'training_job_resource_config_instance_placement_config.dart';

class TrainingJobResourceConfig {
  /// Number of ML compute instances to use. Conflicts with `instanceGroups`.
  final pulumi.Input<int>? instanceCount;
  /// List of instance groups for heterogeneous cluster training. Maximum of 5. Conflicts with `instanceCount`, `instanceType`, and `keepAlivePeriodInSeconds`. See `instanceGroups` below.
  final pulumi.Input<List<TrainingJobResourceConfigInstanceGroup>>? instanceGroups;
  /// Instance placement configuration. See `instancePlacementConfig` below.
  final pulumi.Input<TrainingJobResourceConfigInstancePlacementConfig>? instancePlacementConfig;
  /// ML compute instance type. Conflicts with `instanceGroups`.
  final pulumi.Input<String>? instanceType;
  /// Time in seconds to keep instances alive after training completes, for warm pool reuse. Valid values: 0–3600. Conflicts with `instanceGroups`.
  final pulumi.Input<int>? keepAlivePeriodInSeconds;
  /// ARN of the training plan to use.
  final pulumi.Input<String>? trainingPlanArn;
  /// KMS key ID used to encrypt data on the storage volume.
  final pulumi.Input<String>? volumeKmsKeyId;
  /// Size of the storage volume attached to each instance, in GB.
  final pulumi.Input<int>? volumeSizeInGb;

  /// Creates a new [TrainingJobResourceConfig].
  /// [instanceCount] Number of ML compute instances to use. Conflicts with `instanceGroups`.
  /// [instanceGroups] List of instance groups for heterogeneous cluster training. Maximum of 5. Conflicts with `instanceCount`, `instanceType`, and `keepAlivePeriodInSeconds`. See `instanceGroups` below.
  /// [instancePlacementConfig] Instance placement configuration. See `instancePlacementConfig` below.
  /// [instanceType] ML compute instance type. Conflicts with `instanceGroups`.
  /// [keepAlivePeriodInSeconds] Time in seconds to keep instances alive after training completes, for warm pool reuse. Valid values: 0–3600. Conflicts with `instanceGroups`.
  /// [trainingPlanArn] ARN of the training plan to use.
  /// [volumeKmsKeyId] KMS key ID used to encrypt data on the storage volume.
  /// [volumeSizeInGb] Size of the storage volume attached to each instance, in GB.
  const TrainingJobResourceConfig({
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
      'instanceGroups': ?pulumi.Input.mapOptionalInputValue<List<TrainingJobResourceConfigInstanceGroup>, List<Map<String, dynamic>>>(instanceGroups, (value) => pulumi.Input.encodeList<TrainingJobResourceConfigInstanceGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instancePlacementConfig': ?pulumi.Input.mapOptionalInputValue<TrainingJobResourceConfigInstancePlacementConfig, Map<String, dynamic>>(instancePlacementConfig, (value) => value.toMap()),
      'instanceType': ?instanceType,
      'keepAlivePeriodInSeconds': ?keepAlivePeriodInSeconds,
      'trainingPlanArn': ?trainingPlanArn,
      'volumeKmsKeyId': ?volumeKmsKeyId,
      'volumeSizeInGb': ?volumeSizeInGb,
    };
  }

  factory TrainingJobResourceConfig.fromMap(Map<String, dynamic> map) {
    return TrainingJobResourceConfig(
      instanceCount: (() { final guardedValue = map['instanceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      instanceGroups: (() { final guardedValue = map['instanceGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TrainingJobResourceConfigInstanceGroup>(guardedValue, (value) => TrainingJobResourceConfigInstanceGroup.fromMap((value as Map).cast<String, dynamic>()))); })(),
      instancePlacementConfig: (() { final guardedValue = map['instancePlacementConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrainingJobResourceConfigInstancePlacementConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keepAlivePeriodInSeconds: (() { final guardedValue = map['keepAlivePeriodInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      trainingPlanArn: (() { final guardedValue = map['trainingPlanArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeKmsKeyId: (() { final guardedValue = map['volumeKmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeSizeInGb: (() { final guardedValue = map['volumeSizeInGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
