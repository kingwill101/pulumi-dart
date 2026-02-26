// ignore_for_file: unused_element, unnecessary_cast

class AlertPolicyConditionConditionSqlHourly {
  /// The number of minutes after the hour (in UTC) to run the query.
  /// Must be greater than or equal to 0 minutes and less than or equal to
  /// 59 minutes.  If left unspecified, then an arbitrary offset is used.
  final int? minuteOffset;

  /// Number of hours between runs. The interval must be greater than or
  /// equal to 1 hour and less than or equal to 48 hours.
  final int periodicity;

  AlertPolicyConditionConditionSqlHourly({
    this.minuteOffset,
    required this.periodicity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final minuteOffsetValue = minuteOffset;
    if (minuteOffsetValue != null) {
      map['minuteOffset'] = minuteOffsetValue;
    }
    map['periodicity'] = periodicity;
    return map;
  }

  factory AlertPolicyConditionConditionSqlHourly.fromMap(
      Map<String, dynamic> map) {
    return AlertPolicyConditionConditionSqlHourly(
      minuteOffset:
          map['minuteOffset'] == null ? null : map['minuteOffset'] as int,
      periodicity: map['periodicity'] as int,
    );
  }
}
