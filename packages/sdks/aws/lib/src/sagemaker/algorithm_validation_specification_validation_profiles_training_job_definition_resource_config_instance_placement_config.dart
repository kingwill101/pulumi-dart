// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'algorithm_validation_specification_validation_profiles_training_job_definition_resource_config_instance_placement_config_placement_specification.dart';

class AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionResourceConfigInstancePlacementConfig {
  /// Whether multiple jobs can share the placement configuration.
  final pulumi.Input<bool?>? enableMultipleJobs;
  /// Placement specifications for ultra servers. See Placement Specifications.
  final pulumi.Input<List<AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionResourceConfigInstancePlacementConfigPlacementSpecification>?>? placementSpecifications;

  /// Creates a new [AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionResourceConfigInstancePlacementConfig].
  /// [enableMultipleJobs] Whether multiple jobs can share the placement configuration.
  /// [placementSpecifications] Placement specifications for ultra servers. See Placement Specifications.
  const AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionResourceConfigInstancePlacementConfig({
    this.enableMultipleJobs,
    this.placementSpecifications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableMultipleJobs': ?enableMultipleJobs,
      'placementSpecifications': ?pulumi.Input.mapOptionalInputValue<List<AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionResourceConfigInstancePlacementConfigPlacementSpecification>, List<Map<String, dynamic>>>(placementSpecifications, (value) => pulumi.Input.encodeList<AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionResourceConfigInstancePlacementConfigPlacementSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionResourceConfigInstancePlacementConfig.fromMap(Map<String, dynamic> map) {
    return AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionResourceConfigInstancePlacementConfig(
      enableMultipleJobs: (() { final guardedValue = map['enableMultipleJobs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      placementSpecifications: (() { final guardedValue = map['placementSpecifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionResourceConfigInstancePlacementConfigPlacementSpecification>(guardedValue, (value) => AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionResourceConfigInstancePlacementConfigPlacementSpecification.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
