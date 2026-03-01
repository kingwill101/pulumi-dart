// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_policy_set_definition_policy_definition_group.dart';
import 'group_policy_set_definition_policy_definition_reference.dart';

/// {@template pulumi_management_group_policy_set_definition_group_policy_set_definition_args_doc}
/// The set of arguments for GroupPolicySetDefinition.
/// {@endtemplate}
/// {@macro pulumi_management_group_policy_set_definition_group_policy_set_definition_args_doc}
class GroupPolicySetDefinitionArgs {
  /// The description of this Policy Set Definition.
  final pulumi.Input<String>? description;
  /// The display name of this Policy Set Definition.
  final pulumi.Input<String> displayName;
  /// The ID of the Management Group where this Policy Set Definition should be created. Changing this forces a new Policy Set Definition to be created.
  final pulumi.Input<String> managementGroupId;
  /// The metadata for the Policy Set Definition in JSON format.
  final pulumi.Input<String>? metadata;
  /// The name which should be used for this Policy Set Definition. Changing this forces a new Policy Set Definition to be created.
  final pulumi.Input<String>? name;
  /// The parameters for the Policy Set Definition in JSON format. Reducing the number of parameters forces a new resource to be created.
  final pulumi.Input<String>? parameters;
  /// One or more `policy_definition_group` blocks as defined below.
  final pulumi.Input<List<GroupPolicySetDefinitionPolicyDefinitionGroup>>? policyDefinitionGroups;
  /// One or more `policy_definition_reference` blocks as defined below.
  final pulumi.Input<List<GroupPolicySetDefinitionPolicyDefinitionReference>> policyDefinitionReferences;
  /// The Policy Set Definition type. Possible values are `BuiltIn`, `Custom`, `NotSpecified`, and `Static`. Changing this forces a new Policy Set Definition to be created.
  final pulumi.Input<String> policyType;

  /// Creates a new [GroupPolicySetDefinitionArgs].
  /// [description] The description of this Policy Set Definition.
  /// [displayName] The display name of this Policy Set Definition.
  /// [managementGroupId] The ID of the Management Group where this Policy Set Definition should be created. Changing this forces a new Policy Set Definition to be created.
  /// [metadata] The metadata for the Policy Set Definition in JSON format.
  /// [name] The name which should be used for this Policy Set Definition. Changing this forces a new Policy Set Definition to be created.
  /// [parameters] The parameters for the Policy Set Definition in JSON format. Reducing the number of parameters forces a new resource to be created.
  /// [policyDefinitionGroups] One or more `policy_definition_group` blocks as defined below.
  /// [policyDefinitionReferences] One or more `policy_definition_reference` blocks as defined below.
  /// [policyType] The Policy Set Definition type. Possible values are `BuiltIn`, `Custom`, `NotSpecified`, and `Static`. Changing this forces a new Policy Set Definition to be created.
  GroupPolicySetDefinitionArgs({
    String? description,
    required String displayName,
    required String managementGroupId,
    String? metadata,
    String? name,
    String? parameters,
    List<GroupPolicySetDefinitionPolicyDefinitionGroup>? policyDefinitionGroups,
    required List<GroupPolicySetDefinitionPolicyDefinitionReference> policyDefinitionReferences,
    required String policyType,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      managementGroupId = pulumi.Input.asInput<String>(managementGroupId),
      metadata = pulumi.Input.asOptionalInput<String>(metadata),
      name = pulumi.Input.asOptionalInput<String>(name),
      parameters = pulumi.Input.asOptionalInput<String>(parameters),
      policyDefinitionGroups = pulumi.Input.asOptionalInput<List<GroupPolicySetDefinitionPolicyDefinitionGroup>>(policyDefinitionGroups),
      policyDefinitionReferences = pulumi.Input.asInput<List<GroupPolicySetDefinitionPolicyDefinitionReference>>(policyDefinitionReferences),
      policyType = pulumi.Input.asInput<String>(policyType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': displayName,
      'managementGroupId': managementGroupId,
      'metadata': ?metadata,
      'name': ?name,
      'parameters': ?parameters,
      'policyDefinitionGroups': ?pulumi.Input.mapOptionalInputValue<List<GroupPolicySetDefinitionPolicyDefinitionGroup>, List<Map<String, dynamic>>>(policyDefinitionGroups, (value) => pulumi.Input.encodeList<GroupPolicySetDefinitionPolicyDefinitionGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'policyDefinitionReferences': pulumi.Input.mapInputValue<List<GroupPolicySetDefinitionPolicyDefinitionReference>, List<Map<String, dynamic>>>(policyDefinitionReferences, (value) => pulumi.Input.encodeList<GroupPolicySetDefinitionPolicyDefinitionReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'policyType': policyType,
    };
  }

  factory GroupPolicySetDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return GroupPolicySetDefinitionArgs(
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] as String,
      managementGroupId: map['managementGroupId'] as String,
      metadata: map['metadata'] == null ? null : map['metadata'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      parameters: map['parameters'] == null ? null : map['parameters'] as String,
      policyDefinitionGroups: map['policyDefinitionGroups'] == null ? null : pulumi.Input.decodeList<GroupPolicySetDefinitionPolicyDefinitionGroup>(map['policyDefinitionGroups'], (value) => GroupPolicySetDefinitionPolicyDefinitionGroup.fromMap((value as Map).cast<String, dynamic>())),
      policyDefinitionReferences: pulumi.Input.decodeList<GroupPolicySetDefinitionPolicyDefinitionReference>(map['policyDefinitionReferences'], (value) => GroupPolicySetDefinitionPolicyDefinitionReference.fromMap((value as Map).cast<String, dynamic>())),
      policyType: map['policyType'] as String,
    );
  }
}

