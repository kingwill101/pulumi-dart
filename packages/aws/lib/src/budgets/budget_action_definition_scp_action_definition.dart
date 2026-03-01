// ignore_for_file: unused_element, unnecessary_cast


class BudgetActionDefinitionScpActionDefinition {
  /// The policy ID attached.
  final String policyId;
  /// A list of target IDs.
  final List<String> targetIds;

  /// Creates a new [BudgetActionDefinitionScpActionDefinition].
  /// [policyId] The policy ID attached.
  /// [targetIds] A list of target IDs.
  BudgetActionDefinitionScpActionDefinition({
    required this.policyId,
    required this.targetIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyId': policyId,
      'targetIds': targetIds,
    };
  }

  factory BudgetActionDefinitionScpActionDefinition.fromMap(Map<String, dynamic> map) {
    return BudgetActionDefinitionScpActionDefinition(
      policyId: map['policyId'] as String,
      targetIds: (map['targetIds'] as List).cast<String>(),
    );
  }
}

