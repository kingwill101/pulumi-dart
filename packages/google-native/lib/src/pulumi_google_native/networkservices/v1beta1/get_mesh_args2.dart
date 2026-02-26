// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getMesh.
class GetMeshArgs2 {
  final Input<String> location;
  final Input<String> meshId;
  final Input<String>? project;

  GetMeshArgs2({
    required this.location,
    required this.meshId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['meshId'] = meshId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetMeshArgs2.fromMap(Map<String, dynamic> map) {
    return GetMeshArgs2(
      location: Input.asInput<String>(map['location']),
      meshId: Input.asInput<String>(map['meshId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
