// ignore_for_file: unused_element, unnecessary_cast

import 'connection_github_enterprise_config_service_directory_config.dart';

class ConnectionGithubEnterpriseConfig {
  /// Id of the GitHub App created from the manifest.
  final int? appId;

  /// ID of the installation of the GitHub App.
  final int? appInstallationId;

  /// The URL-friendly name of the GitHub App.
  final String? appSlug;

  /// Required. The URI of the GitHub Enterprise host this connection is for.
  final String hostUri;

  /// SecretManager resource containing the private key of the GitHub App, formatted as `projects/*/secrets/*/versions/*`.
  final String? privateKeySecretVersion;

  /// Configuration for using Service Directory to privately connect to a GitHub Enterprise server. This should only be set if the GitHub Enterprise server is hosted on-premises and not reachable by public internet. If this field is left empty, calls to the GitHub Enterprise server will be made over the public internet.
  /// Structure is documented below.
  final ConnectionGithubEnterpriseConfigServiceDirectoryConfig?
  serviceDirectoryConfig;

  /// SSL certificate to use for requests to GitHub Enterprise.
  final String? sslCa;

  /// SecretManager resource containing the webhook secret of the GitHub App, formatted as `projects/*/secrets/*/versions/*`.
  final String? webhookSecretSecretVersion;

  /// Creates a new [ConnectionGithubEnterpriseConfig].
  /// [appId] Id of the GitHub App created from the manifest.
  /// [appInstallationId] ID of the installation of the GitHub App.
  /// [appSlug] The URL-friendly name of the GitHub App.
  /// [hostUri] Required. The URI of the GitHub Enterprise host this connection is for.
  /// [privateKeySecretVersion] SecretManager resource containing the private key of the GitHub App, formatted as `projects/*/secrets/*/versions/*`.
  /// [serviceDirectoryConfig] Configuration for using Service Directory to privately connect to a GitHub Enterprise server. This should only be set if the GitHub Enterprise server is hosted on-premises and not reachable by public internet. If this field is left empty, calls to the GitHub Enterprise server will be made over the public internet.
  /// [sslCa] SSL certificate to use for requests to GitHub Enterprise.
  /// [webhookSecretSecretVersion] SecretManager resource containing the webhook secret of the GitHub App, formatted as `projects/*/secrets/*/versions/*`.
  ConnectionGithubEnterpriseConfig({
    this.appId,
    this.appInstallationId,
    this.appSlug,
    required this.hostUri,
    this.privateKeySecretVersion,
    this.serviceDirectoryConfig,
    this.sslCa,
    this.webhookSecretSecretVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': ?appId,
      'appInstallationId': ?appInstallationId,
      'appSlug': ?appSlug,
      'hostUri': hostUri,
      'privateKeySecretVersion': ?privateKeySecretVersion,
      'serviceDirectoryConfig': ?serviceDirectoryConfig == null
          ? null
          : serviceDirectoryConfig!.toMap(),
      'sslCa': ?sslCa,
      'webhookSecretSecretVersion': ?webhookSecretSecretVersion,
    };
  }

  factory ConnectionGithubEnterpriseConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionGithubEnterpriseConfig(
      appId: map['appId'] == null ? null : map['appId'] as int,
      appInstallationId: map['appInstallationId'] == null
          ? null
          : map['appInstallationId'] as int,
      appSlug: map['appSlug'] == null ? null : map['appSlug'] as String,
      hostUri: map['hostUri'] as String,
      privateKeySecretVersion: map['privateKeySecretVersion'] == null
          ? null
          : map['privateKeySecretVersion'] as String,
      serviceDirectoryConfig: map['serviceDirectoryConfig'] == null
          ? null
          : ConnectionGithubEnterpriseConfigServiceDirectoryConfig.fromMap(
              (map['serviceDirectoryConfig'] as Map).cast<String, dynamic>(),
            ),
      sslCa: map['sslCa'] == null ? null : map['sslCa'] as String,
      webhookSecretSecretVersion: map['webhookSecretSecretVersion'] == null
          ? null
          : map['webhookSecretSecretVersion'] as String,
    );
  }
}
