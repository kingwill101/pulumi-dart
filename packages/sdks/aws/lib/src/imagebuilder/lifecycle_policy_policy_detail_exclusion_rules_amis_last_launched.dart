// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LifecyclePolicyPolicyDetailExclusionRulesAmisLastLaunched {
  /// Defines the unit of time that the lifecycle policy uses to calculate elapsed time since the last instance launched from the AMI. For example: days, weeks, months, or years. Valid values: `DAYS`, `WEEKS`, `MONTHS` or `YEARS`.
  final pulumi.Input<String> unit;

  /// The integer number of units for the time period. For example 6 (months).
  final pulumi.Input<int> value;

  /// Creates a new [LifecyclePolicyPolicyDetailExclusionRulesAmisLastLaunched].
  /// [unit] Defines the unit of time that the lifecycle policy uses to calculate elapsed time since the last instance launched from the AMI. For example: days, weeks, months, or years. Valid values: `DAYS`, `WEEKS`, `MONTHS` or `YEARS`.
  /// [value] The integer number of units for the time period. For example 6 (months).
  LifecyclePolicyPolicyDetailExclusionRulesAmisLastLaunched({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'unit': unit, 'value': value};
  }

  factory LifecyclePolicyPolicyDetailExclusionRulesAmisLastLaunched.fromMap(
    Map<String, dynamic> map,
  ) {
    return LifecyclePolicyPolicyDetailExclusionRulesAmisLastLaunched(
      unit: pulumi.Input.fromValue(map['unit'] as String),
      value: pulumi.Input.fromValue(map['value'] as int),
    );
  }
}
