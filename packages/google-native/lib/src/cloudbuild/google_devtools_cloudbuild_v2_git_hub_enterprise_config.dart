// ignore_for_file: unused_element, unnecessary_cast

import 'google_devtools_cloudbuild_v2_service_directory_config.dart';

/// Configuration for connections to an instance of GitHub Enterprise.
class GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig {
  /// API Key used for authentication of webhook events.
  final String apiKey;
  /// Id of the GitHub App created from the manifest.
  final String? appId;
  /// ID of the installation of the GitHub App.
  final String? appInstallationId;
  /// The URL-friendly name of the GitHub App.
  final String? appSlug;
  /// The URI of the GitHub Enterprise host this connection is for.
  final String hostUri;
  /// SecretManager resource containing the private key of the GitHub App, formatted as `projects/*/secrets/*/versions/*`.
  final String? privateKeySecretVersion;
  /// Configuration for using Service Directory to privately connect to a GitHub Enterprise server. This should only be set if the GitHub Enterprise server is hosted on-premises and not reachable by public internet. If this field is left empty, calls to the GitHub Enterprise server will be made over the public internet.
  final GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig? serviceDirectoryConfig;
  /// SSL certificate to use for requests to GitHub Enterprise.
  final String? sslCa;
  /// SecretManager resource containing the webhook secret of the GitHub App, formatted as `projects/*/secrets/*/versions/*`.
  final String? webhookSecretSecretVersion;

  /// Creates a new [GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig].
  /// [apiKey] API Key used for authentication of webhook events.
  /// [appId] Id of the GitHub App created from the manifest.
  /// [appInstallationId] ID of the installation of the GitHub App.
  /// [appSlug] The URL-friendly name of the GitHub App.
  /// [hostUri] The URI of the GitHub Enterprise host this connection is for.
  /// [privateKeySecretVersion] SecretManager resource containing the private key of the GitHub App, formatted as `projects/*/secrets/*/versions/*`.
  /// [serviceDirectoryConfig] Configuration for using Service Directory to privately connect to a GitHub Enterprise server. This should only be set if the GitHub Enterprise server is hosted on-premises and not reachable by public internet. If this field is left empty, calls to the GitHub Enterprise server will be made over the public internet.
  /// [sslCa] SSL certificate to use for requests to GitHub Enterprise.
  /// [webhookSecretSecretVersion] SecretManager resource containing the webhook secret of the GitHub App, formatted as `projects/*/secrets/*/versions/*`.
  GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig({
    required this.apiKey,
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
      'apiKey': apiKey,
      'appId': ?appId,
      'appInstallationId': ?appInstallationId,
      'appSlug': ?appSlug,
      'hostUri': hostUri,
      'privateKeySecretVersion': ?privateKeySecretVersion,
      'serviceDirectoryConfig': ?serviceDirectoryConfig == null ? null : serviceDirectoryConfig!.toMap(),
      'sslCa': ?sslCa,
      'webhookSecretSecretVersion': ?webhookSecretSecretVersion,
    };
  }

  factory GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig.fromMap(Map<String, dynamic> map) {
    return GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig(
      apiKey: map['apiKey'] as String,
      appId: map['appId'] == null ? null : map['appId'] as String,
      appInstallationId: map['appInstallationId'] == null ? null : map['appInstallationId'] as String,
      appSlug: map['appSlug'] == null ? null : map['appSlug'] as String,
      hostUri: map['hostUri'] as String,
      privateKeySecretVersion: map['privateKeySecretVersion'] == null ? null : map['privateKeySecretVersion'] as String,
      serviceDirectoryConfig: map['serviceDirectoryConfig'] == null ? null : GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig.fromMap((map['serviceDirectoryConfig'] as Map).cast<String, dynamic>()),
      sslCa: map['sslCa'] == null ? null : map['sslCa'] as String,
      webhookSecretSecretVersion: map['webhookSecretSecretVersion'] == null ? null : map['webhookSecretSecretVersion'] as String,
    );
  }
}

