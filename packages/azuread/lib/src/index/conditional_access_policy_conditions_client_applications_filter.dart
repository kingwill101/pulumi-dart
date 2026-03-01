// ignore_for_file: unused_element, unnecessary_cast


class ConditionalAccessPolicyConditionsClientApplicationsFilter {
  /// Whether to include in, or exclude from, matching items from the policy. Supported values are `include` or `exclude`.
  final String mode;
  /// Condition filter to match items.
  final String rule;

  /// Creates a new [ConditionalAccessPolicyConditionsClientApplicationsFilter].
  /// [mode] Whether to include in, or exclude from, matching items from the policy. Supported values are `include` or `exclude`.
  /// [rule] Condition filter to match items.
  ConditionalAccessPolicyConditionsClientApplicationsFilter({
    required this.mode,
    required this.rule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
      'rule': rule,
    };
  }

  factory ConditionalAccessPolicyConditionsClientApplicationsFilter.fromMap(Map<String, dynamic> map) {
    return ConditionalAccessPolicyConditionsClientApplicationsFilter(
      mode: map['mode'] as String,
      rule: map['rule'] as String,
    );
  }
}

