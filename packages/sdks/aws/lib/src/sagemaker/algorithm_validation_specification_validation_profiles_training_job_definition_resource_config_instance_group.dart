// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionResourceConfigInstanceGroup {
  /// Number of instances in the group.
  final pulumi.Input<int> instanceCount;
  /// Name of the instance group.
  final pulumi.Input<String> instanceGroupName;
  /// Instance type for the group.
  final pulumi.Input<String> instanceType;

  /// Creates a new [AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionResourceConfigInstanceGroup].
  /// [instanceCount] Number of instances in the group.
  /// [instanceGroupName] Name of the instance group.
  /// [instanceType] Instance type for the group.
  const AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionResourceConfigInstanceGroup({
    required this.instanceCount,
    required this.instanceGroupName,
    required this.instanceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceCount': instanceCount,
      'instanceGroupName': instanceGroupName,
      'instanceType': instanceType,
    };
  }

  factory AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionResourceConfigInstanceGroup.fromMap(Map<String, dynamic> map) {
    return AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionResourceConfigInstanceGroup(
      instanceCount: pulumi.Input.fromValue((map['instanceCount'] as num).toInt()),
      instanceGroupName: pulumi.Input.fromValue(map['instanceGroupName'] as String),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
    );
  }
}
