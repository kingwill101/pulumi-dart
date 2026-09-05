// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'algorithm_validation_specification_validation_profiles_training_job_definition_resource_config_instance_group.dart';
import 'algorithm_validation_specification_validation_profiles_training_job_definition_resource_config_instance_placement_config.dart';

class AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionResourceConfig {
  /// Number of training instances.
  final pulumi.Input<int?>? instanceCount;
  /// Instance group definitions for the training job. See Instance Groups.
  final pulumi.Input<List<AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionResourceConfigInstanceGroup>?>? instanceGroups;
  /// Placement configuration for the training job. See Instance Placement Config.
  final pulumi.Input<AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionResourceConfigInstancePlacementConfig?>? instancePlacementConfig;
  /// Training instance type.
  final pulumi.Input<String?>? instanceType;
  /// Warm pool keep-alive period in seconds.
  final pulumi.Input<int?>? keepAlivePeriodInSeconds;
  /// ARN of the SageMaker AI training plan.
  final pulumi.Input<String?>? trainingPlanArn;
  /// KMS key ID used to encrypt the training volume.
  final pulumi.Input<String?>? volumeKmsKeyId;
  /// Size of the training volume in GiB.
  final pulumi.Input<int?>? volumeSizeInGb;

  /// Creates a new [AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionResourceConfig].
  /// [instanceCount] Number of training instances.
  /// [instanceGroups] Instance group definitions for the training job. See Instance Groups.
  /// [instancePlacementConfig] Placement configuration for the training job. See Instance Placement Config.
  /// [instanceType] Training instance type.
  /// [keepAlivePeriodInSeconds] Warm pool keep-alive period in seconds.
  /// [trainingPlanArn] ARN of the SageMaker AI training plan.
  /// [volumeKmsKeyId] KMS key ID used to encrypt the training volume.
  /// [volumeSizeInGb] Size of the training volume in GiB.
  const AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionResourceConfig({
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
      'instanceGroups': ?pulumi.Input.mapOptionalInputValue<List<AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionResourceConfigInstanceGroup>, List<Map<String, dynamic>>>(instanceGroups, (value) => pulumi.Input.encodeList<AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionResourceConfigInstanceGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instancePlacementConfig': ?pulumi.Input.mapOptionalInputValue<AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionResourceConfigInstancePlacementConfig, Map<String, dynamic>>(instancePlacementConfig, (value) => value.toMap()),
      'instanceType': ?instanceType,
      'keepAlivePeriodInSeconds': ?keepAlivePeriodInSeconds,
      'trainingPlanArn': ?trainingPlanArn,
      'volumeKmsKeyId': ?volumeKmsKeyId,
      'volumeSizeInGb': ?volumeSizeInGb,
    };
  }

  factory AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionResourceConfig.fromMap(Map<String, dynamic> map) {
    return AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionResourceConfig(
      instanceCount: (() { final guardedValue = map['instanceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      instanceGroups: (() { final guardedValue = map['instanceGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionResourceConfigInstanceGroup>(guardedValue, (value) => AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionResourceConfigInstanceGroup.fromMap((value as Map).cast<String, dynamic>()))); })(),
      instancePlacementConfig: (() { final guardedValue = map['instancePlacementConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionResourceConfigInstancePlacementConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keepAlivePeriodInSeconds: (() { final guardedValue = map['keepAlivePeriodInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      trainingPlanArn: (() { final guardedValue = map['trainingPlanArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeKmsKeyId: (() { final guardedValue = map['volumeKmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeSizeInGb: (() { final guardedValue = map['volumeSizeInGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
