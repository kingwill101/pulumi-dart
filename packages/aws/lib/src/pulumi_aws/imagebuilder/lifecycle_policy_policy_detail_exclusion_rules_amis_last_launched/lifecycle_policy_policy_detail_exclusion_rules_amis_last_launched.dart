// ignore_for_file: unused_element, unnecessary_cast

class LifecyclePolicyPolicyDetailExclusionRulesAmisLastLaunched {
  /// Defines the unit of time that the lifecycle policy uses to calculate elapsed time since the last instance launched from the AMI. For example: days, weeks, months, or years. Valid values: `DAYS`, `WEEKS`, `MONTHS` or `YEARS`.
  final String unit;

  /// The integer number of units for the time period. For example 6 (months).
  final int value;

  LifecyclePolicyPolicyDetailExclusionRulesAmisLastLaunched({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['unit'] = unit;
    map['value'] = value;
    return map;
  }

  factory LifecyclePolicyPolicyDetailExclusionRulesAmisLastLaunched.fromMap(
      Map<String, dynamic> map) {
    return LifecyclePolicyPolicyDetailExclusionRulesAmisLastLaunched(
      unit: map['unit'] as String,
      value: map['value'] as int,
    );
  }
}
