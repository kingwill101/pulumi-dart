// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_definitions_value.dart';

/// {@template pulumi_authorization_policy_definition_args_doc}
/// The set of arguments for PolicyDefinition.
/// {@endtemplate}
/// {@macro pulumi_authorization_policy_definition_args_doc}
class PolicyDefinitionArgs {
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
  /// The name of the policy definition to create.
  final pulumi.Input<String>? policyDefinitionName;
  /// The policy rule.
  final pulumi.Input<dynamic>? policyRule;
  /// The type of policy definition. Possible values are NotSpecified, BuiltIn, Custom, and Static.
  final pulumi.Input<String>? policyType;
  /// The policy definition version in #.#.# format.
  final pulumi.Input<String>? version;
  /// A list of available versions for this policy definition.
  final pulumi.Input<List<String>>? versions;

  /// Creates a new [PolicyDefinitionArgs].
  /// [description] The policy definition description.
  /// [displayName] The display name of the policy definition.
  /// [metadata] The policy definition metadata.  Metadata is an open ended object and is typically a collection of key value pairs.
  /// [mode] The policy definition mode. Some examples are All, Indexed, Microsoft.KeyVault.Data.
  /// [parameters] The parameter definitions for parameters used in the policy rule. The keys are the parameter names.
  /// [policyDefinitionName] The name of the policy definition to create.
  /// [policyRule] The policy rule.
  /// [policyType] The type of policy definition. Possible values are NotSpecified, BuiltIn, Custom, and Static.
  /// [version] The policy definition version in #.#.# format.
  /// [versions] A list of available versions for this policy definition.
  PolicyDefinitionArgs({
    String? description,
    String? displayName,
    dynamic metadata,
    String? mode,
    Map<String, ParameterDefinitionsValue>? parameters,
    String? policyDefinitionName,
    dynamic policyRule,
    String? policyType,
    String? version,
    List<String>? versions,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      metadata = pulumi.Input.asOptionalInput<dynamic>(metadata),
      mode = pulumi.Input.asOptionalInput<String>(mode),
      parameters = pulumi.Input.asOptionalInput<Map<String, ParameterDefinitionsValue>>(parameters),
      policyDefinitionName = pulumi.Input.asOptionalInput<String>(policyDefinitionName),
      policyRule = pulumi.Input.asOptionalInput<dynamic>(policyRule),
      policyType = pulumi.Input.asOptionalInput<String>(policyType),
      version = pulumi.Input.asOptionalInput<String>(version),
      versions = pulumi.Input.asOptionalInput<List<String>>(versions);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'metadata': ?metadata,
      'mode': ?mode,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterDefinitionsValue>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterDefinitionsValue, Map<String, dynamic>>(value, (value) => value.toMap())),
      'policyDefinitionName': ?policyDefinitionName,
      'policyRule': ?policyRule,
      'policyType': ?policyType,
      'version': ?version,
      'versions': ?versions,
    };
  }

  factory PolicyDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return PolicyDefinitionArgs(
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      metadata: map['metadata'] == null ? null : map['metadata'],
      mode: map['mode'] == null ? null : map['mode'] as String,
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterDefinitionsValue>(map['parameters'], (value) => ParameterDefinitionsValue.fromMap((value as Map).cast<String, dynamic>())),
      policyDefinitionName: map['policyDefinitionName'] == null ? null : map['policyDefinitionName'] as String,
      policyRule: map['policyRule'] == null ? null : map['policyRule'],
      policyType: map['policyType'] == null ? null : map['policyType'] as String,
      version: map['version'] == null ? null : map['version'] as String,
      versions: map['versions'] == null ? null : (map['versions'] as List).cast<String>(),
    );
  }
}

