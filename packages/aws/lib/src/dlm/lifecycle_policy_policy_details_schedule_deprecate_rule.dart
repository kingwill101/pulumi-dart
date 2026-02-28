// ignore_for_file: unused_element, unnecessary_cast

class LifecyclePolicyPolicyDetailsScheduleDeprecateRule {
  final int? count;
  final int? interval;
  final String? intervalUnit;

  /// Creates a new [LifecyclePolicyPolicyDetailsScheduleDeprecateRule].
  /// [count] Optional.
  /// [interval] Optional.
  /// [intervalUnit] Optional.
  LifecyclePolicyPolicyDetailsScheduleDeprecateRule({
    this.count,
    this.interval,
    this.intervalUnit,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final countValue = count;
    if (countValue != null) {
      map['count'] = countValue;
    }
    final intervalValue = interval;
    if (intervalValue != null) {
      map['interval'] = intervalValue;
    }
    final intervalUnitValue = intervalUnit;
    if (intervalUnitValue != null) {
      map['intervalUnit'] = intervalUnitValue;
    }
    return map;
  }

  factory LifecyclePolicyPolicyDetailsScheduleDeprecateRule.fromMap(
      Map<String, dynamic> map) {
    return LifecyclePolicyPolicyDetailsScheduleDeprecateRule(
      count: map['count'] == null ? null : map['count'] as int,
      interval: map['interval'] == null ? null : map['interval'] as int,
      intervalUnit:
          map['intervalUnit'] == null ? null : map['intervalUnit'] as String,
    );
  }
}
