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
  PolicyDefinitionVersionArgs({
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
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      metadata: map['metadata'] == null ? null : (map['metadata']).input(),
      mode: map['mode'] == null ? null : (map['mode'] as String).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeMapValues<ParameterDefinitionsValue>(map['parameters'], (value) => ParameterDefinitionsValue.fromMap((value as Map).cast<String, dynamic>()))).input(),
      policyDefinitionName: (map['policyDefinitionName'] as String).input(),
      policyDefinitionVersion: map['policyDefinitionVersion'] == null ? null : (map['policyDefinitionVersion'] as String).input(),
      policyRule: map['policyRule'] == null ? null : (map['policyRule']).input(),
      policyType: map['policyType'] == null ? null : (map['policyType'] as String).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

