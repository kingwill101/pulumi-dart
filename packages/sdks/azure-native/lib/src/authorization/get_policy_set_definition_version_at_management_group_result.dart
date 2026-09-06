// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_definitions_value_response.dart';
import 'policy_definition_group_response.dart';
import 'policy_definition_reference_response.dart';
import 'system_data_response.dart';

/// Result data returned by getPolicySetDefinitionVersionAtManagementGroup.
class GetPolicySetDefinitionVersionAtManagementGroupResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The policy set definition description.
  final String? description;
  /// The display name of the policy set definition.
  final String? displayName;
  /// The ID of the policy set definition version.
  final String? id;
  /// The policy set definition metadata.  Metadata is an open ended object and is typically a collection of key value pairs.
  final dynamic metadata;
  /// The name of the policy set definition version.
  final String? name;
  /// The policy set definition parameters that can be used in policy definition references.
  final Map<String, ParameterDefinitionsValueResponse>? parameters;
  /// The metadata describing groups of policy definition references within the policy set definition.
  final List<PolicyDefinitionGroupResponse>? policyDefinitionGroups;
  /// An array of policy definition references.
  final List<PolicyDefinitionReferenceResponse>? policyDefinitions;
  /// The type of policy definition. Possible values are NotSpecified, BuiltIn, Custom, and Static.
  final String? policyType;
  /// The system metadata relating to this resource.
  final SystemDataResponse? systemData;
  /// The type of the resource (Microsoft.Authorization/policySetDefinitions/versions).
  final String? type;
  /// The policy set definition version in #.#.# format.
  final String? version;

  /// Creates a new [GetPolicySetDefinitionVersionAtManagementGroupResult].
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
  const GetPolicySetDefinitionVersionAtManagementGroupResult({
    this.azureApiVersion,
    this.description,
    this.displayName,
    this.id,
    this.metadata,
    this.name,
    this.parameters,
    this.policyDefinitionGroups,
    this.policyDefinitions,
    this.policyType,
    this.systemData,
    this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'description': ?description,
      'displayName': ?displayName,
      'id': ?id,
      'metadata': ?metadata,
      'name': ?name,
      'parameters': ?(() { final guardedValue = parameters; if (guardedValue == null) return null; return pulumi.Input.encodeMapValues<ParameterDefinitionsValueResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'policyDefinitionGroups': ?(() { final guardedValue = policyDefinitionGroups; if (guardedValue == null) return null; return pulumi.Input.encodeList<PolicyDefinitionGroupResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'policyDefinitions': ?(() { final guardedValue = policyDefinitions; if (guardedValue == null) return null; return pulumi.Input.encodeList<PolicyDefinitionReferenceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'policyType': ?policyType,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
      'version': ?version,
    };
  }

  factory GetPolicySetDefinitionVersionAtManagementGroupResult.fromMap(Map<String, dynamic> map) {
    return GetPolicySetDefinitionVersionAtManagementGroupResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return guardedValue; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<ParameterDefinitionsValueResponse>(guardedValue, (value) => ParameterDefinitionsValueResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      policyDefinitionGroups: (() { final guardedValue = map['policyDefinitionGroups']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PolicyDefinitionGroupResponse>(guardedValue, (value) => PolicyDefinitionGroupResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      policyDefinitions: (() { final guardedValue = map['policyDefinitions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PolicyDefinitionReferenceResponse>(guardedValue, (value) => PolicyDefinitionReferenceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      policyType: (() { final guardedValue = map['policyType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
