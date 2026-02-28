// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'git_lab_enterprise_config_response.dart';
import 'git_lab_repository_id_response.dart';
import 'git_lab_secrets_response.dart';

/// GitLabConfig represents the configuration for a GitLab integration.
class GitLabConfigResponse {
  /// Connected GitLab.com or GitLabEnterprise repositories for this config.
  final List<GitLabRepositoryIdResponse> connectedRepositories;
  /// Time when the config was created.
  final String createTime;
  /// Optional. GitLabEnterprise config.
  final GitLabEnterpriseConfigResponse enterpriseConfig;
  /// The resource name for the config.
  final String name;
  /// Secret Manager secrets needed by the config.
  final GitLabSecretsResponse secrets;
  /// Username of the GitLab.com or GitLab Enterprise account Cloud Build will use.
  final String username;
  /// UUID included in webhook requests. The UUID is used to look up the corresponding config.
  final String webhookKey;

  /// Creates a new [GitLabConfigResponse].
  /// [connectedRepositories] Connected GitLab.com or GitLabEnterprise repositories for this config.
  /// [createTime] Time when the config was created.
  /// [enterpriseConfig] Optional. GitLabEnterprise config.
  /// [name] The resource name for the config.
  /// [secrets] Secret Manager secrets needed by the config.
  /// [username] Username of the GitLab.com or GitLab Enterprise account Cloud Build will use.
  /// [webhookKey] UUID included in webhook requests. The UUID is used to look up the corresponding config.
  GitLabConfigResponse({
    required this.connectedRepositories,
    required this.createTime,
    required this.enterpriseConfig,
    required this.name,
    required this.secrets,
    required this.username,
    required this.webhookKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectedRepositories': pulumi.Input.encodeList<GitLabRepositoryIdResponse, Map<String, dynamic>>(connectedRepositories, (value) => value.toMap()),
      'createTime': createTime,
      'enterpriseConfig': enterpriseConfig.toMap(),
      'name': name,
      'secrets': secrets.toMap(),
      'username': username,
      'webhookKey': webhookKey,
    };
  }

  factory GitLabConfigResponse.fromMap(Map<String, dynamic> map) {
    return GitLabConfigResponse(
      connectedRepositories: pulumi.Input.decodeList<GitLabRepositoryIdResponse>(map['connectedRepositories'], (value) => GitLabRepositoryIdResponse.fromMap((value as Map).cast<String, dynamic>())),
      createTime: map['createTime'] as String,
      enterpriseConfig: GitLabEnterpriseConfigResponse.fromMap((map['enterpriseConfig'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      secrets: GitLabSecretsResponse.fromMap((map['secrets'] as Map).cast<String, dynamic>()),
      username: map['username'] as String,
      webhookKey: map['webhookKey'] as String,
    );
  }
}

