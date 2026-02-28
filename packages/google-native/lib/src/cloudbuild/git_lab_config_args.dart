// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'git_lab_enterprise_config.dart';
import 'git_lab_repository_id.dart';
import 'git_lab_secrets.dart';

/// {@template pulumi_cloudbuild_v1_git_lab_config_args_doc}
/// The set of arguments for GitLabConfig.
/// {@endtemplate}
/// {@macro pulumi_cloudbuild_v1_git_lab_config_args_doc}
class GitLabConfigArgs {
  /// Connected GitLab.com or GitLabEnterprise repositories for this config.
  final pulumi.Input<List<GitLabRepositoryId>>? connectedRepositories;

  /// Optional. GitLabEnterprise config.
  final pulumi.Input<GitLabEnterpriseConfig>? enterpriseConfig;

  /// Optional. The ID to use for the GitLabConfig, which will become the final component of the GitLabConfig’s resource name. gitlab_config_id must meet the following requirements: + They must contain only alphanumeric characters and dashes. + They can be 1-64 characters long. + They must begin and end with an alphanumeric character
  final pulumi.Input<String>? gitlabConfigId;
  final pulumi.Input<String>? location;

  /// The resource name for the config.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Secret Manager secrets needed by the config.
  final pulumi.Input<GitLabSecrets> secrets;

  /// Username of the GitLab.com or GitLab Enterprise account Cloud Build will use.
  final pulumi.Input<String>? username;

  /// Creates a new [GitLabConfigArgs].
  /// [connectedRepositories] Connected GitLab.com or GitLabEnterprise repositories for this config.
  /// [enterpriseConfig] Optional. GitLabEnterprise config.
  /// [gitlabConfigId] Optional. The ID to use for the GitLabConfig, which will become the final component of the GitLabConfig’s resource name. gitlab_config_id must meet the following requirements: + They must contain only alphanumeric characters and dashes. + They can be 1-64 characters long. + They must begin and end with an alphanumeric character
  /// [location] Optional.
  /// [name] The resource name for the config.
  /// [project] Optional.
  /// [secrets] Secret Manager secrets needed by the config.
  /// [username] Username of the GitLab.com or GitLab Enterprise account Cloud Build will use.
  GitLabConfigArgs({
    List<GitLabRepositoryId>? connectedRepositories,
    GitLabEnterpriseConfig? enterpriseConfig,
    String? gitlabConfigId,
    String? location,
    String? name,
    String? project,
    required GitLabSecrets secrets,
    String? username,
  })  : connectedRepositories =
            pulumi.Input.asOptionalInput<List<GitLabRepositoryId>>(
                connectedRepositories),
        enterpriseConfig = pulumi.Input.asOptionalInput<GitLabEnterpriseConfig>(
            enterpriseConfig),
        gitlabConfigId = pulumi.Input.asOptionalInput<String>(gitlabConfigId),
        location = pulumi.Input.asOptionalInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        secrets = pulumi.Input.asInput<GitLabSecrets>(secrets),
        username = pulumi.Input.asOptionalInput<String>(username);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final connectedRepositoriesValue = connectedRepositories;
    if (connectedRepositoriesValue != null) {
      map['connectedRepositories'] = pulumi.Input.mapOptionalInputValue<
              List<GitLabRepositoryId>, List<Map<String, dynamic>>>(
          connectedRepositoriesValue,
          (value) =>
              pulumi.Input.encodeList<GitLabRepositoryId, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final enterpriseConfigValue = enterpriseConfig;
    if (enterpriseConfigValue != null) {
      map['enterpriseConfig'] = pulumi.Input.mapOptionalInputValue<
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
    map['secrets'] =
        pulumi.Input.mapInputValue<GitLabSecrets, Map<String, dynamic>>(
            secrets, (value) => value.toMap());
    final usernameValue = username;
    if (usernameValue != null) {
      map['username'] = usernameValue;
    }
    return map;
  }

  factory GitLabConfigArgs.fromMap(Map<String, dynamic> map) {
    return GitLabConfigArgs(
      connectedRepositories: map['connectedRepositories'] == null
          ? null
          : pulumi.Input.decodeList<GitLabRepositoryId>(
              map['connectedRepositories'],
              (value) => GitLabRepositoryId.fromMap(
                  (value as Map).cast<String, dynamic>())),
      enterpriseConfig: map['enterpriseConfig'] == null
          ? null
          : GitLabEnterpriseConfig.fromMap(
              (map['enterpriseConfig'] as Map).cast<String, dynamic>()),
      gitlabConfigId: map['gitlabConfigId'] == null
          ? null
          : map['gitlabConfigId'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      secrets: GitLabSecrets.fromMap(
          (map['secrets'] as Map).cast<String, dynamic>()),
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}
