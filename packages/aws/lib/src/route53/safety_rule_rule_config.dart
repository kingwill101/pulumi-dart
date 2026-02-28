// ignore_for_file: unused_element, unnecessary_cast

class SafetyRuleRuleConfig {
  /// Logical negation of the rule.
  final bool inverted;

  /// Number of controls that must be set when you specify an `ATLEAST` type rule.
  final int threshold;

  /// Rule type. Valid values are `ATLEAST`, `AND`, and `OR`.
  final String type;

  /// Creates a new [SafetyRuleRuleConfig].
  /// [inverted] Logical negation of the rule.
  /// [threshold] Number of controls that must be set when you specify an `ATLEAST` type rule.
  /// [type] Rule type. Valid values are `ATLEAST`, `AND`, and `OR`.
  SafetyRuleRuleConfig({
    required this.inverted,
    required this.threshold,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['inverted'] = inverted;
    map['threshold'] = threshold;
    map['type'] = type;
    return map;
  }

  factory SafetyRuleRuleConfig.fromMap(Map<String, dynamic> map) {
    return SafetyRuleRuleConfig(
      inverted: map['inverted'] as bool,
      threshold: map['threshold'] as int,
      type: map['type'] as String,
    );
  }
}
