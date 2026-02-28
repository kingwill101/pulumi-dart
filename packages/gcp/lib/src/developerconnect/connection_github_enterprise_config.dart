// ignore_for_file: unused_element, unnecessary_cast

import 'connection_github_enterprise_config_service_directory_config.dart';

class ConnectionGithubEnterpriseConfig {
  /// Optional. ID of the GitHub App created from the manifest.
  final String? appId;

  /// Optional. ID of the installation of the GitHub App.
  final String? appInstallationId;

  /// (Output)
  /// Output only. The URL-friendly name of the GitHub App.
  final String? appSlug;

  /// Required. The URI of the GitHub Enterprise host this connection is for.
  final String hostUri;

  /// (Output)
  /// Output only. The URI to navigate to in order to manage the installation associated
  /// with this GitHubEnterpriseConfig.
  final String? installationUri;

  /// Optional. SecretManager resource containing the private key of the GitHub App,
  /// formatted as `projects/*/secrets/*/versions/*`.
  final String? privateKeySecretVersion;

  /// (Output)
  /// Output only. GitHub Enterprise version installed at the host_uri.
  final String? serverVersion;

  /// ServiceDirectoryConfig represents Service Directory configuration for a
  /// connection.
  /// Structure is documented below.
  final ConnectionGithubEnterpriseConfigServiceDirectoryConfig?
      serviceDirectoryConfig;

  /// Optional. SSL certificate to use for requests to GitHub Enterprise.
  final String? sslCaCertificate;

  /// Optional. SecretManager resource containing the webhook secret of the GitHub App,
  /// formatted as `projects/*/secrets/*/versions/*`.
  final String? webhookSecretSecretVersion;

  /// Creates a new [ConnectionGithubEnterpriseConfig].
  /// [appId] Optional. ID of the GitHub App created from the manifest.
  /// [appInstallationId] Optional. ID of the installation of the GitHub App.
  /// [appSlug] (Output)
  /// [hostUri] Required. The URI of the GitHub Enterprise host this connection is for.
  /// [installationUri] (Output)
  /// [privateKeySecretVersion] Optional. SecretManager resource containing the private key of the GitHub App,
  /// [serverVersion] (Output)
  /// [serviceDirectoryConfig] ServiceDirectoryConfig represents Service Directory configuration for a
  /// [sslCaCertificate] Optional. SSL certificate to use for requests to GitHub Enterprise.
  /// [webhookSecretSecretVersion] Optional. SecretManager resource containing the webhook secret of the GitHub App,
  ConnectionGithubEnterpriseConfig({
    this.appId,
    this.appInstallationId,
    this.appSlug,
    required this.hostUri,
    this.installationUri,
    this.privateKeySecretVersion,
    this.serverVersion,
    this.serviceDirectoryConfig,
    this.sslCaCertificate,
    this.webhookSecretSecretVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final appIdValue = appId;
    if (appIdValue != null) {
      map['appId'] = appIdValue;
    }
    final appInstallationIdValue = appInstallationId;
    if (appInstallationIdValue != null) {
      map['appInstallationId'] = appInstallationIdValue;
    }
    final appSlugValue = appSlug;
    if (appSlugValue != null) {
      map['appSlug'] = appSlugValue;
    }
    map['hostUri'] = hostUri;
    final installationUriValue = installationUri;
    if (installationUriValue != null) {
      map['installationUri'] = installationUriValue;
    }
    final privateKeySecretVersionValue = privateKeySecretVersion;
    if (privateKeySecretVersionValue != null) {
      map['privateKeySecretVersion'] = privateKeySecretVersionValue;
    }
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
    final webhookSecretSecretVersionValue = webhookSecretSecretVersion;
    if (webhookSecretSecretVersionValue != null) {
      map['webhookSecretSecretVersion'] = webhookSecretSecretVersionValue;
    }
    return map;
  }

  factory ConnectionGithubEnterpriseConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionGithubEnterpriseConfig(
      appId: map['appId'] == null ? null : map['appId'] as String,
      appInstallationId: map['appInstallationId'] == null
          ? null
          : map['appInstallationId'] as String,
      appSlug: map['appSlug'] == null ? null : map['appSlug'] as String,
      hostUri: map['hostUri'] as String,
      installationUri: map['installationUri'] == null
          ? null
          : map['installationUri'] as String,
      privateKeySecretVersion: map['privateKeySecretVersion'] == null
          ? null
          : map['privateKeySecretVersion'] as String,
      serverVersion:
          map['serverVersion'] == null ? null : map['serverVersion'] as String,
      serviceDirectoryConfig: map['serviceDirectoryConfig'] == null
          ? null
          : ConnectionGithubEnterpriseConfigServiceDirectoryConfig.fromMap(
              (map['serviceDirectoryConfig'] as Map).cast<String, dynamic>()),
      sslCaCertificate: map['sslCaCertificate'] == null
          ? null
          : map['sslCaCertificate'] as String,
      webhookSecretSecretVersion: map['webhookSecretSecretVersion'] == null
          ? null
          : map['webhookSecretSecretVersion'] as String,
    );
  }
}
