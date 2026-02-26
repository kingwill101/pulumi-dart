// ignore_for_file: unused_element, unnecessary_cast

class DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindowEndDate {
  /// Day of a month. Must be from 1 to 31 and valid for the year and month.
  final int? day;

  /// Month of a year. Must be from 1 to 12.
  final int? month;

  /// Year of the date. Must be from 1 to 9999.
  final int? year;

  DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindowEndDate({
    this.day,
    this.month,
    this.year,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dayValue = day;
    if (dayValue != null) {
      map['day'] = dayValue;
    }
    final monthValue = month;
    if (monthValue != null) {
      map['month'] = monthValue;
    }
    final yearValue = year;
    if (yearValue != null) {
      map['year'] = yearValue;
    }
    return map;
  }

  factory DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindowEndDate.fromMap(
      Map<String, dynamic> map) {
    return DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindowEndDate(
      day: map['day'] == null ? null : map['day'] as int,
      month: map['month'] == null ? null : map['month'] as int,
      year: map['year'] == null ? null : map['year'] as int,
    );
  }
}
