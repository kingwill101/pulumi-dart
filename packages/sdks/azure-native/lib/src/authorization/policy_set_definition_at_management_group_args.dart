// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_definitions_value.dart';
import 'policy_definition_group.dart';
import 'policy_definition_reference.dart';

/// {@template pulumi_authorization_policy_set_definition_at_management_group_args_doc}
/// The set of arguments for PolicySetDefinitionAtManagementGroup.
/// {@endtemplate}
/// {@macro pulumi_authorization_policy_set_definition_at_management_group_args_doc}
class PolicySetDefinitionAtManagementGroupArgs {
  /// The policy set definition description.
  final pulumi.Input<String>? description;
  /// The display name of the policy set definition.
  final pulumi.Input<String>? displayName;
  /// The ID of the management group.
  final pulumi.Input<String> managementGroupId;
  /// The policy set definition metadata.  Metadata is an open ended object and is typically a collection of key value pairs.
  final pulumi.Input<dynamic>? metadata;
  /// The policy set definition parameters that can be used in policy definition references.
  final pulumi.Input<Map<String, ParameterDefinitionsValue>>? parameters;
  /// The metadata describing groups of policy definition references within the policy set definition.
  final pulumi.Input<List<PolicyDefinitionGroup>>? policyDefinitionGroups;
  /// An array of policy definition references.
  final pulumi.Input<List<PolicyDefinitionReference>> policyDefinitions;
  /// The name of the policy set definition to create.
  final pulumi.Input<String>? policySetDefinitionName;
  /// The type of policy set definition. Possible values are NotSpecified, BuiltIn, Custom, and Static.
  final pulumi.Input<String>? policyType;
  /// The policy set definition version in #.#.# format.
  final pulumi.Input<String>? version;
  /// A list of available versions for this policy set definition.
  final pulumi.Input<List<String>>? versions;

  /// Creates a new [PolicySetDefinitionAtManagementGroupArgs].
  /// [description] The policy set definition description.
  /// [displayName] The display name of the policy set definition.
  /// [managementGroupId] The ID of the management group.
  /// [metadata] The policy set definition metadata.  Metadata is an open ended object and is typically a collection of key value pairs.
  /// [parameters] The policy set definition parameters that can be used in policy definition references.
  /// [policyDefinitionGroups] The metadata describing groups of policy definition references within the policy set definition.
  /// [policyDefinitions] An array of policy definition references.
  /// [policySetDefinitionName] The name of the policy set definition to create.
  /// [policyType] The type of policy set definition. Possible values are NotSpecified, BuiltIn, Custom, and Static.
  /// [version] The policy set definition version in #.#.# format.
  /// [versions] A list of available versions for this policy set definition.
  PolicySetDefinitionAtManagementGroupArgs({
    this.description,
    this.displayName,
    required this.managementGroupId,
    this.metadata,
    this.parameters,
    this.policyDefinitionGroups,
    required this.policyDefinitions,
    this.policySetDefinitionName,
    this.policyType,
    this.version,
    this.versions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'managementGroupId': managementGroupId,
      'metadata': ?metadata,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterDefinitionsValue>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterDefinitionsValue, Map<String, dynamic>>(value, (value) => value.toMap())),
      'policyDefinitionGroups': ?pulumi.Input.mapOptionalInputValue<List<PolicyDefinitionGroup>, List<Map<String, dynamic>>>(policyDefinitionGroups, (value) => pulumi.Input.encodeList<PolicyDefinitionGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'policyDefinitions': pulumi.Input.mapInputValue<List<PolicyDefinitionReference>, List<Map<String, dynamic>>>(policyDefinitions, (value) => pulumi.Input.encodeList<PolicyDefinitionReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'policySetDefinitionName': ?policySetDefinitionName,
      'policyType': ?policyType,
      'version': ?version,
      'versions': ?versions,
    };
  }

  factory PolicySetDefinitionAtManagementGroupArgs.fromMap(Map<String, dynamic> map) {
    return PolicySetDefinitionAtManagementGroupArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      managementGroupId: (map['managementGroupId'] as String).input(),
      metadata: map['metadata'] == null ? null : (map['metadata']).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeMapValues<ParameterDefinitionsValue>(map['parameters'], (value) => ParameterDefinitionsValue.fromMap((value as Map).cast<String, dynamic>()))).input(),
      policyDefinitionGroups: map['policyDefinitionGroups'] == null ? null : (pulumi.Input.decodeList<PolicyDefinitionGroup>(map['policyDefinitionGroups'], (value) => PolicyDefinitionGroup.fromMap((value as Map).cast<String, dynamic>()))).input(),
      policyDefinitions: (pulumi.Input.decodeList<PolicyDefinitionReference>(map['policyDefinitions'], (value) => PolicyDefinitionReference.fromMap((value as Map).cast<String, dynamic>()))).input(),
      policySetDefinitionName: map['policySetDefinitionName'] == null ? null : (map['policySetDefinitionName'] as String).input(),
      policyType: map['policyType'] == null ? null : (map['policyType'] as String).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
      versions: map['versions'] == null ? null : ((map['versions'] as List).cast<String>()).input(),
    );
  }
}

