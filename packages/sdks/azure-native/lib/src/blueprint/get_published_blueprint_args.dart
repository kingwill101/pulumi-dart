// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_blueprint_get_published_blueprint_args_doc}
/// Arguments for getPublishedBlueprint.
/// {@endtemplate}
/// {@macro pulumi_blueprint_get_published_blueprint_args_doc}
class GetPublishedBlueprintArgs {
  /// Name of the blueprint definition.
  final pulumi.Input<String> blueprintName;
  /// The scope of the resource. Valid scopes are: management group (format: '/providers/Microsoft.Management/managementGroups/{managementGroup}'), subscription (format: '/subscriptions/{subscriptionId}').
  final pulumi.Input<String> resourceScope;
  /// Version of the published blueprint definition.
  final pulumi.Input<String> versionId;

  /// Creates a new [GetPublishedBlueprintArgs].
  /// [blueprintName] Name of the blueprint definition.
  /// [resourceScope] The scope of the resource. Valid scopes are: management group (format: '/providers/Microsoft.Management/managementGroups/{managementGroup}'), subscription (format: '/subscriptions/{subscriptionId}').
  /// [versionId] Version of the published blueprint definition.
  GetPublishedBlueprintArgs({
    required this.blueprintName,
    required this.resourceScope,
    required this.versionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blueprintName': blueprintName,
      'resourceScope': resourceScope,
      'versionId': versionId,
    };
  }

  factory GetPublishedBlueprintArgs.fromMap(Map<String, dynamic> map) {
    return GetPublishedBlueprintArgs(
      blueprintName: pulumi.Input.fromValue(map['blueprintName'] as String),
      resourceScope: pulumi.Input.fromValue(map['resourceScope'] as String),
      versionId: pulumi.Input.fromValue(map['versionId'] as String),
    );
  }
}

