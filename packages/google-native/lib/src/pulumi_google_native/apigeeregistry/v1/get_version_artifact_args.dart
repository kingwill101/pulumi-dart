// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getVersionArtifact.
class GetVersionArtifactArgs {
  final Input<String> apiId;
  final Input<String> artifactId;
  final Input<String> location;
  final Input<String>? project;
  final Input<String> versionId;

  GetVersionArtifactArgs({
    required this.apiId,
    required this.artifactId,
    required this.location,
    this.project,
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
    map['versionId'] = versionId;
    return map;
  }

  factory GetVersionArtifactArgs.fromMap(Map<String, dynamic> map) {
    return GetVersionArtifactArgs(
      apiId: Input.asInput<String>(map['apiId']),
      artifactId: Input.asInput<String>(map['artifactId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      versionId: Input.asInput<String>(map['versionId']),
    );
  }
}
