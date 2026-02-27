// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRelease.
class GetReleaseFirebaserulesV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> releaseId;

  GetReleaseFirebaserulesV1Args({
    this.project,
    required this.releaseId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['releaseId'] = releaseId;
    return map;
  }

  factory GetReleaseFirebaserulesV1Args.fromMap(Map<String, dynamic> map) {
    return GetReleaseFirebaserulesV1Args(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      releaseId: pulumi.Input.asInput<String>(map['releaseId']),
    );
  }
}
