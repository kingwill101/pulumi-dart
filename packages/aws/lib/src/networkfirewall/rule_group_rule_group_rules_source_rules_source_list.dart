// ignore_for_file: unused_element, unnecessary_cast


class RuleGroupRuleGroupRulesSourceRulesSourceList {
  /// String value to specify whether domains in the target list are allowed or denied access. Valid values: `ALLOWLIST`, `DENYLIST`.
  final String generatedRulesType;
  /// Set of types of domain specifications that are provided in the `targets` argument. Valid values: `HTTP_HOST`, `TLS_SNI`.
  final List<String> targetTypes;
  /// Set of domains that you want to inspect for in your traffic flows.
  final List<String> targets;

  /// Creates a new [RuleGroupRuleGroupRulesSourceRulesSourceList].
  /// [generatedRulesType] String value to specify whether domains in the target list are allowed or denied access. Valid values: `ALLOWLIST`, `DENYLIST`.
  /// [targetTypes] Set of types of domain specifications that are provided in the `targets` argument. Valid values: `HTTP_HOST`, `TLS_SNI`.
  /// [targets] Set of domains that you want to inspect for in your traffic flows.
  RuleGroupRuleGroupRulesSourceRulesSourceList({
    required this.generatedRulesType,
    required this.targetTypes,
    required this.targets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'generatedRulesType': generatedRulesType,
      'targetTypes': targetTypes,
      'targets': targets,
    };
  }

  factory RuleGroupRuleGroupRulesSourceRulesSourceList.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleGroupRulesSourceRulesSourceList(
      generatedRulesType: map['generatedRulesType'] as String,
      targetTypes: (map['targetTypes'] as List).cast<String>(),
      targets: (map['targets'] as List).cast<String>(),
    );
  }
}

