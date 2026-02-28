// ignore_for_file: unused_element, unnecessary_cast

class RuleGroupRuleRuleLabel {
  /// The label string.
  final String name;

  /// Creates a new [RuleGroupRuleRuleLabel].
  /// [name] The label string.
  RuleGroupRuleRuleLabel({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory RuleGroupRuleRuleLabel.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleRuleLabel(
      name: map['name'] as String,
    );
  }
}
