// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_definitions_value.dart';

/// {@template pulumi_authorization_policy_definition_version_args_doc}
/// The set of arguments for PolicyDefinitionVersion.
/// {@endtemplate}
/// {@macro pulumi_authorization_policy_definition_version_args_doc}
class PolicyDefinitionVersionArgs {
  /// The policy definition description.
  final pulumi.Input<String>? description;
  /// The display name of the policy definition.
  final pulumi.Input<String>? displayName;
  /// The policy definition metadata.  Metadata is an open ended object and is typically a collection of key value pairs.
  final pulumi.Input<dynamic>? metadata;
  /// The policy definition mode. Some examples are All, Indexed, Microsoft.KeyVault.Data.
  final pulumi.Input<String>? mode;
  /// The parameter definitions for parameters used in the policy rule. The keys are the parameter names.
  final pulumi.Input<Map<String, ParameterDefinitionsValue>>? parameters;
  /// The name of the policy definition.
  final pulumi.Input<String> policyDefinitionName;
  /// The policy definition version.  The format is x.y.z where x is the major version number, y is the minor version number, and z is the patch number
  final pulumi.Input<String>? policyDefinitionVersion;
  /// The policy rule.
  final pulumi.Input<dynamic>? policyRule;
  /// The type of policy definition. Possible values are NotSpecified, BuiltIn, Custom, and Static.
  final pulumi.Input<String>? policyType;
  /// The policy definition version in #.#.# format.
  final pulumi.Input<String>? version;

  /// Creates a new [PolicyDefinitionVersionArgs].
  /// [description] The policy definition description.
  /// [displayName] The display name of the policy definition.
  /// [metadata] The policy definition metadata.  Metadata is an open ended object and is typically a collection of key value pairs.
  /// [mode] The policy definition mode. Some examples are All, Indexed, Microsoft.KeyVault.Data.
  /// [parameters] The parameter definitions for parameters used in the policy rule. The keys are the parameter names.
  /// [policyDefinitionName] The name of the policy definition.
  /// [policyDefinitionVersion] The policy definition version.  The format is x.y.z where x is the major version number, y is the minor version number, and z is the patch number
  /// [policyRule] The policy rule.
  /// [policyType] The type of policy definition. Possible values are NotSpecified, BuiltIn, Custom, and Static.
  /// [version] The policy definition version in #.#.# format.
  const PolicyDefinitionVersionArgs({
    this.description,
    this.displayName,
    this.metadata,
    this.mode,
    this.parameters,
    required this.policyDefinitionName,
    this.policyDefinitionVersion,
    this.policyRule,
    this.policyType,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'metadata': ?metadata,
      'mode': ?mode,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterDefinitionsValue>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterDefinitionsValue, Map<String, dynamic>>(value, (value) => value.toMap())),
      'policyDefinitionName': policyDefinitionName,
      'policyDefinitionVersion': ?policyDefinitionVersion,
      'policyRule': ?policyRule,
      'policyType': ?policyType,
      'version': ?version,
    };
  }

  factory PolicyDefinitionVersionArgs.fromMap(Map<String, dynamic> map) {
    return PolicyDefinitionVersionArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ParameterDefinitionsValue>(guardedValue, (value) => ParameterDefinitionsValue.fromMap((value as Map).cast<String, dynamic>()))); })(),
      policyDefinitionName: pulumi.Input.fromValue(map['policyDefinitionName'] as String),
      policyDefinitionVersion: (() { final guardedValue = map['policyDefinitionVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyRule: (() { final guardedValue = map['policyRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      policyType: (() { final guardedValue = map['policyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
