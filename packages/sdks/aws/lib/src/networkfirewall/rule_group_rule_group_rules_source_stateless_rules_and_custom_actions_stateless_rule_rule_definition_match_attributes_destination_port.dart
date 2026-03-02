// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesDestinationPort {
  /// The lower limit of the port range. This must be less than or equal to the `to_port`.
  final pulumi.Input<int> fromPort;
  /// The upper limit of the port range. This must be greater than or equal to the `from_port`.
  final pulumi.Input<int>? toPort;

  /// Creates a new [RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesDestinationPort].
  /// [fromPort] The lower limit of the port range. This must be less than or equal to the `to_port`.
  /// [toPort] The upper limit of the port range. This must be greater than or equal to the `from_port`.
  RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesDestinationPort({
    required this.fromPort,
    this.toPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fromPort': fromPort,
      'toPort': ?toPort,
    };
  }

  factory RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesDestinationPort.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesDestinationPort(
      fromPort: (map['fromPort'] as int).input(),
      toPort: map['toPort'] == null ? null : ((map['toPort'] as int).input()).input(),
    );
  }
}

