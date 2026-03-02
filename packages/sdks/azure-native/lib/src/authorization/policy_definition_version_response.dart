// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_definitions_value_response.dart';
import 'system_data_response.dart';

/// The ID of the policy definition version.
class PolicyDefinitionVersionResponse {
  /// The policy definition description.
  final pulumi.Input<String>? description;
  /// The display name of the policy definition.
  final pulumi.Input<String>? displayName;
  /// The ID of the policy definition version.
  final pulumi.Input<String> id;
  /// The policy definition metadata.  Metadata is an open ended object and is typically a collection of key value pairs.
  final pulumi.Input<dynamic>? metadata;
  /// The policy definition mode. Some examples are All, Indexed, Microsoft.KeyVault.Data.
  final pulumi.Input<String>? mode;
  /// The name of the policy definition version.
  final pulumi.Input<String> name;
  /// The parameter definitions for parameters used in the policy rule. The keys are the parameter names.
  final pulumi.Input<Map<String, ParameterDefinitionsValueResponse>>? parameters;
  /// The policy rule.
  final pulumi.Input<dynamic>? policyRule;
  /// The type of policy definition. Possible values are NotSpecified, BuiltIn, Custom, and Static.
  final pulumi.Input<String>? policyType;
  /// The system metadata relating to this resource.
  final pulumi.Input<SystemDataResponse> systemData;
  /// The type of the resource (Microsoft.Authorization/policyDefinitions/versions).
  final pulumi.Input<String> type;
  /// The policy definition version in #.#.# format.
  final pulumi.Input<String>? version;

  /// Creates a new [PolicyDefinitionVersionResponse].
  /// [description] The policy definition description.
  /// [displayName] The display name of the policy definition.
  /// [id] The ID of the policy definition version.
  /// [metadata] The policy definition metadata.  Metadata is an open ended object and is typically a collection of key value pairs.
  /// [mode] The policy definition mode. Some examples are All, Indexed, Microsoft.KeyVault.Data.
  /// [name] The name of the policy definition version.
  /// [parameters] The parameter definitions for parameters used in the policy rule. The keys are the parameter names.
  /// [policyRule] The policy rule.
  /// [policyType] The type of policy definition. Possible values are NotSpecified, BuiltIn, Custom, and Static.
  /// [systemData] The system metadata relating to this resource.
  /// [type] The type of the resource (Microsoft.Authorization/policyDefinitions/versions).
  /// [version] The policy definition version in #.#.# format.
  PolicyDefinitionVersionResponse({
    this.description,
    this.displayName,
    required this.id,
    this.metadata,
    this.mode,
    required this.name,
    this.parameters,
    this.policyRule,
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
      'mode': ?mode,
      'name': name,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterDefinitionsValueResponse>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterDefinitionsValueResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'policyRule': ?policyRule,
      'policyType': ?policyType,
      'systemData': pulumi.Input.mapInputValue<SystemDataResponse, Map<String, dynamic>>(systemData, (value) => value.toMap()),
      'type': type,
      'version': ?version,
    };
  }

  factory PolicyDefinitionVersionResponse.fromMap(Map<String, dynamic> map) {
    return PolicyDefinitionVersionResponse(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      id: (map['id'] as String).input(),
      metadata: map['metadata'] == null ? null : (map['metadata']).input(),
      mode: map['mode'] == null ? null : (map['mode'] as String).input(),
      name: (map['name'] as String).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeMapValues<ParameterDefinitionsValueResponse>(map['parameters'], (value) => ParameterDefinitionsValueResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      policyRule: map['policyRule'] == null ? null : (map['policyRule']).input(),
      policyType: map['policyType'] == null ? null : (map['policyType'] as String).input(),
      systemData: (SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

