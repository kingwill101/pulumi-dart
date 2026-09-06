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
  final pulumi.Input<String?>? description;
  /// The display name of the policy set definition.
  final pulumi.Input<String?>? displayName;
  /// The policy set definition metadata.  Metadata is an open ended object and is typically a collection of key value pairs.
  final pulumi.Input<dynamic>? metadata;
  /// The policy set definition parameters that can be used in policy definition references.
  final pulumi.Input<Map<String, ParameterDefinitionsValue>?>? parameters;
  /// The metadata describing groups of policy definition references within the policy set definition.
  final pulumi.Input<List<PolicyDefinitionGroup>?>? policyDefinitionGroups;
  /// The policy set definition version.  The format is x.y.z where x is the major version number, y is the minor version number, and z is the patch number
  final pulumi.Input<String?>? policyDefinitionVersion;
  /// An array of policy definition references.
  final pulumi.Input<List<PolicyDefinitionReference>> policyDefinitions;
  /// The name of the policy set definition.
  final pulumi.Input<String> policySetDefinitionName;
  /// The type of policy definition. Possible values are NotSpecified, BuiltIn, Custom, and Static.
  final pulumi.Input<dynamic>? policyType;
  /// The policy set definition version in #.#.# format.
  final pulumi.Input<String?>? version;

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
  const PolicySetDefinitionVersionArgs({
    this.description,
    this.displayName,
    this.metadata,
    this.parameters,
    this.policyDefinitionGroups,
    this.policyDefinitionVersion,
    required this.policyDefinitions,
    required this.policySetDefinitionName,
    this.policyType,
    this.version,
  });

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
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ParameterDefinitionsValue>(guardedValue, (value) => ParameterDefinitionsValue.fromMap((value as Map).cast<String, dynamic>()))); })(),
      policyDefinitionGroups: (() { final guardedValue = map['policyDefinitionGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PolicyDefinitionGroup>(guardedValue, (value) => PolicyDefinitionGroup.fromMap((value as Map).cast<String, dynamic>()))); })(),
      policyDefinitionVersion: (() { final guardedValue = map['policyDefinitionVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyDefinitions: pulumi.Input.fromValue(pulumi.Input.decodeList<PolicyDefinitionReference>(map['policyDefinitions']!, (value) => PolicyDefinitionReference.fromMap((value as Map).cast<String, dynamic>()))),
      policySetDefinitionName: pulumi.Input.fromValue(map['policySetDefinitionName'] as String),
      policyType: (() { final guardedValue = map['policyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
