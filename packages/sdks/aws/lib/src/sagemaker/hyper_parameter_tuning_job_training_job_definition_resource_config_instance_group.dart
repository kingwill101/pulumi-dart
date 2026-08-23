// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HyperParameterTuningJobTrainingJobDefinitionResourceConfigInstanceGroup {
  /// Number of instances in the group.
  final pulumi.Input<int> instanceCount;
  /// Name of the group.
  final pulumi.Input<String> instanceGroupName;
  /// Instance type.
  final pulumi.Input<String> instanceType;

  /// Creates a new [HyperParameterTuningJobTrainingJobDefinitionResourceConfigInstanceGroup].
  /// [instanceCount] Number of instances in the group.
  /// [instanceGroupName] Name of the group.
  /// [instanceType] Instance type.
  const HyperParameterTuningJobTrainingJobDefinitionResourceConfigInstanceGroup({
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

  factory HyperParameterTuningJobTrainingJobDefinitionResourceConfigInstanceGroup.fromMap(Map<String, dynamic> map) {
    return HyperParameterTuningJobTrainingJobDefinitionResourceConfigInstanceGroup(
      instanceCount: pulumi.Input.fromValue(map['instanceCount'] as int),
      instanceGroupName: pulumi.Input.fromValue(map['instanceGroupName'] as String),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
    );
  }
}
