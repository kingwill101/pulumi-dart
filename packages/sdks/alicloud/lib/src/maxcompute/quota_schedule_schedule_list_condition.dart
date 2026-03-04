// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class QuotaScheduleScheduleListCondition {
  /// Effective time. The format is HH:mm, sample value: 00:00
  ///
  /// &gt; **NOTE:** The configuration must start from the effective time of 00:00. The input time must be either a whole hour or a half hour, and the minimum interval between each schedule is 30 minutes.
  final pulumi.Input<String> at;

  /// Creates a new [QuotaScheduleScheduleListCondition].
  /// [at] Effective time. The format is HH:mm, sample value: 00:00
  QuotaScheduleScheduleListCondition({required this.at});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'at': at};
  }

  factory QuotaScheduleScheduleListCondition.fromMap(Map<String, dynamic> map) {
    return QuotaScheduleScheduleListCondition(
      at: pulumi.Input.fromValue(map['at'] as String),
    );
  }
}
