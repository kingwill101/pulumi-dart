// ignore_for_file: unused_element, unnecessary_cast

import 'connection_github_config_authorizer_credential.dart';

class ConnectionGithubConfig {
  /// GitHub App installation id.
  final int? appInstallationId;
  /// OAuth credential of the account that authorized the Cloud Build GitHub App. It is recommended to use a robot account instead of a human user account. The OAuth token must be tied to the Cloud Build GitHub App.
  /// Structure is documented below.
  final ConnectionGithubConfigAuthorizerCredential? authorizerCredential;

  /// Creates a new [ConnectionGithubConfig].
  /// [appInstallationId] GitHub App installation id.
  /// [authorizerCredential] OAuth credential of the account that authorized the Cloud Build GitHub App. It is recommended to use a robot account instead of a human user account. The OAuth token must be tied to the Cloud Build GitHub App.
  ConnectionGithubConfig({
    this.appInstallationId,
    this.authorizerCredential,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appInstallationId': ?appInstallationId,
      'authorizerCredential': ?authorizerCredential == null ? null : authorizerCredential!.toMap(),
    };
  }

  factory ConnectionGithubConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionGithubConfig(
      appInstallationId: map['appInstallationId'] == null ? null : map['appInstallationId'] as int,
      authorizerCredential: map['authorizerCredential'] == null ? null : ConnectionGithubConfigAuthorizerCredential.fromMap((map['authorizerCredential'] as Map).cast<String, dynamic>()),
    );
  }
}

