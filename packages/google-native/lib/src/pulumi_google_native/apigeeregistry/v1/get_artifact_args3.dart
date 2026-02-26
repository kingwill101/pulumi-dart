// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getArtifact.
class GetArtifactArgs3 {
  final Input<String> apiId;
  final Input<String> artifactId;
  final Input<String> location;
  final Input<String>? project;
  final Input<String> specId;
  final Input<String> versionId;

  GetArtifactArgs3({
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

  factory GetArtifactArgs3.fromMap(Map<String, dynamic> map) {
    return GetArtifactArgs3(
      apiId: Input.asInput<String>(map['apiId']),
      artifactId: Input.asInput<String>(map['artifactId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      specId: Input.asInput<String>(map['specId']),
      versionId: Input.asInput<String>(map['versionId']),
    );
  }
}
