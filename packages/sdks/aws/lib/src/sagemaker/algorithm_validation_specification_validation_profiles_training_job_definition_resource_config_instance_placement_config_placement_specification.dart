// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionResourceConfigInstancePlacementConfigPlacementSpecification {
  /// Number of instances for the placement specification.
  final pulumi.Input<int> instanceCount;
  /// Ultra server ID.
  final pulumi.Input<String?>? ultraServerId;

  /// Creates a new [AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionResourceConfigInstancePlacementConfigPlacementSpecification].
  /// [instanceCount] Number of instances for the placement specification.
  /// [ultraServerId] Ultra server ID.
  const AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionResourceConfigInstancePlacementConfigPlacementSpecification({
    required this.instanceCount,
    this.ultraServerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceCount': instanceCount,
      'ultraServerId': ?ultraServerId,
    };
  }

  factory AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionResourceConfigInstancePlacementConfigPlacementSpecification.fromMap(Map<String, dynamic> map) {
    return AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionResourceConfigInstancePlacementConfigPlacementSpecification(
      instanceCount: pulumi.Input.fromValue((map['instanceCount'] as num).toInt()),
      ultraServerId: (() { final guardedValue = map['ultraServerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
