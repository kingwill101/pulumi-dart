// ignore_for_file: unused_element, unnecessary_cast

import 'connection_bitbucket_data_center_config_authorizer_credential.dart';
import 'connection_bitbucket_data_center_config_read_authorizer_credential.dart';
import 'connection_bitbucket_data_center_config_service_directory_config.dart';

class ConnectionBitbucketDataCenterConfig {
  /// Required. A http access token with the `REPO_ADMIN` scope access.
  /// Structure is documented below.
  final ConnectionBitbucketDataCenterConfigAuthorizerCredential
  authorizerCredential;

  /// The URI of the Bitbucket Data Center host this connection is for.
  final String hostUri;

  /// Required. A http access token with the `REPO_READ` access.
  /// Structure is documented below.
  final ConnectionBitbucketDataCenterConfigReadAuthorizerCredential
  readAuthorizerCredential;

  /// (Output)
  /// Output only. Version of the Bitbucket Data Center running on the `host_uri`.
  final String? serverVersion;

  /// Configuration for using Service Directory to privately connect to a Bitbucket Data Center. This should only be set if the Bitbucket Data Center is hosted on-premises and not reachable by public internet. If this field is left empty, calls to the Bitbucket Data Center will be made over the public internet.
  /// Structure is documented below.
  final ConnectionBitbucketDataCenterConfigServiceDirectoryConfig?
  serviceDirectoryConfig;

  /// SSL certificate to use for requests to the Bitbucket Data Center.
  final String? sslCa;

  /// Required. Immutable. SecretManager resource containing the webhook secret used to verify webhook events, formatted as `projects/*/secrets/*/versions/*`.
  final String webhookSecretSecretVersion;

  /// Creates a new [ConnectionBitbucketDataCenterConfig].
  /// [authorizerCredential] Required. A http access token with the `REPO_ADMIN` scope access.
  /// [hostUri] The URI of the Bitbucket Data Center host this connection is for.
  /// [readAuthorizerCredential] Required. A http access token with the `REPO_READ` access.
  /// [serverVersion] (Output)
  /// [serviceDirectoryConfig] Configuration for using Service Directory to privately connect to a Bitbucket Data Center. This should only be set if the Bitbucket Data Center is hosted on-premises and not reachable by public internet. If this field is left empty, calls to the Bitbucket Data Center will be made over the public internet.
  /// [sslCa] SSL certificate to use for requests to the Bitbucket Data Center.
  /// [webhookSecretSecretVersion] Required. Immutable. SecretManager resource containing the webhook secret used to verify webhook events, formatted as `projects/*/secrets/*/versions/*`.
  ConnectionBitbucketDataCenterConfig({
    required this.authorizerCredential,
    required this.hostUri,
    required this.readAuthorizerCredential,
    this.serverVersion,
    this.serviceDirectoryConfig,
    this.sslCa,
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
      'sslCa': ?sslCa,
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
      sslCa: map['sslCa'] == null ? null : map['sslCa'] as String,
      webhookSecretSecretVersion: map['webhookSecretSecretVersion'] as String,
    );
  }
}
