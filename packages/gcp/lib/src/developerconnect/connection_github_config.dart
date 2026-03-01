// ignore_for_file: unused_element, unnecessary_cast

import 'connection_github_config_authorizer_credential.dart';

class ConnectionGithubConfig {
  /// Optional. GitHub App installation id.
  final String? appInstallationId;

  /// Represents an OAuth token of the account that authorized the Connection,
  /// and associated metadata.
  /// Structure is documented below.
  final ConnectionGithubConfigAuthorizerCredential? authorizerCredential;

  /// Required. Immutable. The GitHub Application that was installed to the GitHub user or
  /// organization.
  /// Possible values:
  /// GIT_HUB_APP_UNSPECIFIED
  /// DEVELOPER_CONNECT
  /// FIREBASE
  final String githubApp;

  /// (Output)
  /// Output only. The URI to navigate to in order to manage the installation associated
  /// with this GitHubConfig.
  final String? installationUri;

  /// Creates a new [ConnectionGithubConfig].
  /// [appInstallationId] Optional. GitHub App installation id.
  /// [authorizerCredential] Represents an OAuth token of the account that authorized the Connection,
  /// [githubApp] Required. Immutable. The GitHub Application that was installed to the GitHub user or
  /// [installationUri] (Output)
  ConnectionGithubConfig({
    this.appInstallationId,
    this.authorizerCredential,
    required this.githubApp,
    this.installationUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appInstallationId': ?appInstallationId,
      'authorizerCredential': ?authorizerCredential == null
          ? null
          : authorizerCredential!.toMap(),
      'githubApp': githubApp,
      'installationUri': ?installationUri,
    };
  }

  factory ConnectionGithubConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionGithubConfig(
      appInstallationId: map['appInstallationId'] == null
          ? null
          : map['appInstallationId'] as String,
      authorizerCredential: map['authorizerCredential'] == null
          ? null
          : ConnectionGithubConfigAuthorizerCredential.fromMap(
              (map['authorizerCredential'] as Map).cast<String, dynamic>(),
            ),
      githubApp: map['githubApp'] as String,
      installationUri: map['installationUri'] == null
          ? null
          : map['installationUri'] as String,
    );
  }
}
