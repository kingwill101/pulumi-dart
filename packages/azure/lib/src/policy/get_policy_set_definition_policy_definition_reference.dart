// ignore_for_file: unused_element, unnecessary_cast


class GetPolicySetDefinitionPolicyDefinitionReference {
  /// The parameter values for the referenced policy rule. This field is a JSON object.
  final String parameterValues;
  /// The mapping of the parameter values for the referenced policy rule. The keys are the parameter names.
  final Map<String, String> parameters;
  /// The ID of the policy definition or policy set definition that is included in this policy set definition.
  final String policyDefinitionId;
  /// The list of names of the policy definition groups that this policy definition reference belongs to.
  final List<String> policyGroupNames;
  /// The unique ID within this policy set definition for this policy definition reference.
  final String referenceId;

  /// Creates a new [GetPolicySetDefinitionPolicyDefinitionReference].
  /// [parameterValues] The parameter values for the referenced policy rule. This field is a JSON object.
  /// [parameters] The mapping of the parameter values for the referenced policy rule. The keys are the parameter names.
  /// [policyDefinitionId] The ID of the policy definition or policy set definition that is included in this policy set definition.
  /// [policyGroupNames] The list of names of the policy definition groups that this policy definition reference belongs to.
  /// [referenceId] The unique ID within this policy set definition for this policy definition reference.
  GetPolicySetDefinitionPolicyDefinitionReference({
    required this.parameterValues,
    required this.parameters,
    required this.policyDefinitionId,
    required this.policyGroupNames,
    required this.referenceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameterValues': parameterValues,
      'parameters': parameters,
      'policyDefinitionId': policyDefinitionId,
      'policyGroupNames': policyGroupNames,
      'referenceId': referenceId,
    };
  }

  factory GetPolicySetDefinitionPolicyDefinitionReference.fromMap(Map<String, dynamic> map) {
    return GetPolicySetDefinitionPolicyDefinitionReference(
      parameterValues: map['parameterValues'] as String,
      parameters: (map['parameters'] as Map).cast<String, String>(),
      policyDefinitionId: map['policyDefinitionId'] as String,
      policyGroupNames: (map['policyGroupNames'] as List).cast<String>(),
      referenceId: map['referenceId'] as String,
    );
  }
}

