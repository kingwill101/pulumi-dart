// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_blueprint_get_template_artifact_args_doc}
/// Arguments for getTemplateArtifact.
/// {@endtemplate}
/// {@macro pulumi_blueprint_get_template_artifact_args_doc}
class GetTemplateArtifactArgs {
  /// Name of the blueprint artifact.
  final pulumi.Input<String> artifactName;
  /// Name of the blueprint definition.
  final pulumi.Input<String> blueprintName;
  /// The scope of the resource. Valid scopes are: management group (format: '/providers/Microsoft.Management/managementGroups/{managementGroup}'), subscription (format: '/subscriptions/{subscriptionId}').
  final pulumi.Input<String> resourceScope;

  /// Creates a new [GetTemplateArtifactArgs].
  /// [artifactName] Name of the blueprint artifact.
  /// [blueprintName] Name of the blueprint definition.
  /// [resourceScope] The scope of the resource. Valid scopes are: management group (format: '/providers/Microsoft.Management/managementGroups/{managementGroup}'), subscription (format: '/subscriptions/{subscriptionId}').
  GetTemplateArtifactArgs({
    required String artifactName,
    required String blueprintName,
    required String resourceScope,
  }) :
      artifactName = pulumi.Input.asInput<String>(artifactName),
      blueprintName = pulumi.Input.asInput<String>(blueprintName),
      resourceScope = pulumi.Input.asInput<String>(resourceScope);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactName': artifactName,
      'blueprintName': blueprintName,
      'resourceScope': resourceScope,
    };
  }

  factory GetTemplateArtifactArgs.fromMap(Map<String, dynamic> map) {
    return GetTemplateArtifactArgs(
      artifactName: map['artifactName'] as String,
      blueprintName: map['blueprintName'] as String,
      resourceScope: map['resourceScope'] as String,
    );
  }
}

