// ignore_for_file: unused_element, unnecessary_cast

class GetGroupInstanceMaintenancePolicy {
  /// Specifies the upper limit on the number of instances that are in the InService or Pending state with a healthy status during an instance replacement activity.
  final int maxHealthyPercentage;

  /// Specifies the lower limit on the number of instances that must be in the InService state with a healthy status during an instance replacement activity.
  final int minHealthyPercentage;

  /// Creates a new [GetGroupInstanceMaintenancePolicy].
  /// [maxHealthyPercentage] Specifies the upper limit on the number of instances that are in the InService or Pending state with a healthy status during an instance replacement activity.
  /// [minHealthyPercentage] Specifies the lower limit on the number of instances that must be in the InService state with a healthy status during an instance replacement activity.
  GetGroupInstanceMaintenancePolicy({
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
      maxHealthyPercentage: map['maxHealthyPercentage'] as int,
      minHealthyPercentage: map['minHealthyPercentage'] as int,
    );
  }
}
