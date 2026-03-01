// ignore_for_file: unused_element, unnecessary_cast

class GetPrincipalPolicySimulationResultMatchedStatement {
  /// Identifier of one of the policies used as input to the simulation.
  final String sourcePolicyId;

  /// The type of the policy identified in source_policy_id.
  final String sourcePolicyType;

  /// Creates a new [GetPrincipalPolicySimulationResultMatchedStatement].
  /// [sourcePolicyId] Identifier of one of the policies used as input to the simulation.
  /// [sourcePolicyType] The type of the policy identified in source_policy_id.
  GetPrincipalPolicySimulationResultMatchedStatement({
    required this.sourcePolicyId,
    required this.sourcePolicyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourcePolicyId': sourcePolicyId,
      'sourcePolicyType': sourcePolicyType,
    };
  }

  factory GetPrincipalPolicySimulationResultMatchedStatement.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetPrincipalPolicySimulationResultMatchedStatement(
      sourcePolicyId: map['sourcePolicyId'] as String,
      sourcePolicyType: map['sourcePolicyType'] as String,
    );
  }
}
