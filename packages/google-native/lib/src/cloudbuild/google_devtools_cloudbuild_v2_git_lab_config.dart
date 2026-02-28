// ignore_for_file: unused_element, unnecessary_cast

import 'google_devtools_cloudbuild_v2_service_directory_config.dart';
import 'user_credential.dart';

/// Configuration for connections to gitlab.com or an instance of GitLab Enterprise.
class GoogleDevtoolsCloudbuildV2GitLabConfig {
  /// A GitLab personal access token with the `api` scope access.
  final UserCredential authorizerCredential;
  /// The URI of the GitLab Enterprise host this connection is for. If not specified, the default value is https://gitlab.com.
  final String? hostUri;
  /// A GitLab personal access token with the minimum `read_api` scope access.
  final UserCredential readAuthorizerCredential;
  /// Configuration for using Service Directory to privately connect to a GitLab Enterprise server. This should only be set if the GitLab Enterprise server is hosted on-premises and not reachable by public internet. If this field is left empty, calls to the GitLab Enterprise server will be made over the public internet.
  final GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig? serviceDirectoryConfig;
  /// SSL certificate to use for requests to GitLab Enterprise.
  final String? sslCa;
  /// Immutable. SecretManager resource containing the webhook secret of a GitLab Enterprise project, formatted as `projects/*/secrets/*/versions/*`.
  final String webhookSecretSecretVersion;

  /// Creates a new [GoogleDevtoolsCloudbuildV2GitLabConfig].
  /// [authorizerCredential] A GitLab personal access token with the `api` scope access.
  /// [hostUri] The URI of the GitLab Enterprise host this connection is for. If not specified, the default value is https://gitlab.com.
  /// [readAuthorizerCredential] A GitLab personal access token with the minimum `read_api` scope access.
  /// [serviceDirectoryConfig] Configuration for using Service Directory to privately connect to a GitLab Enterprise server. This should only be set if the GitLab Enterprise server is hosted on-premises and not reachable by public internet. If this field is left empty, calls to the GitLab Enterprise server will be made over the public internet.
  /// [sslCa] SSL certificate to use for requests to GitLab Enterprise.
  /// [webhookSecretSecretVersion] Immutable. SecretManager resource containing the webhook secret of a GitLab Enterprise project, formatted as `projects/*/secrets/*/versions/*`.
  GoogleDevtoolsCloudbuildV2GitLabConfig({
    required this.authorizerCredential,
    this.hostUri,
    required this.readAuthorizerCredential,
    this.serviceDirectoryConfig,
    this.sslCa,
    required this.webhookSecretSecretVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizerCredential': authorizerCredential.toMap(),
      'hostUri': ?hostUri,
      'readAuthorizerCredential': readAuthorizerCredential.toMap(),
      'serviceDirectoryConfig': ?serviceDirectoryConfig == null ? null : serviceDirectoryConfig!.toMap(),
      'sslCa': ?sslCa,
      'webhookSecretSecretVersion': webhookSecretSecretVersion,
    };
  }

  factory GoogleDevtoolsCloudbuildV2GitLabConfig.fromMap(Map<String, dynamic> map) {
    return GoogleDevtoolsCloudbuildV2GitLabConfig(
      authorizerCredential: UserCredential.fromMap((map['authorizerCredential'] as Map).cast<String, dynamic>()),
      hostUri: map['hostUri'] == null ? null : map['hostUri'] as String,
      readAuthorizerCredential: UserCredential.fromMap((map['readAuthorizerCredential'] as Map).cast<String, dynamic>()),
      serviceDirectoryConfig: map['serviceDirectoryConfig'] == null ? null : GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig.fromMap((map['serviceDirectoryConfig'] as Map).cast<String, dynamic>()),
      sslCa: map['sslCa'] == null ? null : map['sslCa'] as String,
      webhookSecretSecretVersion: map['webhookSecretSecretVersion'] as String,
    );
  }
}

