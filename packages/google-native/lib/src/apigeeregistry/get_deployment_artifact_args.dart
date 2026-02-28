// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigeeregistry_v1_get_deployment_artifact_args_doc}
/// Arguments for getDeploymentArtifact.
/// {@endtemplate}
/// {@macro pulumi_apigeeregistry_v1_get_deployment_artifact_args_doc}
class GetDeploymentArtifactArgs {
  final pulumi.Input<String> apiId;
  final pulumi.Input<String> artifactId;
  final pulumi.Input<String> deploymentId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDeploymentArtifactArgs].
  /// [apiId] Required.
  /// [artifactId] Required.
  /// [deploymentId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetDeploymentArtifactArgs({
    required String apiId,
    required String artifactId,
    required String deploymentId,
    required String location,
    String? project,
  })  : apiId = pulumi.Input.asInput<String>(apiId),
        artifactId = pulumi.Input.asInput<String>(artifactId),
        deploymentId = pulumi.Input.asInput<String>(deploymentId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiId'] = apiId;
    map['artifactId'] = artifactId;
    map['deploymentId'] = deploymentId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDeploymentArtifactArgs.fromMap(Map<String, dynamic> map) {
    return GetDeploymentArtifactArgs(
      apiId: map['apiId'] as String,
      artifactId: map['artifactId'] as String,
      deploymentId: map['deploymentId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
