// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GroupInstanceMaintenancePolicy {
  /// Specifies the upper limit on the number of instances that are in the InService or Pending state with a healthy status during an instance replacement activity.
  final pulumi.Input<int> maxHealthyPercentage;
  /// Specifies the lower limit on the number of instances that must be in the InService state with a healthy status during an instance replacement activity.
  final pulumi.Input<int> minHealthyPercentage;

  /// Creates a new [GroupInstanceMaintenancePolicy].
  /// [maxHealthyPercentage] Specifies the upper limit on the number of instances that are in the InService or Pending state with a healthy status during an instance replacement activity.
  /// [minHealthyPercentage] Specifies the lower limit on the number of instances that must be in the InService state with a healthy status during an instance replacement activity.
  const GroupInstanceMaintenancePolicy({
    required this.maxHealthyPercentage,
    required this.minHealthyPercentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxHealthyPercentage': maxHealthyPercentage,
      'minHealthyPercentage': minHealthyPercentage,
    };
  }

  factory GroupInstanceMaintenancePolicy.fromMap(Map<String, dynamic> map) {
    return GroupInstanceMaintenancePolicy(
      maxHealthyPercentage: pulumi.Input.fromValue((map['maxHealthyPercentage'] as num).toInt()),
      minHealthyPercentage: pulumi.Input.fromValue((map['minHealthyPercentage'] as num).toInt()),
    );
  }
}
