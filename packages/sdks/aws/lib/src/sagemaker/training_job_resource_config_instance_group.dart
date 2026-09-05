// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TrainingJobResourceConfigInstanceGroup {
  /// Number of instances in the group.
  final pulumi.Input<int?>? instanceCount;
  /// Name of the instance group.
  final pulumi.Input<String?>? instanceGroupName;
  /// ML compute instance type for the group.
  final pulumi.Input<String?>? instanceType;

  /// Creates a new [TrainingJobResourceConfigInstanceGroup].
  /// [instanceCount] Number of instances in the group.
  /// [instanceGroupName] Name of the instance group.
  /// [instanceType] ML compute instance type for the group.
  const TrainingJobResourceConfigInstanceGroup({
    this.instanceCount,
    this.instanceGroupName,
    this.instanceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceCount': ?instanceCount,
      'instanceGroupName': ?instanceGroupName,
      'instanceType': ?instanceType,
    };
  }

  factory TrainingJobResourceConfigInstanceGroup.fromMap(Map<String, dynamic> map) {
    return TrainingJobResourceConfigInstanceGroup(
      instanceCount: (() { final guardedValue = map['instanceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      instanceGroupName: (() { final guardedValue = map['instanceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
