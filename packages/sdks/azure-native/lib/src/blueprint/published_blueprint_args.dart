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
    required pulumi.Output<String> blueprintName,
    pulumi.Output<String>? changeNotes,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<Map<String, ParameterDefinition>>? parameters,
    pulumi.Output<Map<String, ResourceGroupDefinition>>? resourceGroups,
    required pulumi.Output<String> resourceScope,
    pulumi.Output<String>? targetScope,
    pulumi.Output<String>? versionId,
  }) :
      blueprintName = pulumi.Input.asInput<String>(blueprintName),
      changeNotes = pulumi.Input.asOptionalInput<String>(changeNotes),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      parameters = pulumi.Input.asOptionalInput<Map<String, ParameterDefinition>>(parameters),
      resourceGroups = pulumi.Input.asOptionalInput<Map<String, ResourceGroupDefinition>>(resourceGroups),
      resourceScope = pulumi.Input.asInput<String>(resourceScope),
      targetScope = pulumi.Input.asOptionalInput<String>(targetScope),
      versionId = pulumi.Input.asOptionalInput<String>(versionId);

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
      blueprintName: pulumi.Output.create<String>(map['blueprintName'] as String),
      changeNotes: map['changeNotes'] == null ? null : pulumi.Output.create<String>(map['changeNotes'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, ParameterDefinition>>(pulumi.Input.decodeMapValues<ParameterDefinition>(map['parameters'], (value) => ParameterDefinition.fromMap((value as Map).cast<String, dynamic>()))),
      resourceGroups: map['resourceGroups'] == null ? null : pulumi.Output.create<Map<String, ResourceGroupDefinition>>(pulumi.Input.decodeMapValues<ResourceGroupDefinition>(map['resourceGroups'], (value) => ResourceGroupDefinition.fromMap((value as Map).cast<String, dynamic>()))),
      resourceScope: pulumi.Output.create<String>(map['resourceScope'] as String),
      targetScope: map['targetScope'] == null ? null : pulumi.Output.create<String>(map['targetScope'] as String),
      versionId: map['versionId'] == null ? null : pulumi.Output.create<String>(map['versionId'] as String),
    );
  }
}

