// ignore_for_file: unused_element, unnecessary_cast


class RuleGroupRuleGroupRuleVariablesIpSetIpSet {
  /// Set of IP addresses and address ranges, in CIDR notation.
  final List<String> definitions;

  /// Creates a new [RuleGroupRuleGroupRuleVariablesIpSetIpSet].
  /// [definitions] Set of IP addresses and address ranges, in CIDR notation.
  RuleGroupRuleGroupRuleVariablesIpSetIpSet({
    required this.definitions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definitions': definitions,
    };
  }

  factory RuleGroupRuleGroupRuleVariablesIpSetIpSet.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleGroupRuleVariablesIpSetIpSet(
      definitions: (map['definitions'] as List).cast<String>(),
    );
  }
}

