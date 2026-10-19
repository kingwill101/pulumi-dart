// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BudgetActionDefinitionScpActionDefinition {
  /// Policy ID attached.
  final pulumi.Input<String> policyId;
  /// List of target IDs.
  final pulumi.Input<List<String>> targetIds;

  /// Creates a new [BudgetActionDefinitionScpActionDefinition].
  /// [policyId] Policy ID attached.
  /// [targetIds] List of target IDs.
  const BudgetActionDefinitionScpActionDefinition({
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
      policyId: pulumi.Input.fromValue(map['policyId'] as String),
      targetIds: pulumi.Input.fromValue((map['targetIds'] as List).cast<String>()),
    );
  }
}
