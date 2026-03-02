// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleRetentionPeriod {
  /// Unit of time in which the retention period is measured. Currently, only DAYS is supported.
  final pulumi.Input<String> retentionPeriodUnit;
  /// Period value for which the retention rule is to retain resources. The period is measured using the unit specified for RetentionPeriodUnit.
  final pulumi.Input<int> retentionPeriodValue;

  /// Creates a new [RuleRetentionPeriod].
  /// [retentionPeriodUnit] Unit of time in which the retention period is measured. Currently, only DAYS is supported.
  /// [retentionPeriodValue] Period value for which the retention rule is to retain resources. The period is measured using the unit specified for RetentionPeriodUnit.
  RuleRetentionPeriod({
    required this.retentionPeriodUnit,
    required this.retentionPeriodValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionPeriodUnit': retentionPeriodUnit,
      'retentionPeriodValue': retentionPeriodValue,
    };
  }

  factory RuleRetentionPeriod.fromMap(Map<String, dynamic> map) {
    return RuleRetentionPeriod(
      retentionPeriodUnit: (map['retentionPeriodUnit'] as String).input(),
      retentionPeriodValue: (map['retentionPeriodValue'] as int).input(),
    );
  }
}

