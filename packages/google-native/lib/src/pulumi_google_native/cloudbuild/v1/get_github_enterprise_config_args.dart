// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getGithubEnterpriseConfig.
class GetGithubEnterpriseConfigArgs {
  final Input<String>? configId;
  final Input<String> githubEnterpriseConfigId;
  final Input<String> location;
  final Input<String>? project;
  final Input<String>? projectId;

  GetGithubEnterpriseConfigArgs({
    this.configId,
    required this.githubEnterpriseConfigId,
    required this.location,
    this.project,
    this.projectId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final configIdValue = configId;
    if (configIdValue != null) {
      map['configId'] = configIdValue;
    }
    map['githubEnterpriseConfigId'] = githubEnterpriseConfigId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final projectIdValue = projectId;
    if (projectIdValue != null) {
      map['projectId'] = projectIdValue;
    }
    return map;
  }

  factory GetGithubEnterpriseConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetGithubEnterpriseConfigArgs(
      configId: Input.asOptionalInput<String>(map['configId']),
      githubEnterpriseConfigId:
          Input.asInput<String>(map['githubEnterpriseConfigId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      projectId: Input.asOptionalInput<String>(map['projectId']),
    );
  }
}
