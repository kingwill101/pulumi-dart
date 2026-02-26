// ignore_for_file: unused_element, unnecessary_cast

import '../connection_bitbucket_cloud_config_authorizer_credential/connection_bitbucket_cloud_config_authorizer_credential2.dart';
import '../connection_bitbucket_cloud_config_read_authorizer_credential/connection_bitbucket_cloud_config_read_authorizer_credential2.dart';

class ConnectionBitbucketCloudConfig2 {
  /// Represents a personal access token that authorized the Connection,
  /// and associated metadata.
  /// Structure is documented below.
  final ConnectionBitbucketCloudConfigAuthorizerCredential2
      authorizerCredential;

  /// Represents a personal access token that authorized the Connection,
  /// and associated metadata.
  /// Structure is documented below.
  final ConnectionBitbucketCloudConfigReadAuthorizerCredential2
      readAuthorizerCredential;

  /// Required. Immutable. SecretManager resource containing the webhook secret used to verify webhook
  /// events, formatted as `projects/*/secrets/*/versions/*`. This is used to
  /// validate and create webhooks.
  final String webhookSecretSecretVersion;

  /// Required. The Bitbucket Cloud Workspace ID to be connected to Google Cloud Platform.
  final String workspace;

  ConnectionBitbucketCloudConfig2({
    required this.authorizerCredential,
    required this.readAuthorizerCredential,
    required this.webhookSecretSecretVersion,
    required this.workspace,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authorizerCredential'] = authorizerCredential.toMap();
    map['readAuthorizerCredential'] = readAuthorizerCredential.toMap();
    map['webhookSecretSecretVersion'] = webhookSecretSecretVersion;
    map['workspace'] = workspace;
    return map;
  }

  factory ConnectionBitbucketCloudConfig2.fromMap(Map<String, dynamic> map) {
    return ConnectionBitbucketCloudConfig2(
      authorizerCredential:
          ConnectionBitbucketCloudConfigAuthorizerCredential2.fromMap(
              (map['authorizerCredential'] as Map).cast<String, dynamic>()),
      readAuthorizerCredential:
          ConnectionBitbucketCloudConfigReadAuthorizerCredential2.fromMap(
              (map['readAuthorizerCredential'] as Map).cast<String, dynamic>()),
      webhookSecretSecretVersion: map['webhookSecretSecretVersion'] as String,
      workspace: map['workspace'] as String,
    );
  }
}
