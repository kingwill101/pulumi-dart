// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGroupInstanceMaintenancePolicy {
  /// Upper limit on the number of instances that are in the InService or Pending state with a healthy status during an instance replacement activity.
  final pulumi.Input<int> maxHealthyPercentage;
  /// Lower limit on the number of instances that must be in the InService state with a healthy status during an instance replacement activity.
  final pulumi.Input<int> minHealthyPercentage;

  /// Creates a new [GetGroupInstanceMaintenancePolicy].
  /// [maxHealthyPercentage] Upper limit on the number of instances that are in the InService or Pending state with a healthy status during an instance replacement activity.
  /// [minHealthyPercentage] Lower limit on the number of instances that must be in the InService state with a healthy status during an instance replacement activity.
  const GetGroupInstanceMaintenancePolicy({
    required this.maxHealthyPercentage,
    required this.minHealthyPercentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxHealthyPercentage': maxHealthyPercentage,
      'minHealthyPercentage': minHealthyPercentage,
    };
  }

  factory GetGroupInstanceMaintenancePolicy.fromMap(Map<String, dynamic> map) {
    return GetGroupInstanceMaintenancePolicy(
      maxHealthyPercentage: pulumi.Input.fromValue(map['maxHealthyPercentage'] as int),
      minHealthyPercentage: pulumi.Input.fromValue(map['minHealthyPercentage'] as int),
    );
  }
}
