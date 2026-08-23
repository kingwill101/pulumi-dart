// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'algorithm_validation_specification_validation_profiles.dart';

class AlgorithmValidationSpecification {
  /// Validation profiles for the algorithm. See Validation Profiles.
  final pulumi.Input<AlgorithmValidationSpecificationValidationProfiles> validationProfiles;
  /// IAM role ARN used for validation.
  final pulumi.Input<String> validationRole;

  /// Creates a new [AlgorithmValidationSpecification].
  /// [validationProfiles] Validation profiles for the algorithm. See Validation Profiles.
  /// [validationRole] IAM role ARN used for validation.
  const AlgorithmValidationSpecification({
    required this.validationProfiles,
    required this.validationRole,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'validationProfiles': pulumi.Input.mapInputValue<AlgorithmValidationSpecificationValidationProfiles, Map<String, dynamic>>(validationProfiles, (value) => value.toMap()),
      'validationRole': validationRole,
    };
  }

  factory AlgorithmValidationSpecification.fromMap(Map<String, dynamic> map) {
    return AlgorithmValidationSpecification(
      validationProfiles: pulumi.Input.fromValue(AlgorithmValidationSpecificationValidationProfiles.fromMap((map['validationProfiles']! as Map).cast<String, dynamic>())),
      validationRole: pulumi.Input.fromValue(map['validationRole'] as String),
    );
  }
}
