// ignore_for_file: unused_element, unnecessary_cast

import '../connection_gitlab_enterprise_config_authorizer_credential/connection_gitlab_enterprise_config_authorizer_credential.dart';
import '../connection_gitlab_enterprise_config_read_authorizer_credential/connection_gitlab_enterprise_config_read_authorizer_credential.dart';
import '../connection_gitlab_enterprise_config_service_directory_config/connection_gitlab_enterprise_config_service_directory_config.dart';

class ConnectionGitlabEnterpriseConfig {
  /// Represents a personal access token that authorized the Connection,
  /// and associated metadata.
  /// Structure is documented below.
  final ConnectionGitlabEnterpriseConfigAuthorizerCredential
      authorizerCredential;

  /// Required. The URI of the GitLab Enterprise host this connection is for.
  final String hostUri;

  /// Represents a personal access token that authorized the Connection,
  /// and associated metadata.
  /// Structure is documented below.
  final ConnectionGitlabEnterpriseConfigReadAuthorizerCredential
      readAuthorizerCredential;

  /// (Output)
  /// Output only. Version of the GitLab Enterprise server running on the <span pulumi-lang-nodejs="`hostUri`" pulumi-lang-dotnet="`HostUri`" pulumi-lang-go="`hostUri`" pulumi-lang-python="`host_uri`" pulumi-lang-yaml="`hostUri`" pulumi-lang-java="`hostUri`">`host_uri`</span>.
  final String? serverVersion;

  /// ServiceDirectoryConfig represents Service Directory configuration for a
  /// connection.
  /// Structure is documented below.
  final ConnectionGitlabEnterpriseConfigServiceDirectoryConfig?
      serviceDirectoryConfig;

  /// Optional. SSL Certificate Authority certificate to use for requests to GitLab
  /// Enterprise instance.
  final String? sslCaCertificate;

  /// Required. Immutable. SecretManager resource containing the webhook secret of a GitLab project,
  /// formatted as `projects/*/secrets/*/versions/*`. This is used to validate
  /// webhooks.
  final String webhookSecretSecretVersion;

  ConnectionGitlabEnterpriseConfig({
    required this.authorizerCredential,
    required this.hostUri,
    required this.readAuthorizerCredential,
    this.serverVersion,
    this.serviceDirectoryConfig,
    this.sslCaCertificate,
    required this.webhookSecretSecretVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authorizerCredential'] = authorizerCredential.toMap();
    map['hostUri'] = hostUri;
    map['readAuthorizerCredential'] = readAuthorizerCredential.toMap();
    final serverVersionValue = serverVersion;
    if (serverVersionValue != null) {
      map['serverVersion'] = serverVersionValue;
    }
    final serviceDirectoryConfigValue = serviceDirectoryConfig;
    if (serviceDirectoryConfigValue != null) {
      map['serviceDirectoryConfig'] = serviceDirectoryConfigValue.toMap();
    }
    final sslCaCertificateValue = sslCaCertificate;
    if (sslCaCertificateValue != null) {
      map['sslCaCertificate'] = sslCaCertificateValue;
    }
    map['webhookSecretSecretVersion'] = webhookSecretSecretVersion;
    return map;
  }

  factory ConnectionGitlabEnterpriseConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionGitlabEnterpriseConfig(
      authorizerCredential:
          ConnectionGitlabEnterpriseConfigAuthorizerCredential.fromMap(
              (map['authorizerCredential'] as Map).cast<String, dynamic>()),
      hostUri: map['hostUri'] as String,
      readAuthorizerCredential:
          ConnectionGitlabEnterpriseConfigReadAuthorizerCredential.fromMap(
              (map['readAuthorizerCredential'] as Map).cast<String, dynamic>()),
      serverVersion:
          map['serverVersion'] == null ? null : map['serverVersion'] as String,
      serviceDirectoryConfig: map['serviceDirectoryConfig'] == null
          ? null
          : ConnectionGitlabEnterpriseConfigServiceDirectoryConfig.fromMap(
              (map['serviceDirectoryConfig'] as Map).cast<String, dynamic>()),
      sslCaCertificate: map['sslCaCertificate'] == null
          ? null
          : map['sslCaCertificate'] as String,
      webhookSecretSecretVersion: map['webhookSecretSecretVersion'] as String,
    );
  }
}
