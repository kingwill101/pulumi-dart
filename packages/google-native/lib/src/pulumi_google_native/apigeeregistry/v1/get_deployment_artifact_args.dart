// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getDeploymentArtifact.
class GetDeploymentArtifactArgs {
  final Input<String> apiId;
  final Input<String> artifactId;
  final Input<String> deploymentId;
  final Input<String> location;
  final Input<String>? project;

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
      apiId: Input.asInput<String>(map['apiId']),
      artifactId: Input.asInput<String>(map['artifactId']),
      deploymentId: Input.asInput<String>(map['deploymentId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
