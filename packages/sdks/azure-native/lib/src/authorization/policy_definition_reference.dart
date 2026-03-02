// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_values_value.dart';

/// The policy definition reference.
class PolicyDefinitionReference {
  /// The version of the policy definition to use.
  final pulumi.Input<String>? definitionVersion;
  /// The name of the groups that this policy definition reference belongs to.
  final pulumi.Input<List<String>>? groupNames;
  /// The parameter values for the referenced policy rule. The keys are the parameter names.
  final pulumi.Input<Map<String, ParameterValuesValue>>? parameters;
  /// The ID of the policy definition or policy set definition.
  final pulumi.Input<String> policyDefinitionId;
  /// A unique id (within the policy set definition) for this policy definition reference.
  final pulumi.Input<String>? policyDefinitionReferenceId;

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
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterValuesValue>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterValuesValue, Map<String, dynamic>>(value, (value) => value.toMap())),
      'policyDefinitionId': policyDefinitionId,
      'policyDefinitionReferenceId': ?policyDefinitionReferenceId,
    };
  }

  factory PolicyDefinitionReference.fromMap(Map<String, dynamic> map) {
    return PolicyDefinitionReference(
      definitionVersion: map['definitionVersion'] == null ? null : (map['definitionVersion']! as String).input(),
      groupNames: map['groupNames'] == null ? null : ((map['groupNames']! as List).cast<String>()).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeMapValues<ParameterValuesValue>(map['parameters']!, (value) => ParameterValuesValue.fromMap((value as Map).cast<String, dynamic>()))).input(),
      policyDefinitionId: (map['policyDefinitionId'] as String).input(),
      policyDefinitionReferenceId: map['policyDefinitionReferenceId'] == null ? null : (map['policyDefinitionReferenceId']! as String).input(),
    );
  }
}

