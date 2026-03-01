// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_value.dart';

/// {@template pulumi_blueprint_template_artifact_args_doc}
/// The set of arguments for TemplateArtifact.
/// {@endtemplate}
/// {@macro pulumi_blueprint_template_artifact_args_doc}
class TemplateArtifactArgs {
  /// Name of the blueprint artifact.
  final pulumi.Input<String>? artifactName;
  /// Name of the blueprint definition.
  final pulumi.Input<String> blueprintName;
  /// Artifacts which need to be deployed before the specified artifact.
  final pulumi.Input<List<String>>? dependsOn;
  /// Multi-line explain this resource.
  final pulumi.Input<String>? description;
  /// One-liner string explain this resource.
  final pulumi.Input<String>? displayName;
  /// Specifies the kind of blueprint artifact.
  /// Expected value is 'template'.
  final pulumi.Input<String> kind;
  /// Resource Manager template blueprint artifact parameter values.
  final pulumi.Input<Map<String, ParameterValue>> parameters;
  /// If applicable, the name of the resource group placeholder to which the Resource Manager template blueprint artifact will be deployed.
  final pulumi.Input<String>? resourceGroup;
  /// The scope of the resource. Valid scopes are: management group (format: '/providers/Microsoft.Management/managementGroups/{managementGroup}'), subscription (format: '/subscriptions/{subscriptionId}').
  final pulumi.Input<String> resourceScope;
  /// The Resource Manager template blueprint artifact body.
  final pulumi.Input<dynamic> template;

  /// Creates a new [TemplateArtifactArgs].
  /// [artifactName] Name of the blueprint artifact.
  /// [blueprintName] Name of the blueprint definition.
  /// [dependsOn] Artifacts which need to be deployed before the specified artifact.
  /// [description] Multi-line explain this resource.
  /// [displayName] One-liner string explain this resource.
  /// [kind] Specifies the kind of blueprint artifact.
  /// [parameters] Resource Manager template blueprint artifact parameter values.
  /// [resourceGroup] If applicable, the name of the resource group placeholder to which the Resource Manager template blueprint artifact will be deployed.
  /// [resourceScope] The scope of the resource. Valid scopes are: management group (format: '/providers/Microsoft.Management/managementGroups/{managementGroup}'), subscription (format: '/subscriptions/{subscriptionId}').
  /// [template] The Resource Manager template blueprint artifact body.
  TemplateArtifactArgs({
    String? artifactName,
    required String blueprintName,
    List<String>? dependsOn,
    String? description,
    String? displayName,
    required String kind,
    required Map<String, ParameterValue> parameters,
    String? resourceGroup,
    required String resourceScope,
    required dynamic template,
  }) :
      artifactName = pulumi.Input.asOptionalInput<String>(artifactName),
      blueprintName = pulumi.Input.asInput<String>(blueprintName),
      dependsOn = pulumi.Input.asOptionalInput<List<String>>(dependsOn),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      kind = pulumi.Input.asInput<String>(kind),
      parameters = pulumi.Input.asInput<Map<String, ParameterValue>>(parameters),
      resourceGroup = pulumi.Input.asOptionalInput<String>(resourceGroup),
      resourceScope = pulumi.Input.asInput<String>(resourceScope),
      template = pulumi.Input.asInput<dynamic>(template);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactName': ?artifactName,
      'blueprintName': blueprintName,
      'dependsOn': ?dependsOn,
      'description': ?description,
      'displayName': ?displayName,
      'kind': kind,
      'parameters': pulumi.Input.mapInputValue<Map<String, ParameterValue>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterValue, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroup': ?resourceGroup,
      'resourceScope': resourceScope,
      'template': template,
    };
  }

  factory TemplateArtifactArgs.fromMap(Map<String, dynamic> map) {
    return TemplateArtifactArgs(
      artifactName: map['artifactName'] == null ? null : map['artifactName'] as String,
      blueprintName: map['blueprintName'] as String,
      dependsOn: map['dependsOn'] == null ? null : (map['dependsOn'] as List).cast<String>(),
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      kind: map['kind'] as String,
      parameters: pulumi.Input.decodeMapValues<ParameterValue>(map['parameters'], (value) => ParameterValue.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroup: map['resourceGroup'] == null ? null : map['resourceGroup'] as String,
      resourceScope: map['resourceScope'] as String,
      template: map['template'],
    );
  }
}

