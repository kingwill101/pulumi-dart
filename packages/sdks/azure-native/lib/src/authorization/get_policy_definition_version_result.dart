// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_definitions_value_response.dart';
import 'system_data_response.dart';

/// Result data returned by getPolicyDefinitionVersion.
class GetPolicyDefinitionVersionResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The policy definition description.
  final String? description;
  /// The display name of the policy definition.
  final String? displayName;
  /// The ID of the policy definition version.
  final String? id;
  /// The policy definition metadata.  Metadata is an open ended object and is typically a collection of key value pairs.
  final dynamic metadata;
  /// The policy definition mode. Some examples are All, Indexed, Microsoft.KeyVault.Data.
  final String? mode;
  /// The name of the policy definition version.
  final String? name;
  /// The parameter definitions for parameters used in the policy rule. The keys are the parameter names.
  final Map<String, ParameterDefinitionsValueResponse>? parameters;
  /// The policy rule.
  final dynamic policyRule;
  /// The type of policy definition. Possible values are NotSpecified, BuiltIn, Custom, and Static.
  final String? policyType;
  /// The system metadata relating to this resource.
  final SystemDataResponse? systemData;
  /// The type of the resource (Microsoft.Authorization/policyDefinitions/versions).
  final String? type;
  /// The policy definition version in #.#.# format.
  final String? version;

  /// Creates a new [GetPolicyDefinitionVersionResult].
  /// [azureApiVersion] The Azure API version of the resource.
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
  GetPolicyDefinitionVersionResult({
    this.azureApiVersion,
    this.description,
    this.displayName,
    this.id,
    this.metadata,
    String? mode,
    this.name,
    this.parameters,
    this.policyRule,
    this.policyType,
    this.systemData,
    this.type,
    this.version,
  }) : mode = mode ?? 'Indexed';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'description': ?description,
      'displayName': ?displayName,
      'id': ?id,
      'metadata': ?metadata,
      'mode': ?mode,
      'name': ?name,
      'parameters': ?(() { final guardedValue = parameters; if (guardedValue == null) return null; return pulumi.Input.encodeMapValues<ParameterDefinitionsValueResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'policyRule': ?policyRule,
      'policyType': ?policyType,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
      'version': ?version,
    };
  }

  factory GetPolicyDefinitionVersionResult.fromMap(Map<String, dynamic> map) {
    return GetPolicyDefinitionVersionResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return guardedValue; })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<ParameterDefinitionsValueResponse>(guardedValue, (value) => ParameterDefinitionsValueResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      policyRule: (() { final guardedValue = map['policyRule']; if (guardedValue == null) return null; return guardedValue; })(),
      policyType: (() { final guardedValue = map['policyType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
