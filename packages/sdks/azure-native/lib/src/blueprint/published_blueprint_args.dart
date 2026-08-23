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
  const PublishedBlueprintArgs({
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
      blueprintName: pulumi.Input.fromValue(map['blueprintName'] as String),
      changeNotes: (() { final guardedValue = map['changeNotes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ParameterDefinition>(guardedValue, (value) => ParameterDefinition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceGroups: (() { final guardedValue = map['resourceGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ResourceGroupDefinition>(guardedValue, (value) => ResourceGroupDefinition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceScope: pulumi.Input.fromValue(map['resourceScope'] as String),
      targetScope: (() { final guardedValue = map['targetScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versionId: (() { final guardedValue = map['versionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
