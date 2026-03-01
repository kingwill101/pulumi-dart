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
    required String blueprintName,
    required String resourceScope,
    required String versionId,
  }) :
      blueprintName = pulumi.Input.asInput<String>(blueprintName),
      resourceScope = pulumi.Input.asInput<String>(resourceScope),
      versionId = pulumi.Input.asInput<String>(versionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blueprintName': blueprintName,
      'resourceScope': resourceScope,
      'versionId': versionId,
    };
  }

  factory GetPublishedBlueprintArgs.fromMap(Map<String, dynamic> map) {
    return GetPublishedBlueprintArgs(
      blueprintName: map['blueprintName'] as String,
      resourceScope: map['resourceScope'] as String,
      versionId: map['versionId'] as String,
    );
  }
}

