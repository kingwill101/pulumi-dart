// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRelease.
class GetReleaseArgs3 {
  final Input<String>? project;
  final Input<String> releaseId;

  GetReleaseArgs3({
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

  factory GetReleaseArgs3.fromMap(Map<String, dynamic> map) {
    return GetReleaseArgs3(
      project: Input.asOptionalInput<String>(map['project']),
      releaseId: Input.asInput<String>(map['releaseId']),
    );
  }
}
