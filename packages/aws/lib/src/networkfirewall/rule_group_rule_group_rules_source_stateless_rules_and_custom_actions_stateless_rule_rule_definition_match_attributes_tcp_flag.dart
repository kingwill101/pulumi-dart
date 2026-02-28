// ignore_for_file: unused_element, unnecessary_cast

class RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesTcpFlag {
  /// Set of flags to look for in a packet. This setting can only specify values that are also specified in `masks`.
  /// Valid values: `FIN`, `SYN`, `RST`, `PSH`, `ACK`, `URG`, `ECE`, `CWR`.
  final List<String> flags;

  /// Set of flags to consider in the inspection. To inspect all flags, leave this empty.
  /// Valid values: `FIN`, `SYN`, `RST`, `PSH`, `ACK`, `URG`, `ECE`, `CWR`.
  final List<String>? masks;

  /// Creates a new [RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesTcpFlag].
  /// [flags] Set of flags to look for in a packet. This setting can only specify values that are also specified in `masks`.
  /// [masks] Set of flags to consider in the inspection. To inspect all flags, leave this empty.
  RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesTcpFlag({
    required this.flags,
    this.masks,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['flags'] = flags;
    final masksValue = masks;
    if (masksValue != null) {
      map['masks'] = masksValue;
    }
    return map;
  }

  factory RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesTcpFlag.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesTcpFlag(
      flags: (map['flags'] as List).cast<String>(),
      masks:
          map['masks'] == null ? null : (map['masks'] as List).cast<String>(),
    );
  }
}
