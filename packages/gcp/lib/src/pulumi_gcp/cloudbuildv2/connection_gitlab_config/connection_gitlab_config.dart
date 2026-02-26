// ignore_for_file: unused_element, unnecessary_cast

import '../connection_gitlab_config_authorizer_credential/connection_gitlab_config_authorizer_credential.dart';
import '../connection_gitlab_config_read_authorizer_credential/connection_gitlab_config_read_authorizer_credential.dart';
import '../connection_gitlab_config_service_directory_config/connection_gitlab_config_service_directory_config.dart';

class ConnectionGitlabConfig {
  /// Required. A GitLab personal access token with the <span pulumi-lang-nodejs="`api`" pulumi-lang-dotnet="`Api`" pulumi-lang-go="`api`" pulumi-lang-python="`api`" pulumi-lang-yaml="`api`" pulumi-lang-java="`api`">`api`</span> scope access.
  /// Structure is documented below.
  final ConnectionGitlabConfigAuthorizerCredential authorizerCredential;

  /// The URI of the GitLab Enterprise host this connection is for. If not specified, the default value is https://gitlab.com.
  final String? hostUri;

  /// Required. A GitLab personal access token with the minimum <span pulumi-lang-nodejs="`readApi`" pulumi-lang-dotnet="`ReadApi`" pulumi-lang-go="`readApi`" pulumi-lang-python="`read_api`" pulumi-lang-yaml="`readApi`" pulumi-lang-java="`readApi`">`read_api`</span> scope access.
  /// Structure is documented below.
  final ConnectionGitlabConfigReadAuthorizerCredential readAuthorizerCredential;

  /// (Output)
  /// Output only. Version of the GitLab Enterprise server running on the <span pulumi-lang-nodejs="`hostUri`" pulumi-lang-dotnet="`HostUri`" pulumi-lang-go="`hostUri`" pulumi-lang-python="`host_uri`" pulumi-lang-yaml="`hostUri`" pulumi-lang-java="`hostUri`">`host_uri`</span>.
  final String? serverVersion;

  /// Configuration for using Service Directory to privately connect to a GitLab Enterprise server. This should only be set if the GitLab Enterprise server is hosted on-premises and not reachable by public internet. If this field is left empty, calls to the GitLab Enterprise server will be made over the public internet.
  /// Structure is documented below.
  final ConnectionGitlabConfigServiceDirectoryConfig? serviceDirectoryConfig;

  /// SSL certificate to use for requests to GitLab Enterprise.
  final String? sslCa;

  /// Required. Immutable. SecretManager resource containing the webhook secret of a GitLab Enterprise project, formatted as `projects/*/secrets/*/versions/*`.
  final String webhookSecretSecretVersion;

  ConnectionGitlabConfig({
    required this.authorizerCredential,
    this.hostUri,
    required this.readAuthorizerCredential,
    this.serverVersion,
    this.serviceDirectoryConfig,
    this.sslCa,
    required this.webhookSecretSecretVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authorizerCredential'] = authorizerCredential.toMap();
    final hostUriValue = hostUri;
    if (hostUriValue != null) {
      map['hostUri'] = hostUriValue;
    }
    map['readAuthorizerCredential'] = readAuthorizerCredential.toMap();
    final serverVersionValue = serverVersion;
    if (serverVersionValue != null) {
      map['serverVersion'] = serverVersionValue;
    }
    final serviceDirectoryConfigValue = serviceDirectoryConfig;
    if (serviceDirectoryConfigValue != null) {
      map['serviceDirectoryConfig'] = serviceDirectoryConfigValue.toMap();
    }
    final sslCaValue = sslCa;
    if (sslCaValue != null) {
      map['sslCa'] = sslCaValue;
    }
    map['webhookSecretSecretVersion'] = webhookSecretSecretVersion;
    return map;
  }

  factory ConnectionGitlabConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionGitlabConfig(
      authorizerCredential: ConnectionGitlabConfigAuthorizerCredential.fromMap(
          (map['authorizerCredential'] as Map).cast<String, dynamic>()),
      hostUri: map['hostUri'] == null ? null : map['hostUri'] as String,
      readAuthorizerCredential:
          ConnectionGitlabConfigReadAuthorizerCredential.fromMap(
              (map['readAuthorizerCredential'] as Map).cast<String, dynamic>()),
      serverVersion:
          map['serverVersion'] == null ? null : map['serverVersion'] as String,
      serviceDirectoryConfig: map['serviceDirectoryConfig'] == null
          ? null
          : ConnectionGitlabConfigServiceDirectoryConfig.fromMap(
              (map['serviceDirectoryConfig'] as Map).cast<String, dynamic>()),
      sslCa: map['sslCa'] == null ? null : map['sslCa'] as String,
      webhookSecretSecretVersion: map['webhookSecretSecretVersion'] as String,
    );
  }
}
