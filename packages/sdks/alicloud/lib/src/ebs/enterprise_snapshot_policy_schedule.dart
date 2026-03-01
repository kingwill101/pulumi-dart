// ignore_for_file: unused_element, unnecessary_cast


class EnterpriseSnapshotPolicySchedule {
  /// CronTab expression.
  final String cronExpression;

  /// Creates a new [EnterpriseSnapshotPolicySchedule].
  /// [cronExpression] CronTab expression.
  EnterpriseSnapshotPolicySchedule({
    required this.cronExpression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cronExpression': cronExpression,
    };
  }

  factory EnterpriseSnapshotPolicySchedule.fromMap(Map<String, dynamic> map) {
    return EnterpriseSnapshotPolicySchedule(
      cronExpression: map['cronExpression'] as String,
    );
  }
}

