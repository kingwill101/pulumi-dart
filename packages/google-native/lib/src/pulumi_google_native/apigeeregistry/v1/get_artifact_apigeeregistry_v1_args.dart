// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getArtifact.
class GetArtifactApigeeregistryV1Args {
  final pulumi.Input<String> apiId;
  final pulumi.Input<String> artifactId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> specId;
  final pulumi.Input<String> versionId;

  GetArtifactApigeeregistryV1Args({
    required this.apiId,
    required this.artifactId,
    required this.location,
    this.project,
    required this.specId,
    required this.versionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiId'] = apiId;
    map['artifactId'] = artifactId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['specId'] = specId;
    map['versionId'] = versionId;
    return map;
  }

  factory GetArtifactApigeeregistryV1Args.fromMap(Map<String, dynamic> map) {
    return GetArtifactApigeeregistryV1Args(
      apiId: pulumi.Input.asInput<String>(map['apiId']),
      artifactId: pulumi.Input.asInput<String>(map['artifactId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      specId: pulumi.Input.asInput<String>(map['specId']),
      versionId: pulumi.Input.asInput<String>(map['versionId']),
    );
  }
}
