// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_definitions_value_response.dart';
import 'policy_definition_group_response.dart';
import 'policy_definition_reference_response.dart';
import 'system_data_response.dart';

/// Result data returned by getPolicySetDefinitionVersion.
class GetPolicySetDefinitionVersionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The policy set definition description.
  final String? description;
  /// The display name of the policy set definition.
  final String? displayName;
  /// The ID of the policy set definition version.
  final String id;
  /// The policy set definition metadata.  Metadata is an open ended object and is typically a collection of key value pairs.
  final dynamic metadata;
  /// The name of the policy set definition version.
  final String name;
  /// The policy set definition parameters that can be used in policy definition references.
  final Map<String, ParameterDefinitionsValueResponse>? parameters;
  /// The metadata describing groups of policy definition references within the policy set definition.
  final List<PolicyDefinitionGroupResponse>? policyDefinitionGroups;
  /// An array of policy definition references.
  final List<PolicyDefinitionReferenceResponse> policyDefinitions;
  /// The type of policy definition. Possible values are NotSpecified, BuiltIn, Custom, and Static.
  final String? policyType;
  /// The system metadata relating to this resource.
  final SystemDataResponse systemData;
  /// The type of the resource (Microsoft.Authorization/policySetDefinitions/versions).
  final String type;
  /// The policy set definition version in #.#.# format.
  final String? version;

  /// Creates a new [GetPolicySetDefinitionVersionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] The policy set definition description.
  /// [displayName] The display name of the policy set definition.
  /// [id] The ID of the policy set definition version.
  /// [metadata] The policy set definition metadata.  Metadata is an open ended object and is typically a collection of key value pairs.
  /// [name] The name of the policy set definition version.
  /// [parameters] The policy set definition parameters that can be used in policy definition references.
  /// [policyDefinitionGroups] The metadata describing groups of policy definition references within the policy set definition.
  /// [policyDefinitions] An array of policy definition references.
  /// [policyType] The type of policy definition. Possible values are NotSpecified, BuiltIn, Custom, and Static.
  /// [systemData] The system metadata relating to this resource.
  /// [type] The type of the resource (Microsoft.Authorization/policySetDefinitions/versions).
  /// [version] The policy set definition version in #.#.# format.
  GetPolicySetDefinitionVersionResult({
    required this.azureApiVersion,
    this.description,
    this.displayName,
    required this.id,
    this.metadata,
    required this.name,
    this.parameters,
    this.policyDefinitionGroups,
    required this.policyDefinitions,
    this.policyType,
    required this.systemData,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'displayName': ?displayName,
      'id': id,
      'metadata': ?metadata,
      'name': name,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterDefinitionsValueResponse, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'policyDefinitionGroups': ?policyDefinitionGroups == null ? null : pulumi.Input.encodeList<PolicyDefinitionGroupResponse, Map<String, dynamic>>(policyDefinitionGroups!, (value) => value.toMap()),
      'policyDefinitions': pulumi.Input.encodeList<PolicyDefinitionReferenceResponse, Map<String, dynamic>>(policyDefinitions, (value) => value.toMap()),
      'policyType': ?policyType,
      'systemData': systemData.toMap(),
      'type': type,
      'version': ?version,
    };
  }

  factory GetPolicySetDefinitionVersionResult.fromMap(Map<String, dynamic> map) {
    return GetPolicySetDefinitionVersionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      id: map['id'] as String,
      metadata: map['metadata'] == null ? null : map['metadata'],
      name: map['name'] as String,
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterDefinitionsValueResponse>(map['parameters'], (value) => ParameterDefinitionsValueResponse.fromMap((value as Map).cast<String, dynamic>())),
      policyDefinitionGroups: map['policyDefinitionGroups'] == null ? null : pulumi.Input.decodeList<PolicyDefinitionGroupResponse>(map['policyDefinitionGroups'], (value) => PolicyDefinitionGroupResponse.fromMap((value as Map).cast<String, dynamic>())),
      policyDefinitions: pulumi.Input.decodeList<PolicyDefinitionReferenceResponse>(map['policyDefinitions'], (value) => PolicyDefinitionReferenceResponse.fromMap((value as Map).cast<String, dynamic>())),
      policyType: map['policyType'] == null ? null : map['policyType'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

