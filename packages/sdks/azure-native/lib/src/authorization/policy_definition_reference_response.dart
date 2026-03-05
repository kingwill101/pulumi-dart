// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_values_value_response.dart';

/// The policy definition reference.
class PolicyDefinitionReferenceResponse {
  /// The version of the policy definition to use.
  final pulumi.Input<String>? definitionVersion;
  /// The effective version of the policy definition in use. This is only present if requested via the $expand query parameter.
  final pulumi.Input<String> effectiveDefinitionVersion;
  /// The name of the groups that this policy definition reference belongs to.
  final pulumi.Input<List<String>>? groupNames;
  /// The latest version of the policy definition available. This is only present if requested via the $expand query parameter.
  final pulumi.Input<String> latestDefinitionVersion;
  /// The parameter values for the referenced policy rule. The keys are the parameter names.
  final pulumi.Input<Map<String, ParameterValuesValueResponse>>? parameters;
  /// The ID of the policy definition or policy set definition.
  final pulumi.Input<String> policyDefinitionId;
  /// A unique id (within the policy set definition) for this policy definition reference.
  final pulumi.Input<String>? policyDefinitionReferenceId;

  /// Creates a new [PolicyDefinitionReferenceResponse].
  /// [definitionVersion] The version of the policy definition to use.
  /// [effectiveDefinitionVersion] The effective version of the policy definition in use. This is only present if requested via the $expand query parameter.
  /// [groupNames] The name of the groups that this policy definition reference belongs to.
  /// [latestDefinitionVersion] The latest version of the policy definition available. This is only present if requested via the $expand query parameter.
  /// [parameters] The parameter values for the referenced policy rule. The keys are the parameter names.
  /// [policyDefinitionId] The ID of the policy definition or policy set definition.
  /// [policyDefinitionReferenceId] A unique id (within the policy set definition) for this policy definition reference.
  PolicyDefinitionReferenceResponse({
    this.definitionVersion,
    required this.effectiveDefinitionVersion,
    this.groupNames,
    required this.latestDefinitionVersion,
    this.parameters,
    required this.policyDefinitionId,
    this.policyDefinitionReferenceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definitionVersion': ?definitionVersion,
      'effectiveDefinitionVersion': effectiveDefinitionVersion,
      'groupNames': ?groupNames,
      'latestDefinitionVersion': latestDefinitionVersion,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterValuesValueResponse>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterValuesValueResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'policyDefinitionId': policyDefinitionId,
      'policyDefinitionReferenceId': ?policyDefinitionReferenceId,
    };
  }

  factory PolicyDefinitionReferenceResponse.fromMap(Map<String, dynamic> map) {
    return PolicyDefinitionReferenceResponse(
      definitionVersion: (() { final guardedValue = map['definitionVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveDefinitionVersion: pulumi.Input.fromValue(map['effectiveDefinitionVersion'] as String),
      groupNames: (() { final guardedValue = map['groupNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      latestDefinitionVersion: pulumi.Input.fromValue(map['latestDefinitionVersion'] as String),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ParameterValuesValueResponse>(guardedValue, (value) => ParameterValuesValueResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      policyDefinitionId: pulumi.Input.fromValue(map['policyDefinitionId'] as String),
      policyDefinitionReferenceId: (() { final guardedValue = map['policyDefinitionReferenceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

