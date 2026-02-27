// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getReleaseConfig.
class GetReleaseConfigArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> releaseConfigId;
  final pulumi.Input<String> repositoryId;

  GetReleaseConfigArgs({
    required this.location,
    this.project,
    required this.releaseConfigId,
    required this.repositoryId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['releaseConfigId'] = releaseConfigId;
    map['repositoryId'] = repositoryId;
    return map;
  }

  factory GetReleaseConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetReleaseConfigArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      releaseConfigId: pulumi.Input.asInput<String>(map['releaseConfigId']),
      repositoryId: pulumi.Input.asInput<String>(map['repositoryId']),
    );
  }
}
