// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudbuild_v1_get_github_enterprise_config_args_doc}
/// Arguments for getGithubEnterpriseConfig.
/// {@endtemplate}
/// {@macro pulumi_cloudbuild_v1_get_github_enterprise_config_args_doc}
class GetGithubEnterpriseConfigArgs {
  final pulumi.Input<String>? configId;
  final pulumi.Input<String> githubEnterpriseConfigId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? projectId;

  /// Creates a new [GetGithubEnterpriseConfigArgs].
  /// [configId] Optional.
  /// [githubEnterpriseConfigId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [projectId] Optional.
  GetGithubEnterpriseConfigArgs({
    String? configId,
    required String githubEnterpriseConfigId,
    required String location,
    String? project,
    String? projectId,
  })  : configId = pulumi.Input.asOptionalInput<String>(configId),
        githubEnterpriseConfigId =
            pulumi.Input.asInput<String>(githubEnterpriseConfigId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        projectId = pulumi.Input.asOptionalInput<String>(projectId);

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
      configId: map['configId'] == null ? null : map['configId'] as String,
      githubEnterpriseConfigId: map['githubEnterpriseConfigId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      projectId: map['projectId'] == null ? null : map['projectId'] as String,
    );
  }
}
