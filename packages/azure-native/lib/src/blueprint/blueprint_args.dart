// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_definition.dart';
import 'resource_group_definition.dart';

/// {@template pulumi_blueprint_blueprint_args_doc}
/// The set of arguments for Blueprint.
/// {@endtemplate}
/// {@macro pulumi_blueprint_blueprint_args_doc}
class BlueprintArgs {
  /// Name of the blueprint definition.
  final pulumi.Input<String>? blueprintName;
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
  final pulumi.Input<String> targetScope;
  /// Published versions of this blueprint definition.
  final pulumi.Input<dynamic>? versions;

  /// Creates a new [BlueprintArgs].
  /// [blueprintName] Name of the blueprint definition.
  /// [description] Multi-line explain this resource.
  /// [displayName] One-liner string explain this resource.
  /// [parameters] Parameters required by this blueprint definition.
  /// [resourceGroups] Resource group placeholders defined by this blueprint definition.
  /// [resourceScope] The scope of the resource. Valid scopes are: management group (format: '/providers/Microsoft.Management/managementGroups/{managementGroup}'), subscription (format: '/subscriptions/{subscriptionId}').
  /// [targetScope] The scope where this blueprint definition can be assigned.
  /// [versions] Published versions of this blueprint definition.
  BlueprintArgs({
    String? blueprintName,
    String? description,
    String? displayName,
    Map<String, ParameterDefinition>? parameters,
    Map<String, ResourceGroupDefinition>? resourceGroups,
    required String resourceScope,
    required String targetScope,
    dynamic versions,
  }) :
      blueprintName = pulumi.Input.asOptionalInput<String>(blueprintName),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      parameters = pulumi.Input.asOptionalInput<Map<String, ParameterDefinition>>(parameters),
      resourceGroups = pulumi.Input.asOptionalInput<Map<String, ResourceGroupDefinition>>(resourceGroups),
      resourceScope = pulumi.Input.asInput<String>(resourceScope),
      targetScope = pulumi.Input.asInput<String>(targetScope),
      versions = pulumi.Input.asOptionalInput<dynamic>(versions);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blueprintName': ?blueprintName,
      'description': ?description,
      'displayName': ?displayName,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterDefinition>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterDefinition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroups': ?pulumi.Input.mapOptionalInputValue<Map<String, ResourceGroupDefinition>, Map<String, Map<String, dynamic>>>(resourceGroups, (value) => pulumi.Input.encodeMapValues<ResourceGroupDefinition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceScope': resourceScope,
      'targetScope': targetScope,
      'versions': ?versions,
    };
  }

  factory BlueprintArgs.fromMap(Map<String, dynamic> map) {
    return BlueprintArgs(
      blueprintName: map['blueprintName'] == null ? null : map['blueprintName'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterDefinition>(map['parameters'], (value) => ParameterDefinition.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroups: map['resourceGroups'] == null ? null : pulumi.Input.decodeMapValues<ResourceGroupDefinition>(map['resourceGroups'], (value) => ResourceGroupDefinition.fromMap((value as Map).cast<String, dynamic>())),
      resourceScope: map['resourceScope'] as String,
      targetScope: map['targetScope'] as String,
      versions: map['versions'] == null ? null : map['versions'],
    );
  }
}

