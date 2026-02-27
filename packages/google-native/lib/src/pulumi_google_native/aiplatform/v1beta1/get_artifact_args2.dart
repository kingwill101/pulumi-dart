// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getArtifact.
class GetArtifactArgs2 {
  final Input<String> artifactId;
  final Input<String> location;
  final Input<String> metadataStoreId;
  final Input<String>? project;

  GetArtifactArgs2({
    required this.artifactId,
    required this.location,
    required this.metadataStoreId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['artifactId'] = artifactId;
    map['location'] = location;
    map['metadataStoreId'] = metadataStoreId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetArtifactArgs2.fromMap(Map<String, dynamic> map) {
    return GetArtifactArgs2(
      artifactId: Input.asInput<String>(map['artifactId']),
      location: Input.asInput<String>(map['location']),
      metadataStoreId: Input.asInput<String>(map['metadataStoreId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
