// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getGithubEnterpriseConfig.
class GetGithubEnterpriseConfigArgs {
  final pulumi.Input<String>? configId;
  final pulumi.Input<String> githubEnterpriseConfigId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? projectId;

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
      configId: pulumi.Input.asOptionalInput<String>(map['configId']),
      githubEnterpriseConfigId:
          pulumi.Input.asInput<String>(map['githubEnterpriseConfigId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      projectId: pulumi.Input.asOptionalInput<String>(map['projectId']),
    );
  }
}
