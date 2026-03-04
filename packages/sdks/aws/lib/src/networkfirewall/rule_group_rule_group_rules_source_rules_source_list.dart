// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleGroupRuleGroupRulesSourceRulesSourceList {
  /// String value to specify whether domains in the target list are allowed or denied access. Valid values: `ALLOWLIST`, `DENYLIST`.
  final pulumi.Input<String> generatedRulesType;

  /// Set of types of domain specifications that are provided in the `targets` argument. Valid values: `HTTP_HOST`, `TLS_SNI`.
  final pulumi.Input<List<String>> targetTypes;

  /// Set of domains that you want to inspect for in your traffic flows.
  final pulumi.Input<List<String>> targets;

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

  factory RuleGroupRuleGroupRulesSourceRulesSourceList.fromMap(
    Map<String, dynamic> map,
  ) {
    return RuleGroupRuleGroupRulesSourceRulesSourceList(
      generatedRulesType: pulumi.Input.fromValue(
        map['generatedRulesType'] as String,
      ),
      targetTypes: pulumi.Input.fromValue(
        (map['targetTypes'] as List).cast<String>(),
      ),
      targets: pulumi.Input.fromValue((map['targets'] as List).cast<String>()),
    );
  }
}
