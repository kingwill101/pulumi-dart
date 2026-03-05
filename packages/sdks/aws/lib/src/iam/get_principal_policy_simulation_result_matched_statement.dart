// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPrincipalPolicySimulationResultMatchedStatement {
  /// Identifier of one of the policies used as input to the simulation.
  final pulumi.Input<String> sourcePolicyId;
  /// The type of the policy identified in source_policy_id.
  final pulumi.Input<String> sourcePolicyType;

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

  factory GetPrincipalPolicySimulationResultMatchedStatement.fromMap(Map<String, dynamic> map) {
    return GetPrincipalPolicySimulationResultMatchedStatement(
      sourcePolicyId: pulumi.Input.fromValue(map['sourcePolicyId'] as String),
      sourcePolicyType: pulumi.Input.fromValue(map['sourcePolicyType'] as String),
    );
  }
}

