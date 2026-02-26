// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getGitLabConfig.
class GetGitLabConfigArgs {
  final Input<String> gitLabConfigId;
  final Input<String> location;
  final Input<String>? project;

  GetGitLabConfigArgs({
    required this.gitLabConfigId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gitLabConfigId'] = gitLabConfigId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetGitLabConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetGitLabConfigArgs(
      gitLabConfigId: Input.asInput<String>(map['gitLabConfigId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
