// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_definitions_value.dart';
import 'policy_definition_group.dart';
import 'policy_definition_reference.dart';

/// {@template pulumi_authorization_policy_set_definition_version_args_doc}
/// The set of arguments for PolicySetDefinitionVersion.
/// {@endtemplate}
/// {@macro pulumi_authorization_policy_set_definition_version_args_doc}
class PolicySetDefinitionVersionArgs {
  /// The policy set definition description.
  final pulumi.Input<String>? description;
  /// The display name of the policy set definition.
  final pulumi.Input<String>? displayName;
  /// The policy set definition metadata.  Metadata is an open ended object and is typically a collection of key value pairs.
  final pulumi.Input<dynamic>? metadata;
  /// The policy set definition parameters that can be used in policy definition references.
  final pulumi.Input<Map<String, ParameterDefinitionsValue>>? parameters;
  /// The metadata describing groups of policy definition references within the policy set definition.
  final pulumi.Input<List<PolicyDefinitionGroup>>? policyDefinitionGroups;
  /// The policy set definition version.  The format is x.y.z where x is the major version number, y is the minor version number, and z is the patch number
  final pulumi.Input<String>? policyDefinitionVersion;
  /// An array of policy definition references.
  final pulumi.Input<List<PolicyDefinitionReference>> policyDefinitions;
  /// The name of the policy set definition.
  final pulumi.Input<String> policySetDefinitionName;
  /// The type of policy definition. Possible values are NotSpecified, BuiltIn, Custom, and Static.
  final pulumi.Input<String>? policyType;
  /// The policy set definition version in #.#.# format.
  final pulumi.Input<String>? version;

  /// Creates a new [PolicySetDefinitionVersionArgs].
  /// [description] The policy set definition description.
  /// [displayName] The display name of the policy set definition.
  /// [metadata] The policy set definition metadata.  Metadata is an open ended object and is typically a collection of key value pairs.
  /// [parameters] The policy set definition parameters that can be used in policy definition references.
  /// [policyDefinitionGroups] The metadata describing groups of policy definition references within the policy set definition.
  /// [policyDefinitionVersion] The policy set definition version.  The format is x.y.z where x is the major version number, y is the minor version number, and z is the patch number
  /// [policyDefinitions] An array of policy definition references.
  /// [policySetDefinitionName] The name of the policy set definition.
  /// [policyType] The type of policy definition. Possible values are NotSpecified, BuiltIn, Custom, and Static.
  /// [version] The policy set definition version in #.#.# format.
  PolicySetDefinitionVersionArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<dynamic>? metadata,
    pulumi.Output<Map<String, ParameterDefinitionsValue>>? parameters,
    pulumi.Output<List<PolicyDefinitionGroup>>? policyDefinitionGroups,
    pulumi.Output<String>? policyDefinitionVersion,
    required pulumi.Output<List<PolicyDefinitionReference>> policyDefinitions,
    required pulumi.Output<String> policySetDefinitionName,
    pulumi.Output<String>? policyType,
    pulumi.Output<String>? version,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      metadata = pulumi.Input.asOptionalInput<dynamic>(metadata),
      parameters = pulumi.Input.asOptionalInput<Map<String, ParameterDefinitionsValue>>(parameters),
      policyDefinitionGroups = pulumi.Input.asOptionalInput<List<PolicyDefinitionGroup>>(policyDefinitionGroups),
      policyDefinitionVersion = pulumi.Input.asOptionalInput<String>(policyDefinitionVersion),
      policyDefinitions = pulumi.Input.asInput<List<PolicyDefinitionReference>>(policyDefinitions),
      policySetDefinitionName = pulumi.Input.asInput<String>(policySetDefinitionName),
      policyType = pulumi.Input.asOptionalInput<String>(policyType),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'metadata': ?metadata,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterDefinitionsValue>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterDefinitionsValue, Map<String, dynamic>>(value, (value) => value.toMap())),
      'policyDefinitionGroups': ?pulumi.Input.mapOptionalInputValue<List<PolicyDefinitionGroup>, List<Map<String, dynamic>>>(policyDefinitionGroups, (value) => pulumi.Input.encodeList<PolicyDefinitionGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'policyDefinitionVersion': ?policyDefinitionVersion,
      'policyDefinitions': pulumi.Input.mapInputValue<List<PolicyDefinitionReference>, List<Map<String, dynamic>>>(policyDefinitions, (value) => pulumi.Input.encodeList<PolicyDefinitionReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'policySetDefinitionName': policySetDefinitionName,
      'policyType': ?policyType,
      'version': ?version,
    };
  }

  factory PolicySetDefinitionVersionArgs.fromMap(Map<String, dynamic> map) {
    return PolicySetDefinitionVersionArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<dynamic>(map['metadata']),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, ParameterDefinitionsValue>>(pulumi.Input.decodeMapValues<ParameterDefinitionsValue>(map['parameters'], (value) => ParameterDefinitionsValue.fromMap((value as Map).cast<String, dynamic>()))),
      policyDefinitionGroups: map['policyDefinitionGroups'] == null ? null : pulumi.Output.create<List<PolicyDefinitionGroup>>(pulumi.Input.decodeList<PolicyDefinitionGroup>(map['policyDefinitionGroups'], (value) => PolicyDefinitionGroup.fromMap((value as Map).cast<String, dynamic>()))),
      policyDefinitionVersion: map['policyDefinitionVersion'] == null ? null : pulumi.Output.create<String>(map['policyDefinitionVersion'] as String),
      policyDefinitions: pulumi.Output.create<List<PolicyDefinitionReference>>(pulumi.Input.decodeList<PolicyDefinitionReference>(map['policyDefinitions'], (value) => PolicyDefinitionReference.fromMap((value as Map).cast<String, dynamic>()))),
      policySetDefinitionName: pulumi.Output.create<String>(map['policySetDefinitionName'] as String),
      policyType: map['policyType'] == null ? null : pulumi.Output.create<String>(map['policyType'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

