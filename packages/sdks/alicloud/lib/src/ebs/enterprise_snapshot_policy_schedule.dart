// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnterpriseSnapshotPolicySchedule {
  /// CronTab expression.
  final pulumi.Input<String> cronExpression;

  /// Creates a new [EnterpriseSnapshotPolicySchedule].
  /// [cronExpression] CronTab expression.
  const EnterpriseSnapshotPolicySchedule({
    required this.cronExpression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cronExpression': cronExpression,
    };
  }

  factory EnterpriseSnapshotPolicySchedule.fromMap(Map<String, dynamic> map) {
    return EnterpriseSnapshotPolicySchedule(
      cronExpression: pulumi.Input.fromValue(map['cronExpression'] as String),
    );
  }
}

