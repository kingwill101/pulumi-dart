// ignore_for_file: unused_element, unnecessary_cast

class GroupInstanceMaintenancePolicy {
  /// Specifies the upper limit on the number of instances that are in the InService or Pending state with a healthy status during an instance replacement activity.
  final int maxHealthyPercentage;

  /// Specifies the lower limit on the number of instances that must be in the InService state with a healthy status during an instance replacement activity.
  final int minHealthyPercentage;

  GroupInstanceMaintenancePolicy({
    required this.maxHealthyPercentage,
    required this.minHealthyPercentage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxHealthyPercentage'] = maxHealthyPercentage;
    map['minHealthyPercentage'] = minHealthyPercentage;
    return map;
  }

  factory GroupInstanceMaintenancePolicy.fromMap(Map<String, dynamic> map) {
    return GroupInstanceMaintenancePolicy(
      maxHealthyPercentage: map['maxHealthyPercentage'] as int,
      minHealthyPercentage: map['minHealthyPercentage'] as int,
    );
  }
}
