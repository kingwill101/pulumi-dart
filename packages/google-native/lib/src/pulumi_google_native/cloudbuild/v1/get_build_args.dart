// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getBuild.
class GetBuildArgs {
  final pulumi.Input<String> buildId;
  final pulumi.Input<String> id;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> projectId;

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
      buildId: pulumi.Input.asInput<String>(map['buildId']),
      id: pulumi.Input.asInput<String>(map['id']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      projectId: pulumi.Input.asInput<String>(map['projectId']),
    );
  }
}
