// ignore_for_file: unused_element, unnecessary_cast

import '../connection_github_config_authorizer_credential/connection_github_config_authorizer_credential2.dart';

class ConnectionGithubConfig2 {
  /// Optional. GitHub App installation id.
  final String? appInstallationId;

  /// Represents an OAuth token of the account that authorized the Connection,
  /// and associated metadata.
  /// Structure is documented below.
  final ConnectionGithubConfigAuthorizerCredential2? authorizerCredential;

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

  ConnectionGithubConfig2({
    this.appInstallationId,
    this.authorizerCredential,
    required this.githubApp,
    this.installationUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final appInstallationIdValue = appInstallationId;
    if (appInstallationIdValue != null) {
      map['appInstallationId'] = appInstallationIdValue;
    }
    final authorizerCredentialValue = authorizerCredential;
    if (authorizerCredentialValue != null) {
      map['authorizerCredential'] = authorizerCredentialValue.toMap();
    }
    map['githubApp'] = githubApp;
    final installationUriValue = installationUri;
    if (installationUriValue != null) {
      map['installationUri'] = installationUriValue;
    }
    return map;
  }

  factory ConnectionGithubConfig2.fromMap(Map<String, dynamic> map) {
    return ConnectionGithubConfig2(
      appInstallationId: map['appInstallationId'] == null
          ? null
          : map['appInstallationId'] as String,
      authorizerCredential: map['authorizerCredential'] == null
          ? null
          : ConnectionGithubConfigAuthorizerCredential2.fromMap(
              (map['authorizerCredential'] as Map).cast<String, dynamic>()),
      githubApp: map['githubApp'] as String,
      installationUri: map['installationUri'] == null
          ? null
          : map['installationUri'] as String,
    );
  }
}
