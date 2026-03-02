// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesTcpFlag {
  /// Set of flags to look for in a packet. This setting can only specify values that are also specified in `masks`.
  /// Valid values: `FIN`, `SYN`, `RST`, `PSH`, `ACK`, `URG`, `ECE`, `CWR`.
  final pulumi.Input<List<String>> flags;
  /// Set of flags to consider in the inspection. To inspect all flags, leave this empty.
  /// Valid values: `FIN`, `SYN`, `RST`, `PSH`, `ACK`, `URG`, `ECE`, `CWR`.
  final pulumi.Input<List<String>>? masks;

  /// Creates a new [RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesTcpFlag].
  /// [flags] Set of flags to look for in a packet. This setting can only specify values that are also specified in `masks`.
  /// [masks] Set of flags to consider in the inspection. To inspect all flags, leave this empty.
  RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesTcpFlag({
    required this.flags,
    this.masks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flags': flags,
      'masks': ?masks,
    };
  }

  factory RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesTcpFlag.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesTcpFlag(
      flags: ((map['flags'] as List).cast<String>()).input(),
      masks: map['masks'] == null ? null : ((map['masks'] as List).cast<String>()).input(),
    );
  }
}

