// ignore_for_file: unused_element, unnecessary_cast

import '../connection_gitlab_config_authorizer_credential/connection_gitlab_config_authorizer_credential_developerconnect.dart';
import '../connection_gitlab_config_read_authorizer_credential/connection_gitlab_config_read_authorizer_credential_developerconnect.dart';

class ConnectionGitlabConfigDeveloperconnect {
  /// Represents a personal access token that authorized the Connection,
  /// and associated metadata.
  /// Structure is documented below.
  final ConnectionGitlabConfigAuthorizerCredentialDeveloperconnect
      authorizerCredential;

  /// Represents a personal access token that authorized the Connection,
  /// and associated metadata.
  /// Structure is documented below.
  final ConnectionGitlabConfigReadAuthorizerCredentialDeveloperconnect
      readAuthorizerCredential;

  /// Required. Immutable. SecretManager resource containing the webhook secret of a GitLab project,
  /// formatted as `projects/*/secrets/*/versions/*`. This is used to validate
  /// webhooks.
  final String webhookSecretSecretVersion;

  ConnectionGitlabConfigDeveloperconnect({
    required this.authorizerCredential,
    required this.readAuthorizerCredential,
    required this.webhookSecretSecretVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authorizerCredential'] = authorizerCredential.toMap();
    map['readAuthorizerCredential'] = readAuthorizerCredential.toMap();
    map['webhookSecretSecretVersion'] = webhookSecretSecretVersion;
    return map;
  }

  factory ConnectionGitlabConfigDeveloperconnect.fromMap(
      Map<String, dynamic> map) {
    return ConnectionGitlabConfigDeveloperconnect(
      authorizerCredential:
          ConnectionGitlabConfigAuthorizerCredentialDeveloperconnect.fromMap(
              (map['authorizerCredential'] as Map).cast<String, dynamic>()),
      readAuthorizerCredential:
          ConnectionGitlabConfigReadAuthorizerCredentialDeveloperconnect
              .fromMap((map['readAuthorizerCredential'] as Map)
                  .cast<String, dynamic>()),
      webhookSecretSecretVersion: map['webhookSecretSecretVersion'] as String,
    );
  }
}
