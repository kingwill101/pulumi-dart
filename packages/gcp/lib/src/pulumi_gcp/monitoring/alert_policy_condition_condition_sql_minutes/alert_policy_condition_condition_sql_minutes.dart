// ignore_for_file: unused_element, unnecessary_cast

class AlertPolicyConditionConditionSqlMinutes {
  /// Number of minutes between runs. The interval must be greater than or
  /// equal to 5 minutes and less than or equal to 1440 minutes.
  final int periodicity;

  AlertPolicyConditionConditionSqlMinutes({
    required this.periodicity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['periodicity'] = periodicity;
    return map;
  }

  factory AlertPolicyConditionConditionSqlMinutes.fromMap(
      Map<String, dynamic> map) {
    return AlertPolicyConditionConditionSqlMinutes(
      periodicity: map['periodicity'] as int,
    );
  }
}
