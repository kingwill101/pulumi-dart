// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'algorithm_validation_specification_validation_profiles_training_job_definition.dart';
import 'algorithm_validation_specification_validation_profiles_transform_job_definition.dart';

class AlgorithmValidationSpecificationValidationProfiles {
  /// Profile name.
  final pulumi.Input<String> profileName;
  /// Training job definition used during validation. See Training Job Definition.
  final pulumi.Input<AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinition> trainingJobDefinition;
  /// Transform job definition used during validation. See Transform Job Definition.
  final pulumi.Input<AlgorithmValidationSpecificationValidationProfilesTransformJobDefinition>? transformJobDefinition;

  /// Creates a new [AlgorithmValidationSpecificationValidationProfiles].
  /// [profileName] Profile name.
  /// [trainingJobDefinition] Training job definition used during validation. See Training Job Definition.
  /// [transformJobDefinition] Transform job definition used during validation. See Transform Job Definition.
  const AlgorithmValidationSpecificationValidationProfiles({
    required this.profileName,
    required this.trainingJobDefinition,
    this.transformJobDefinition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'profileName': profileName,
      'trainingJobDefinition': pulumi.Input.mapInputValue<AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinition, Map<String, dynamic>>(trainingJobDefinition, (value) => value.toMap()),
      'transformJobDefinition': ?pulumi.Input.mapOptionalInputValue<AlgorithmValidationSpecificationValidationProfilesTransformJobDefinition, Map<String, dynamic>>(transformJobDefinition, (value) => value.toMap()),
    };
  }

  factory AlgorithmValidationSpecificationValidationProfiles.fromMap(Map<String, dynamic> map) {
    return AlgorithmValidationSpecificationValidationProfiles(
      profileName: pulumi.Input.fromValue(map['profileName'] as String),
      trainingJobDefinition: pulumi.Input.fromValue(AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinition.fromMap((map['trainingJobDefinition']! as Map).cast<String, dynamic>())),
      transformJobDefinition: (() { final guardedValue = map['transformJobDefinition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlgorithmValidationSpecificationValidationProfilesTransformJobDefinition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
