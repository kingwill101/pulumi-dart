// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getBuild.
class GetBuildArgs {
  final Input<String> buildId;
  final Input<String> id;
  final Input<String> location;
  final Input<String>? project;
  final Input<String> projectId;

  GetBuildArgs({
    required this.buildId,
    required this.id,
    required this.location,
    this.project,
    required this.projectId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['buildId'] = buildId;
    map['id'] = id;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['projectId'] = projectId;
    return map;
  }

  factory GetBuildArgs.fromMap(Map<String, dynamic> map) {
    return GetBuildArgs(
      buildId: Input.asInput<String>(map['buildId']),
      id: Input.asInput<String>(map['id']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      projectId: Input.asInput<String>(map['projectId']),
    );
  }
}
