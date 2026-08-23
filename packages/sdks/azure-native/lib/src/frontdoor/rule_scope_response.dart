// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the scope of the rule.
class RuleScopeResponse {
  /// Defines the rule id.
  final pulumi.Input<String> ruleId;

  /// Creates a new [RuleScopeResponse].
  /// [ruleId] Defines the rule id.
  const RuleScopeResponse({
    required this.ruleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleId': ruleId,
    };
  }

  factory RuleScopeResponse.fromMap(Map<String, dynamic> map) {
    return RuleScopeResponse(
      ruleId: pulumi.Input.fromValue(map['ruleId'] as String),
    );
  }
}
