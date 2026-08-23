// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the scope of the rule.
class RuleScope {
  /// Defines the rule id.
  final pulumi.Input<String> ruleId;

  /// Creates a new [RuleScope].
  /// [ruleId] Defines the rule id.
  const RuleScope({
    required this.ruleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleId': ruleId,
    };
  }

  factory RuleScope.fromMap(Map<String, dynamic> map) {
    return RuleScope(
      ruleId: pulumi.Input.fromValue(map['ruleId'] as String),
    );
  }
}
