// ignore_for_file: unused_element, unnecessary_cast

class BudgetActionDefinitionScpActionDefinition {
  /// The policy ID attached.
  final String policyId;

  /// A list of target IDs.
  final List<String> targetIds;

  BudgetActionDefinitionScpActionDefinition({
    required this.policyId,
    required this.targetIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['policyId'] = policyId;
    map['targetIds'] = targetIds;
    return map;
  }

  factory BudgetActionDefinitionScpActionDefinition.fromMap(
      Map<String, dynamic> map) {
    return BudgetActionDefinitionScpActionDefinition(
      policyId: map['policyId'] as String,
      targetIds: (map['targetIds'] as List).cast<String>(),
    );
  }
}
