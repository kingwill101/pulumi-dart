// ignore_for_file: unused_element, unnecessary_cast

class RuleGroupRuleGroupRulesSourceRulesSourceList {
  /// String value to specify whether domains in the target list are allowed or denied access. Valid values: `ALLOWLIST`, `DENYLIST`.
  final String generatedRulesType;

  /// Set of types of domain specifications that are provided in the <span pulumi-lang-nodejs="`targets`" pulumi-lang-dotnet="`Targets`" pulumi-lang-go="`targets`" pulumi-lang-python="`targets`" pulumi-lang-yaml="`targets`" pulumi-lang-java="`targets`">`targets`</span> argument. Valid values: `HTTP_HOST`, `TLS_SNI`.
  final List<String> targetTypes;

  /// Set of domains that you want to inspect for in your traffic flows.
  final List<String> targets;

  RuleGroupRuleGroupRulesSourceRulesSourceList({
    required this.generatedRulesType,
    required this.targetTypes,
    required this.targets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['generatedRulesType'] = generatedRulesType;
    map['targetTypes'] = targetTypes;
    map['targets'] = targets;
    return map;
  }

  factory RuleGroupRuleGroupRulesSourceRulesSourceList.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleGroupRulesSourceRulesSourceList(
      generatedRulesType: map['generatedRulesType'] as String,
      targetTypes: (map['targetTypes'] as List).cast<String>(),
      targets: (map['targets'] as List).cast<String>(),
    );
  }
}
