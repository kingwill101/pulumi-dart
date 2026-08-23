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
  const PolicyDefinitionReference({
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
      definitionVersion: (() { final guardedValue = map['definitionVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupNames: (() { final guardedValue = map['groupNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ParameterValuesValue>(guardedValue, (value) => ParameterValuesValue.fromMap((value as Map).cast<String, dynamic>()))); })(),
      policyDefinitionId: pulumi.Input.fromValue(map['policyDefinitionId'] as String),
      policyDefinitionReferenceId: (() { final guardedValue = map['policyDefinitionReferenceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
