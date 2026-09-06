// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_value.dart';

/// {@template pulumi_blueprint_template_artifact_args_doc}
/// The set of arguments for TemplateArtifact.
/// {@endtemplate}
/// {@macro pulumi_blueprint_template_artifact_args_doc}
class TemplateArtifactArgs {
  /// Name of the blueprint artifact.
  final pulumi.Input<String?>? artifactName;
  /// Name of the blueprint definition.
  final pulumi.Input<String> blueprintName;
  /// Artifacts which need to be deployed before the specified artifact.
  final pulumi.Input<List<String>?>? dependsOn;
  /// Multi-line explain this resource.
  final pulumi.Input<String?>? description;
  /// One-liner string explain this resource.
  final pulumi.Input<String?>? displayName;
  /// Specifies the kind of blueprint artifact.
  /// Expected value is 'template'.
  final pulumi.Input<String> kind;
  /// Resource Manager template blueprint artifact parameter values.
  final pulumi.Input<Map<String, ParameterValue>> parameters;
  /// If applicable, the name of the resource group placeholder to which the Resource Manager template blueprint artifact will be deployed.
  final pulumi.Input<String?>? resourceGroup;
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
  const TemplateArtifactArgs({
    this.artifactName,
    required this.blueprintName,
    this.dependsOn,
    this.description,
    this.displayName,
    required this.kind,
    required this.parameters,
    this.resourceGroup,
    required this.resourceScope,
    required this.template,
  });

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
      artifactName: (() { final guardedValue = map['artifactName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      blueprintName: pulumi.Input.fromValue(map['blueprintName'] as String),
      dependsOn: (() { final guardedValue = map['dependsOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      parameters: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ParameterValue>(map['parameters']!, (value) => ParameterValue.fromMap((value as Map).cast<String, dynamic>()))),
      resourceGroup: (() { final guardedValue = map['resourceGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceScope: pulumi.Input.fromValue(map['resourceScope'] as String),
      template: pulumi.Input.fromValue(map['template']),
    );
  }
}
