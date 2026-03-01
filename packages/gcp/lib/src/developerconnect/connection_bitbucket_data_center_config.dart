// ignore_for_file: unused_element, unnecessary_cast

import 'connection_bitbucket_data_center_config_authorizer_credential.dart';
import 'connection_bitbucket_data_center_config_read_authorizer_credential.dart';
import 'connection_bitbucket_data_center_config_service_directory_config.dart';

class ConnectionBitbucketDataCenterConfig {
  /// Represents a personal access token that authorized the Connection,
  /// and associated metadata.
  /// Structure is documented below.
  final ConnectionBitbucketDataCenterConfigAuthorizerCredential
  authorizerCredential;

  /// Required. The URI of the Bitbucket Data Center host this connection is for.
  final String hostUri;

  /// Represents a personal access token that authorized the Connection,
  /// and associated metadata.
  /// Structure is documented below.
  final ConnectionBitbucketDataCenterConfigReadAuthorizerCredential
  readAuthorizerCredential;

  /// (Output)
  /// Output only. Version of the Bitbucket Data Center server running on the `host_uri`.
  final String? serverVersion;

  /// ServiceDirectoryConfig represents Service Directory configuration for a
  /// connection.
  /// Structure is documented below.
  final ConnectionBitbucketDataCenterConfigServiceDirectoryConfig?
  serviceDirectoryConfig;

  /// Optional. SSL certificate authority to trust when making requests to Bitbucket Data
  /// Center.
  final String? sslCaCertificate;

  /// Required. Immutable. SecretManager resource containing the webhook secret used to verify webhook
  /// events, formatted as `projects/*/secrets/*/versions/*`. This is used to
  /// validate webhooks.
  final String webhookSecretSecretVersion;

  /// Creates a new [ConnectionBitbucketDataCenterConfig].
  /// [authorizerCredential] Represents a personal access token that authorized the Connection,
  /// [hostUri] Required. The URI of the Bitbucket Data Center host this connection is for.
  /// [readAuthorizerCredential] Represents a personal access token that authorized the Connection,
  /// [serverVersion] (Output)
  /// [serviceDirectoryConfig] ServiceDirectoryConfig represents Service Directory configuration for a
  /// [sslCaCertificate] Optional. SSL certificate authority to trust when making requests to Bitbucket Data
  /// [webhookSecretSecretVersion] Required. Immutable. SecretManager resource containing the webhook secret used to verify webhook
  ConnectionBitbucketDataCenterConfig({
    required this.authorizerCredential,
    required this.hostUri,
    required this.readAuthorizerCredential,
    this.serverVersion,
    this.serviceDirectoryConfig,
    this.sslCaCertificate,
    required this.webhookSecretSecretVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizerCredential': authorizerCredential.toMap(),
      'hostUri': hostUri,
      'readAuthorizerCredential': readAuthorizerCredential.toMap(),
      'serverVersion': ?serverVersion,
      'serviceDirectoryConfig': ?serviceDirectoryConfig == null
          ? null
          : serviceDirectoryConfig!.toMap(),
      'sslCaCertificate': ?sslCaCertificate,
      'webhookSecretSecretVersion': webhookSecretSecretVersion,
    };
  }

  factory ConnectionBitbucketDataCenterConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectionBitbucketDataCenterConfig(
      authorizerCredential:
          ConnectionBitbucketDataCenterConfigAuthorizerCredential.fromMap(
            (map['authorizerCredential'] as Map).cast<String, dynamic>(),
          ),
      hostUri: map['hostUri'] as String,
      readAuthorizerCredential:
          ConnectionBitbucketDataCenterConfigReadAuthorizerCredential.fromMap(
            (map['readAuthorizerCredential'] as Map).cast<String, dynamic>(),
          ),
      serverVersion: map['serverVersion'] == null
          ? null
          : map['serverVersion'] as String,
      serviceDirectoryConfig: map['serviceDirectoryConfig'] == null
          ? null
          : ConnectionBitbucketDataCenterConfigServiceDirectoryConfig.fromMap(
              (map['serviceDirectoryConfig'] as Map).cast<String, dynamic>(),
            ),
      sslCaCertificate: map['sslCaCertificate'] == null
          ? null
          : map['sslCaCertificate'] as String,
      webhookSecretSecretVersion: map['webhookSecretSecretVersion'] as String,
    );
  }
}
