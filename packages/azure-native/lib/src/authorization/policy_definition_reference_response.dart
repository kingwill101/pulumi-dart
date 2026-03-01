// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_values_value_response.dart';

/// The policy definition reference.
class PolicyDefinitionReferenceResponse {
  /// The version of the policy definition to use.
  final String? definitionVersion;
  /// The effective version of the policy definition in use. This is only present if requested via the $expand query parameter.
  final String effectiveDefinitionVersion;
  /// The name of the groups that this policy definition reference belongs to.
  final List<String>? groupNames;
  /// The latest version of the policy definition available. This is only present if requested via the $expand query parameter.
  final String latestDefinitionVersion;
  /// The parameter values for the referenced policy rule. The keys are the parameter names.
  final Map<String, ParameterValuesValueResponse>? parameters;
  /// The ID of the policy definition or policy set definition.
  final String policyDefinitionId;
  /// A unique id (within the policy set definition) for this policy definition reference.
  final String? policyDefinitionReferenceId;

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
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterValuesValueResponse, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'policyDefinitionId': policyDefinitionId,
      'policyDefinitionReferenceId': ?policyDefinitionReferenceId,
    };
  }

  factory PolicyDefinitionReferenceResponse.fromMap(Map<String, dynamic> map) {
    return PolicyDefinitionReferenceResponse(
      definitionVersion: map['definitionVersion'] == null ? null : map['definitionVersion'] as String,
      effectiveDefinitionVersion: map['effectiveDefinitionVersion'] as String,
      groupNames: map['groupNames'] == null ? null : (map['groupNames'] as List).cast<String>(),
      latestDefinitionVersion: map['latestDefinitionVersion'] as String,
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterValuesValueResponse>(map['parameters'], (value) => ParameterValuesValueResponse.fromMap((value as Map).cast<String, dynamic>())),
      policyDefinitionId: map['policyDefinitionId'] as String,
      policyDefinitionReferenceId: map['policyDefinitionReferenceId'] == null ? null : map['policyDefinitionReferenceId'] as String,
    );
  }
}

