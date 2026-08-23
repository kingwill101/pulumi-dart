// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hyper_parameter_tuning_job_training_job_definition_resource_config_instance_placement_config_placement_specification.dart';

class HyperParameterTuningJobTrainingJobDefinitionResourceConfigInstancePlacementConfig {
  /// Whether to run multiple jobs on shared infrastructure.
  final pulumi.Input<bool>? enableMultipleJobs;
  /// Placement details. See `placementSpecifications`.
  final pulumi.Input<List<HyperParameterTuningJobTrainingJobDefinitionResourceConfigInstancePlacementConfigPlacementSpecification>>? placementSpecifications;

  /// Creates a new [HyperParameterTuningJobTrainingJobDefinitionResourceConfigInstancePlacementConfig].
  /// [enableMultipleJobs] Whether to run multiple jobs on shared infrastructure.
  /// [placementSpecifications] Placement details. See `placementSpecifications`.
  const HyperParameterTuningJobTrainingJobDefinitionResourceConfigInstancePlacementConfig({
    this.enableMultipleJobs,
    this.placementSpecifications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableMultipleJobs': ?enableMultipleJobs,
      'placementSpecifications': ?pulumi.Input.mapOptionalInputValue<List<HyperParameterTuningJobTrainingJobDefinitionResourceConfigInstancePlacementConfigPlacementSpecification>, List<Map<String, dynamic>>>(placementSpecifications, (value) => pulumi.Input.encodeList<HyperParameterTuningJobTrainingJobDefinitionResourceConfigInstancePlacementConfigPlacementSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory HyperParameterTuningJobTrainingJobDefinitionResourceConfigInstancePlacementConfig.fromMap(Map<String, dynamic> map) {
    return HyperParameterTuningJobTrainingJobDefinitionResourceConfigInstancePlacementConfig(
      enableMultipleJobs: (() { final guardedValue = map['enableMultipleJobs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      placementSpecifications: (() { final guardedValue = map['placementSpecifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HyperParameterTuningJobTrainingJobDefinitionResourceConfigInstancePlacementConfigPlacementSpecification>(guardedValue, (value) => HyperParameterTuningJobTrainingJobDefinitionResourceConfigInstancePlacementConfigPlacementSpecification.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
