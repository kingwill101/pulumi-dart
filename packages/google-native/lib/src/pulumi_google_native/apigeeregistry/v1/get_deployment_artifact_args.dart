// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDeploymentArtifact.
class GetDeploymentArtifactArgs {
  final pulumi.Input<String> apiId;
  final pulumi.Input<String> artifactId;
  final pulumi.Input<String> deploymentId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetDeploymentArtifactArgs({
    required this.apiId,
    required this.artifactId,
    required this.deploymentId,
    required this.location,
    this.project,
  });

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
      apiId: pulumi.Input.asInput<String>(map['apiId']),
      artifactId: pulumi.Input.asInput<String>(map['artifactId']),
      deploymentId: pulumi.Input.asInput<String>(map['deploymentId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
