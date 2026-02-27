// ignore_for_file: unused_element, unnecessary_cast

import '../connection_bitbucket_data_center_config_authorizer_credential/connection_bitbucket_data_center_config_authorizer_credential_developerconnect.dart';
import '../connection_bitbucket_data_center_config_read_authorizer_credential/connection_bitbucket_data_center_config_read_authorizer_credential_developerconnect.dart';
import '../connection_bitbucket_data_center_config_service_directory_config/connection_bitbucket_data_center_config_service_directory_config_developerconnect.dart';

class ConnectionBitbucketDataCenterConfigDeveloperconnect {
  /// Represents a personal access token that authorized the Connection,
  /// and associated metadata.
  /// Structure is documented below.
  final ConnectionBitbucketDataCenterConfigAuthorizerCredentialDeveloperconnect
      authorizerCredential;

  /// Required. The URI of the Bitbucket Data Center host this connection is for.
  final String hostUri;

  /// Represents a personal access token that authorized the Connection,
  /// and associated metadata.
  /// Structure is documented below.
  final ConnectionBitbucketDataCenterConfigReadAuthorizerCredentialDeveloperconnect
      readAuthorizerCredential;

  /// (Output)
  /// Output only. Version of the Bitbucket Data Center server running on the `host_uri`.
  final String? serverVersion;

  /// ServiceDirectoryConfig represents Service Directory configuration for a
  /// connection.
  /// Structure is documented below.
  final ConnectionBitbucketDataCenterConfigServiceDirectoryConfigDeveloperconnect?
      serviceDirectoryConfig;

  /// Optional. SSL certificate authority to trust when making requests to Bitbucket Data
  /// Center.
  final String? sslCaCertificate;

  /// Required. Immutable. SecretManager resource containing the webhook secret used to verify webhook
  /// events, formatted as `projects/*/secrets/*/versions/*`. This is used to
  /// validate webhooks.
  final String webhookSecretSecretVersion;

  ConnectionBitbucketDataCenterConfigDeveloperconnect({
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

  factory ConnectionBitbucketDataCenterConfigDeveloperconnect.fromMap(
      Map<String, dynamic> map) {
    return ConnectionBitbucketDataCenterConfigDeveloperconnect(
      authorizerCredential:
          ConnectionBitbucketDataCenterConfigAuthorizerCredentialDeveloperconnect
              .fromMap(
                  (map['authorizerCredential'] as Map).cast<String, dynamic>()),
      hostUri: map['hostUri'] as String,
      readAuthorizerCredential:
          ConnectionBitbucketDataCenterConfigReadAuthorizerCredentialDeveloperconnect
              .fromMap((map['readAuthorizerCredential'] as Map)
                  .cast<String, dynamic>()),
      serverVersion:
          map['serverVersion'] == null ? null : map['serverVersion'] as String,
      serviceDirectoryConfig: map['serviceDirectoryConfig'] == null
          ? null
          : ConnectionBitbucketDataCenterConfigServiceDirectoryConfigDeveloperconnect
              .fromMap((map['serviceDirectoryConfig'] as Map)
                  .cast<String, dynamic>()),
      sslCaCertificate: map['sslCaCertificate'] == null
          ? null
          : map['sslCaCertificate'] as String,
      webhookSecretSecretVersion: map['webhookSecretSecretVersion'] as String,
    );
  }
}
