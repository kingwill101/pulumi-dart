// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getMesh.
class GetMeshArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> meshId;
  final pulumi.Input<String>? project;

  GetMeshArgs({
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

  factory GetMeshArgs.fromMap(Map<String, dynamic> map) {
    return GetMeshArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      meshId: pulumi.Input.asInput<String>(map['meshId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
