// ignore_for_file: unused_element, unnecessary_cast

class RuleGroupRuleGroupRuleVariablesPortSetPortSet {
  /// Set of port ranges.
  final List<String> definitions;

  /// Creates a new [RuleGroupRuleGroupRuleVariablesPortSetPortSet].
  /// [definitions] Set of port ranges.
  RuleGroupRuleGroupRuleVariablesPortSetPortSet({required this.definitions});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'definitions': definitions};
  }

  factory RuleGroupRuleGroupRuleVariablesPortSetPortSet.fromMap(
    Map<String, dynamic> map,
  ) {
    return RuleGroupRuleGroupRuleVariablesPortSetPortSet(
      definitions: (map['definitions'] as List).cast<String>(),
    );
  }
}
