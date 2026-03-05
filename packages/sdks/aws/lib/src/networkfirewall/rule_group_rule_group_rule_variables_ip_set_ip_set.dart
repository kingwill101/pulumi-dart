// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleGroupRuleGroupRuleVariablesIpSetIpSet {
  /// Set of IP addresses and address ranges, in CIDR notation.
  final pulumi.Input<List<String>> definitions;

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
      definitions: pulumi.Input.fromValue((map['definitions'] as List).cast<String>()),
    );
  }
}

