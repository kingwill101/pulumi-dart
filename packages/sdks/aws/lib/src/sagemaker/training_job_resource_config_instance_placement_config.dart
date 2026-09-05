// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'training_job_resource_config_instance_placement_config_placement_specification.dart';

class TrainingJobResourceConfigInstancePlacementConfig {
  /// Whether to enable multiple jobs on the same instance.
  final pulumi.Input<bool?>? enableMultipleJobs;
  /// Placement specifications for instance placement. See `placementSpecifications` below.
  final pulumi.Input<List<TrainingJobResourceConfigInstancePlacementConfigPlacementSpecification>?>? placementSpecifications;

  /// Creates a new [TrainingJobResourceConfigInstancePlacementConfig].
  /// [enableMultipleJobs] Whether to enable multiple jobs on the same instance.
  /// [placementSpecifications] Placement specifications for instance placement. See `placementSpecifications` below.
  const TrainingJobResourceConfigInstancePlacementConfig({
    this.enableMultipleJobs,
    this.placementSpecifications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableMultipleJobs': ?enableMultipleJobs,
      'placementSpecifications': ?pulumi.Input.mapOptionalInputValue<List<TrainingJobResourceConfigInstancePlacementConfigPlacementSpecification>, List<Map<String, dynamic>>>(placementSpecifications, (value) => pulumi.Input.encodeList<TrainingJobResourceConfigInstancePlacementConfigPlacementSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TrainingJobResourceConfigInstancePlacementConfig.fromMap(Map<String, dynamic> map) {
    return TrainingJobResourceConfigInstancePlacementConfig(
      enableMultipleJobs: (() { final guardedValue = map['enableMultipleJobs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      placementSpecifications: (() { final guardedValue = map['placementSpecifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TrainingJobResourceConfigInstancePlacementConfigPlacementSpecification>(guardedValue, (value) => TrainingJobResourceConfigInstancePlacementConfigPlacementSpecification.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
