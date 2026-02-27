// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getReleaseConfig.
class GetReleaseConfigArgs {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> releaseConfigId;
  final Input<String> repositoryId;

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
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      releaseConfigId: Input.asInput<String>(map['releaseConfigId']),
      repositoryId: Input.asInput<String>(map['repositoryId']),
    );
  }
}
