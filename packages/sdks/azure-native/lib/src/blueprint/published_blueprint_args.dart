// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_definition.dart';
import 'resource_group_definition.dart';

/// {@template pulumi_blueprint_published_blueprint_args_doc}
/// The set of arguments for PublishedBlueprint.
/// {@endtemplate}
/// {@macro pulumi_blueprint_published_blueprint_args_doc}
class PublishedBlueprintArgs {
  /// Name of the published blueprint definition.
  final pulumi.Input<String> blueprintName;
  /// Version-specific change notes.
  final pulumi.Input<String>? changeNotes;
  /// Multi-line explain this resource.
  final pulumi.Input<String>? description;
  /// One-liner string explain this resource.
  final pulumi.Input<String>? displayName;
  /// Parameters required by this blueprint definition.
  final pulumi.Input<Map<String, ParameterDefinition>>? parameters;
  /// Resource group placeholders defined by this blueprint definition.
  final pulumi.Input<Map<String, ResourceGroupDefinition>>? resourceGroups;
  /// The scope of the resource. Valid scopes are: management group (format: '/providers/Microsoft.Management/managementGroups/{managementGroup}'), subscription (format: '/subscriptions/{subscriptionId}').
  final pulumi.Input<String> resourceScope;
  /// The scope where this blueprint definition can be assigned.
  final pulumi.Input<String>? targetScope;
  /// Version of the published blueprint definition.
  final pulumi.Input<String>? versionId;

  /// Creates a new [PublishedBlueprintArgs].
  /// [blueprintName] Name of the published blueprint definition.
  /// [changeNotes] Version-specific change notes.
  /// [description] Multi-line explain this resource.
  /// [displayName] One-liner string explain this resource.
  /// [parameters] Parameters required by this blueprint definition.
  /// [resourceGroups] Resource group placeholders defined by this blueprint definition.
  /// [resourceScope] The scope of the resource. Valid scopes are: management group (format: '/providers/Microsoft.Management/managementGroups/{managementGroup}'), subscription (format: '/subscriptions/{subscriptionId}').
  /// [targetScope] The scope where this blueprint definition can be assigned.
  /// [versionId] Version of the published blueprint definition.
  PublishedBlueprintArgs({
    required this.blueprintName,
    this.changeNotes,
    this.description,
    this.displayName,
    this.parameters,
    this.resourceGroups,
    required this.resourceScope,
    this.targetScope,
    this.versionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blueprintName': blueprintName,
      'changeNotes': ?changeNotes,
      'description': ?description,
      'displayName': ?displayName,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterDefinition>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterDefinition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroups': ?pulumi.Input.mapOptionalInputValue<Map<String, ResourceGroupDefinition>, Map<String, Map<String, dynamic>>>(resourceGroups, (value) => pulumi.Input.encodeMapValues<ResourceGroupDefinition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceScope': resourceScope,
      'targetScope': ?targetScope,
      'versionId': ?versionId,
    };
  }

  factory PublishedBlueprintArgs.fromMap(Map<String, dynamic> map) {
    return PublishedBlueprintArgs(
      blueprintName: (map['blueprintName'] as String).input(),
      changeNotes: map['changeNotes'] == null ? null : (map['changeNotes'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeMapValues<ParameterDefinition>(map['parameters'], (value) => ParameterDefinition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceGroups: map['resourceGroups'] == null ? null : (pulumi.Input.decodeMapValues<ResourceGroupDefinition>(map['resourceGroups'], (value) => ResourceGroupDefinition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceScope: (map['resourceScope'] as String).input(),
      targetScope: map['targetScope'] == null ? null : (map['targetScope'] as String).input(),
      versionId: map['versionId'] == null ? null : (map['versionId'] as String).input(),
    );
  }
}

