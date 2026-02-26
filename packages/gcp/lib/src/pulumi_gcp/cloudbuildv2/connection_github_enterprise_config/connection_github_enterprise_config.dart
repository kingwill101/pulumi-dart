// ignore_for_file: unused_element, unnecessary_cast

import '../connection_github_enterprise_config_service_directory_config/connection_github_enterprise_config_service_directory_config.dart';

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
    final privateKeySecretVersionValue = privateKeySecretVersion;
    if (privateKeySecretVersionValue != null) {
      map['privateKeySecretVersion'] = privateKeySecretVersionValue;
    }
    final serviceDirectoryConfigValue = serviceDirectoryConfig;
    if (serviceDirectoryConfigValue != null) {
      map['serviceDirectoryConfig'] = serviceDirectoryConfigValue.toMap();
    }
    final sslCaValue = sslCa;
    if (sslCaValue != null) {
      map['sslCa'] = sslCaValue;
    }
    final webhookSecretSecretVersionValue = webhookSecretSecretVersion;
    if (webhookSecretSecretVersionValue != null) {
      map['webhookSecretSecretVersion'] = webhookSecretSecretVersionValue;
    }
    return map;
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
              (map['serviceDirectoryConfig'] as Map).cast<String, dynamic>()),
      sslCa: map['sslCa'] == null ? null : map['sslCa'] as String,
      webhookSecretSecretVersion: map['webhookSecretSecretVersion'] == null
          ? null
          : map['webhookSecretSecretVersion'] as String,
    );
  }
}
