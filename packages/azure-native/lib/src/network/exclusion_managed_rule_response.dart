// ignore_for_file: unused_element, unnecessary_cast


/// Defines a managed rule to use for exclusion.
class ExclusionManagedRuleResponse {
  /// Identifier for the managed rule.
  final String ruleId;

  /// Creates a new [ExclusionManagedRuleResponse].
  /// [ruleId] Identifier for the managed rule.
  ExclusionManagedRuleResponse({
    required this.ruleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleId': ruleId,
    };
  }

  factory ExclusionManagedRuleResponse.fromMap(Map<String, dynamic> map) {
    return ExclusionManagedRuleResponse(
      ruleId: map['ruleId'] as String,
    );
  }
}

