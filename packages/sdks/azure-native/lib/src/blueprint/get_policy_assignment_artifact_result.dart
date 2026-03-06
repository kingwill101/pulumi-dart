// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_value_response.dart';

/// Result data returned by getPolicyAssignmentArtifact.
class GetPolicyAssignmentArtifactResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Artifacts which need to be deployed before the specified artifact.
  final List<String>? dependsOn;
  /// Multi-line explain this resource.
  final String? description;
  /// One-liner string explain this resource.
  final String? displayName;
  /// String Id used to locate any resource on Azure.
  final String id;
  /// Specifies the kind of blueprint artifact.
  /// Expected value is 'policyAssignment'.
  final String kind;
  /// Name of this resource.
  final String name;
  /// Parameter values for the policy definition.
  final Map<String, ParameterValueResponse> parameters;
  /// Azure resource ID of the policy definition.
  final String policyDefinitionId;
  /// Name of the resource group placeholder to which the policy will be assigned.
  final String? resourceGroup;
  /// Type of this resource.
  final String type;

  /// Creates a new [GetPolicyAssignmentArtifactResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dependsOn] Artifacts which need to be deployed before the specified artifact.
  /// [description] Multi-line explain this resource.
  /// [displayName] One-liner string explain this resource.
  /// [id] String Id used to locate any resource on Azure.
  /// [kind] Specifies the kind of blueprint artifact.
  /// [name] Name of this resource.
  /// [parameters] Parameter values for the policy definition.
  /// [policyDefinitionId] Azure resource ID of the policy definition.
  /// [resourceGroup] Name of the resource group placeholder to which the policy will be assigned.
  /// [type] Type of this resource.
  const GetPolicyAssignmentArtifactResult({
    required this.azureApiVersion,
    this.dependsOn,
    this.description,
    this.displayName,
    required this.id,
    required this.kind,
    required this.name,
    required this.parameters,
    required this.policyDefinitionId,
    this.resourceGroup,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'dependsOn': ?dependsOn,
      'description': ?description,
      'displayName': ?displayName,
      'id': id,
      'kind': kind,
      'name': name,
      'parameters': pulumi.Input.encodeMapValues<ParameterValueResponse, Map<String, dynamic>>(parameters, (value) => value.toMap()),
      'policyDefinitionId': policyDefinitionId,
      'resourceGroup': ?resourceGroup,
      'type': type,
    };
  }

  factory GetPolicyAssignmentArtifactResult.fromMap(Map<String, dynamic> map) {
    return GetPolicyAssignmentArtifactResult(
      azureApiVersion: map['azureApiVersion'] as String,
      dependsOn: (() { final guardedValue = map['dependsOn']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
      parameters: pulumi.Input.decodeMapValues<ParameterValueResponse>(map['parameters']!, (value) => ParameterValueResponse.fromMap((value as Map).cast<String, dynamic>())),
      policyDefinitionId: map['policyDefinitionId'] as String,
      resourceGroup: (() { final guardedValue = map['resourceGroup']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
    );
  }
}

