// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_definitions_value.dart';

/// {@template pulumi_authorization_policy_definition_version_at_management_group_args_doc}
/// The set of arguments for PolicyDefinitionVersionAtManagementGroup.
/// {@endtemplate}
/// {@macro pulumi_authorization_policy_definition_version_at_management_group_args_doc}
class PolicyDefinitionVersionAtManagementGroupArgs {
  /// The policy definition description.
  final pulumi.Input<String>? description;
  /// The display name of the policy definition.
  final pulumi.Input<String>? displayName;
  /// The name of the management group. The name is case insensitive.
  final pulumi.Input<String> managementGroupName;
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

  /// Creates a new [PolicyDefinitionVersionAtManagementGroupArgs].
  /// [description] The policy definition description.
  /// [displayName] The display name of the policy definition.
  /// [managementGroupName] The name of the management group. The name is case insensitive.
  /// [metadata] The policy definition metadata.  Metadata is an open ended object and is typically a collection of key value pairs.
  /// [mode] The policy definition mode. Some examples are All, Indexed, Microsoft.KeyVault.Data.
  /// [parameters] The parameter definitions for parameters used in the policy rule. The keys are the parameter names.
  /// [policyDefinitionName] The name of the policy definition.
  /// [policyDefinitionVersion] The policy definition version.  The format is x.y.z where x is the major version number, y is the minor version number, and z is the patch number
  /// [policyRule] The policy rule.
  /// [policyType] The type of policy definition. Possible values are NotSpecified, BuiltIn, Custom, and Static.
  /// [version] The policy definition version in #.#.# format.
  PolicyDefinitionVersionAtManagementGroupArgs({
    String? description,
    String? displayName,
    required String managementGroupName,
    dynamic metadata,
    String? mode,
    Map<String, ParameterDefinitionsValue>? parameters,
    required String policyDefinitionName,
    String? policyDefinitionVersion,
    dynamic policyRule,
    String? policyType,
    String? version,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      managementGroupName = pulumi.Input.asInput<String>(managementGroupName),
      metadata = pulumi.Input.asOptionalInput<dynamic>(metadata),
      mode = pulumi.Input.asOptionalInput<String>(mode),
      parameters = pulumi.Input.asOptionalInput<Map<String, ParameterDefinitionsValue>>(parameters),
      policyDefinitionName = pulumi.Input.asInput<String>(policyDefinitionName),
      policyDefinitionVersion = pulumi.Input.asOptionalInput<String>(policyDefinitionVersion),
      policyRule = pulumi.Input.asOptionalInput<dynamic>(policyRule),
      policyType = pulumi.Input.asOptionalInput<String>(policyType),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'managementGroupName': managementGroupName,
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

  factory PolicyDefinitionVersionAtManagementGroupArgs.fromMap(Map<String, dynamic> map) {
    return PolicyDefinitionVersionAtManagementGroupArgs(
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      managementGroupName: map['managementGroupName'] as String,
      metadata: map['metadata'] == null ? null : map['metadata'],
      mode: map['mode'] == null ? null : map['mode'] as String,
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterDefinitionsValue>(map['parameters'], (value) => ParameterDefinitionsValue.fromMap((value as Map).cast<String, dynamic>())),
      policyDefinitionName: map['policyDefinitionName'] as String,
      policyDefinitionVersion: map['policyDefinitionVersion'] == null ? null : map['policyDefinitionVersion'] as String,
      policyRule: map['policyRule'] == null ? null : map['policyRule'],
      policyType: map['policyType'] == null ? null : map['policyType'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

