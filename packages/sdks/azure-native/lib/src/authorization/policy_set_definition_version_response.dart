// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_definitions_value_response.dart';
import 'policy_definition_group_response.dart';
import 'policy_definition_reference_response.dart';
import 'system_data_response.dart';

/// The policy set definition version.
class PolicySetDefinitionVersionResponse {
  /// The policy set definition description.
  final pulumi.Input<String>? description;
  /// The display name of the policy set definition.
  final pulumi.Input<String>? displayName;
  /// The ID of the policy set definition version.
  final pulumi.Input<String> id;
  /// The policy set definition metadata.  Metadata is an open ended object and is typically a collection of key value pairs.
  final pulumi.Input<dynamic>? metadata;
  /// The name of the policy set definition version.
  final pulumi.Input<String> name;
  /// The policy set definition parameters that can be used in policy definition references.
  final pulumi.Input<Map<String, ParameterDefinitionsValueResponse>>? parameters;
  /// The metadata describing groups of policy definition references within the policy set definition.
  final pulumi.Input<List<PolicyDefinitionGroupResponse>>? policyDefinitionGroups;
  /// An array of policy definition references.
  final pulumi.Input<List<PolicyDefinitionReferenceResponse>> policyDefinitions;
  /// The type of policy definition. Possible values are NotSpecified, BuiltIn, Custom, and Static.
  final pulumi.Input<String>? policyType;
  /// The system metadata relating to this resource.
  final pulumi.Input<SystemDataResponse> systemData;
  /// The type of the resource (Microsoft.Authorization/policySetDefinitions/versions).
  final pulumi.Input<String> type;
  /// The policy set definition version in #.#.# format.
  final pulumi.Input<String>? version;

  /// Creates a new [PolicySetDefinitionVersionResponse].
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
  PolicySetDefinitionVersionResponse({
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
      'description': ?description,
      'displayName': ?displayName,
      'id': id,
      'metadata': ?metadata,
      'name': name,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterDefinitionsValueResponse>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterDefinitionsValueResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'policyDefinitionGroups': ?pulumi.Input.mapOptionalInputValue<List<PolicyDefinitionGroupResponse>, List<Map<String, dynamic>>>(policyDefinitionGroups, (value) => pulumi.Input.encodeList<PolicyDefinitionGroupResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'policyDefinitions': pulumi.Input.mapInputValue<List<PolicyDefinitionReferenceResponse>, List<Map<String, dynamic>>>(policyDefinitions, (value) => pulumi.Input.encodeList<PolicyDefinitionReferenceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'policyType': ?policyType,
      'systemData': pulumi.Input.mapInputValue<SystemDataResponse, Map<String, dynamic>>(systemData, (value) => value.toMap()),
      'type': type,
      'version': ?version,
    };
  }

  factory PolicySetDefinitionVersionResponse.fromMap(Map<String, dynamic> map) {
    return PolicySetDefinitionVersionResponse(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      id: (map['id'] as String).input(),
      metadata: map['metadata'] == null ? null : (map['metadata']).input(),
      name: (map['name'] as String).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeMapValues<ParameterDefinitionsValueResponse>(map['parameters'], (value) => ParameterDefinitionsValueResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      policyDefinitionGroups: map['policyDefinitionGroups'] == null ? null : (pulumi.Input.decodeList<PolicyDefinitionGroupResponse>(map['policyDefinitionGroups'], (value) => PolicyDefinitionGroupResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      policyDefinitions: (pulumi.Input.decodeList<PolicyDefinitionReferenceResponse>(map['policyDefinitions'], (value) => PolicyDefinitionReferenceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      policyType: map['policyType'] == null ? null : (map['policyType'] as String).input(),
      systemData: (SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

