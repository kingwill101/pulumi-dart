// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'git_lab_enterprise_config.dart';
import 'git_lab_repository_id.dart';
import 'git_lab_secrets.dart';

/// The set of arguments for GitLabConfig.
class GitLabConfigArgs {
  /// Connected GitLab.com or GitLabEnterprise repositories for this config.
  final Input<List<GitLabRepositoryId>>? connectedRepositories;

  /// Optional. GitLabEnterprise config.
  final Input<GitLabEnterpriseConfig>? enterpriseConfig;

  /// Optional. The ID to use for the GitLabConfig, which will become the final component of the GitLabConfig’s resource name. gitlab_config_id must meet the following requirements: + They must contain only alphanumeric characters and dashes. + They can be 1-64 characters long. + They must begin and end with an alphanumeric character
  final Input<String>? gitlabConfigId;
  final Input<String>? location;

  /// The resource name for the config.
  final Input<String>? name;
  final Input<String>? project;

  /// Secret Manager secrets needed by the config.
  final Input<GitLabSecrets> secrets;

  /// Username of the GitLab.com or GitLab Enterprise account Cloud Build will use.
  final Input<String>? username;

  GitLabConfigArgs({
    this.connectedRepositories,
    this.enterpriseConfig,
    this.gitlabConfigId,
    this.location,
    this.name,
    this.project,
    required this.secrets,
    this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final connectedRepositoriesValue = connectedRepositories;
    if (connectedRepositoriesValue != null) {
      map['connectedRepositories'] = Input.mapOptionalInputValue<
              List<GitLabRepositoryId>, List<Map<String, dynamic>>>(
          connectedRepositoriesValue,
          (value) => Input.encodeList<GitLabRepositoryId, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final enterpriseConfigValue = enterpriseConfig;
    if (enterpriseConfigValue != null) {
      map['enterpriseConfig'] = Input.mapOptionalInputValue<
              GitLabEnterpriseConfig, Map<String, dynamic>>(
          enterpriseConfigValue, (value) => value.toMap());
    }
    final gitlabConfigIdValue = gitlabConfigId;
    if (gitlabConfigIdValue != null) {
      map['gitlabConfigId'] = gitlabConfigIdValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['secrets'] = Input.mapInputValue<GitLabSecrets, Map<String, dynamic>>(
        secrets, (value) => value.toMap());
    final usernameValue = username;
    if (usernameValue != null) {
      map['username'] = usernameValue;
    }
    return map;
  }

  factory GitLabConfigArgs.fromMap(Map<String, dynamic> map) {
    return GitLabConfigArgs(
      connectedRepositories: Input.asOptionalInput<List<GitLabRepositoryId>>(
          map['connectedRepositories']),
      enterpriseConfig: Input.asOptionalInput<GitLabEnterpriseConfig>(
          map['enterpriseConfig']),
      gitlabConfigId: Input.asOptionalInput<String>(map['gitlabConfigId']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      secrets: Input.asInput<GitLabSecrets>(map['secrets']),
      username: Input.asOptionalInput<String>(map['username']),
    );
  }
}
