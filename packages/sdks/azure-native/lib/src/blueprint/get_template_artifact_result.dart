// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_value_response.dart';

/// Result data returned by getTemplateArtifact.
class GetTemplateArtifactResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Artifacts which need to be deployed before the specified artifact.
  final List<String>? dependsOn;
  /// Multi-line explain this resource.
  final String? description;
  /// One-liner string explain this resource.
  final String? displayName;
  /// String Id used to locate any resource on Azure.
  final String id;
  /// Specifies the kind of blueprint artifact.
  /// Expected value is 'template'.
  final String kind;
  /// Name of this resource.
  final String name;
  /// Resource Manager template blueprint artifact parameter values.
  final Map<String, ParameterValueResponse> parameters;
  /// If applicable, the name of the resource group placeholder to which the Resource Manager template blueprint artifact will be deployed.
  final String? resourceGroup;
  /// The Resource Manager template blueprint artifact body.
  final dynamic template;
  /// Type of this resource.
  final String type;

  /// Creates a new [GetTemplateArtifactResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dependsOn] Artifacts which need to be deployed before the specified artifact.
  /// [description] Multi-line explain this resource.
  /// [displayName] One-liner string explain this resource.
  /// [id] String Id used to locate any resource on Azure.
  /// [kind] Specifies the kind of blueprint artifact.
  /// [name] Name of this resource.
  /// [parameters] Resource Manager template blueprint artifact parameter values.
  /// [resourceGroup] If applicable, the name of the resource group placeholder to which the Resource Manager template blueprint artifact will be deployed.
  /// [template] The Resource Manager template blueprint artifact body.
  /// [type] Type of this resource.
  const GetTemplateArtifactResult({
    required this.azureApiVersion,
    this.dependsOn,
    this.description,
    this.displayName,
    required this.id,
    required this.kind,
    required this.name,
    required this.parameters,
    this.resourceGroup,
    required this.template,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'dependsOn': ?dependsOn,
      'description': ?description,
      'displayName': ?displayName,
      'id': id,
      'kind': kind,
      'name': name,
      'parameters': pulumi.Input.encodeMapValues<ParameterValueResponse, Map<String, dynamic>>(parameters, (value) => value.toMap()),
      'resourceGroup': ?resourceGroup,
      'template': template,
      'type': type,
    };
  }

  factory GetTemplateArtifactResult.fromMap(Map<String, dynamic> map) {
    return GetTemplateArtifactResult(
      azureApiVersion: map['azureApiVersion'] as String,
      dependsOn: (() { final guardedValue = map['dependsOn']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
      parameters: pulumi.Input.decodeMapValues<ParameterValueResponse>(map['parameters']!, (value) => ParameterValueResponse.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroup: (() { final guardedValue = map['resourceGroup']; if (guardedValue == null) return null; return guardedValue as String; })(),
      template: map['template'],
      type: map['type'] as String,
    );
  }
}

