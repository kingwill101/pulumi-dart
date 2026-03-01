// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_values_value.dart';

/// The policy definition reference.
class PolicyDefinitionReference {
  /// The version of the policy definition to use.
  final String? definitionVersion;
  /// The name of the groups that this policy definition reference belongs to.
  final List<String>? groupNames;
  /// The parameter values for the referenced policy rule. The keys are the parameter names.
  final Map<String, ParameterValuesValue>? parameters;
  /// The ID of the policy definition or policy set definition.
  final String policyDefinitionId;
  /// A unique id (within the policy set definition) for this policy definition reference.
  final String? policyDefinitionReferenceId;

  /// Creates a new [PolicyDefinitionReference].
  /// [definitionVersion] The version of the policy definition to use.
  /// [groupNames] The name of the groups that this policy definition reference belongs to.
  /// [parameters] The parameter values for the referenced policy rule. The keys are the parameter names.
  /// [policyDefinitionId] The ID of the policy definition or policy set definition.
  /// [policyDefinitionReferenceId] A unique id (within the policy set definition) for this policy definition reference.
  PolicyDefinitionReference({
    this.definitionVersion,
    this.groupNames,
    this.parameters,
    required this.policyDefinitionId,
    this.policyDefinitionReferenceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definitionVersion': ?definitionVersion,
      'groupNames': ?groupNames,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterValuesValue, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'policyDefinitionId': policyDefinitionId,
      'policyDefinitionReferenceId': ?policyDefinitionReferenceId,
    };
  }

  factory PolicyDefinitionReference.fromMap(Map<String, dynamic> map) {
    return PolicyDefinitionReference(
      definitionVersion: map['definitionVersion'] == null ? null : map['definitionVersion'] as String,
      groupNames: map['groupNames'] == null ? null : (map['groupNames'] as List).cast<String>(),
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterValuesValue>(map['parameters'], (value) => ParameterValuesValue.fromMap((value as Map).cast<String, dynamic>())),
      policyDefinitionId: map['policyDefinitionId'] as String,
      policyDefinitionReferenceId: map['policyDefinitionReferenceId'] == null ? null : map['policyDefinitionReferenceId'] as String,
    );
  }
}

