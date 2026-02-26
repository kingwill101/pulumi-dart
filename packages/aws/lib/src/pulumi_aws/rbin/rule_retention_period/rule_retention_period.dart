// ignore_for_file: unused_element, unnecessary_cast

class RuleRetentionPeriod {
  /// Unit of time in which the retention period is measured. Currently, only DAYS is supported.
  final String retentionPeriodUnit;

  /// Period value for which the retention rule is to retain resources. The period is measured using the unit specified for RetentionPeriodUnit.
  final int retentionPeriodValue;

  RuleRetentionPeriod({
    required this.retentionPeriodUnit,
    required this.retentionPeriodValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['retentionPeriodUnit'] = retentionPeriodUnit;
    map['retentionPeriodValue'] = retentionPeriodValue;
    return map;
  }

  factory RuleRetentionPeriod.fromMap(Map<String, dynamic> map) {
    return RuleRetentionPeriod(
      retentionPeriodUnit: map['retentionPeriodUnit'] as String,
      retentionPeriodValue: map['retentionPeriodValue'] as int,
    );
  }
}
