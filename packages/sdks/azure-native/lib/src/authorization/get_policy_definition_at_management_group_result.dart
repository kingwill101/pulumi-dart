// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_definitions_value_response.dart';
import 'system_data_response.dart';

/// Result data returned by getPolicyDefinitionAtManagementGroup.
class GetPolicyDefinitionAtManagementGroupResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// The policy definition description.
  final String? description;

  /// The display name of the policy definition.
  final String? displayName;

  /// The ID of the policy definition.
  final String id;

  /// The policy definition metadata.  Metadata is an open ended object and is typically a collection of key value pairs.
  final dynamic metadata;

  /// The policy definition mode. Some examples are All, Indexed, Microsoft.KeyVault.Data.
  final String? mode;

  /// The name of the policy definition.
  final String name;

  /// The parameter definitions for parameters used in the policy rule. The keys are the parameter names.
  final Map<String, ParameterDefinitionsValueResponse>? parameters;

  /// The policy rule.
  final dynamic policyRule;

  /// The type of policy definition. Possible values are NotSpecified, BuiltIn, Custom, and Static.
  final String? policyType;

  /// The system metadata relating to this resource.
  final SystemDataResponse systemData;

  /// The type of the resource (Microsoft.Authorization/policyDefinitions).
  final String type;

  /// The policy definition version in #.#.# format.
  final String? version;

  /// A list of available versions for this policy definition.
  final List<String>? versions;

  /// Creates a new [GetPolicyDefinitionAtManagementGroupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] The policy definition description.
  /// [displayName] The display name of the policy definition.
  /// [id] The ID of the policy definition.
  /// [metadata] The policy definition metadata.  Metadata is an open ended object and is typically a collection of key value pairs.
  /// [mode] The policy definition mode. Some examples are All, Indexed, Microsoft.KeyVault.Data.
  /// [name] The name of the policy definition.
  /// [parameters] The parameter definitions for parameters used in the policy rule. The keys are the parameter names.
  /// [policyRule] The policy rule.
  /// [policyType] The type of policy definition. Possible values are NotSpecified, BuiltIn, Custom, and Static.
  /// [systemData] The system metadata relating to this resource.
  /// [type] The type of the resource (Microsoft.Authorization/policyDefinitions).
  /// [version] The policy definition version in #.#.# format.
  /// [versions] A list of available versions for this policy definition.
  GetPolicyDefinitionAtManagementGroupResult({
    required this.azureApiVersion,
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
    this.versions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'displayName': ?displayName,
      'id': id,
      'metadata': ?metadata,
      'mode': ?mode,
      'name': name,
      'parameters': ?(() {
        final guardedValue = parameters;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeMapValues<
          ParameterDefinitionsValueResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'policyRule': ?policyRule,
      'policyType': ?policyType,
      'systemData': systemData.toMap(),
      'type': type,
      'version': ?version,
      'versions': ?versions,
    };
  }

  factory GetPolicyDefinitionAtManagementGroupResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetPolicyDefinitionAtManagementGroupResult(
      azureApiVersion: map['azureApiVersion'] as String,
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      metadata: (() {
        final guardedValue = map['metadata'];
        if (guardedValue == null) return null;
        return guardedValue;
      })(),
      mode: (() {
        final guardedValue = map['mode'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      name: map['name'] as String,
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeMapValues<ParameterDefinitionsValueResponse>(
          guardedValue,
          (value) => ParameterDefinitionsValueResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      policyRule: (() {
        final guardedValue = map['policyRule'];
        if (guardedValue == null) return null;
        return guardedValue;
      })(),
      policyType: (() {
        final guardedValue = map['policyType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      type: map['type'] as String,
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      versions: (() {
        final guardedValue = map['versions'];
        if (guardedValue == null) return null;
        return (guardedValue as List).cast<String>();
      })(),
    );
  }
}
