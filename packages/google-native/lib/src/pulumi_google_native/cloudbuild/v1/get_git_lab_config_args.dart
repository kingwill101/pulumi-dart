// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getGitLabConfig.
class GetGitLabConfigArgs {
  final pulumi.Input<String> gitLabConfigId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

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
      gitLabConfigId: pulumi.Input.asInput<String>(map['gitLabConfigId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
