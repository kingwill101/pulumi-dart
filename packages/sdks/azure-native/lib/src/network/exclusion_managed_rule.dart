// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines a managed rule to use for exclusion.
class ExclusionManagedRule {
  /// Identifier for the managed rule.
  final pulumi.Input<String> ruleId;

  /// Creates a new [ExclusionManagedRule].
  /// [ruleId] Identifier for the managed rule.
  ExclusionManagedRule({
    required this.ruleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleId': ruleId,
    };
  }

  factory ExclusionManagedRule.fromMap(Map<String, dynamic> map) {
    return ExclusionManagedRule(
      ruleId: pulumi.Input.fromValue(map['ruleId'] as String),
    );
  }
}

