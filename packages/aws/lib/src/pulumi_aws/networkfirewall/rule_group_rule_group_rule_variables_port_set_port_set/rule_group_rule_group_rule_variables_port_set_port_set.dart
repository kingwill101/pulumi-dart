// ignore_for_file: unused_element, unnecessary_cast

class RuleGroupRuleGroupRuleVariablesPortSetPortSet {
  /// Set of port ranges.
  final List<String> definitions;

  RuleGroupRuleGroupRuleVariablesPortSetPortSet({
    required this.definitions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['definitions'] = definitions;
    return map;
  }

  factory RuleGroupRuleGroupRuleVariablesPortSetPortSet.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleGroupRuleVariablesPortSetPortSet(
      definitions: (map['definitions'] as List).cast<String>(),
    );
  }
}
