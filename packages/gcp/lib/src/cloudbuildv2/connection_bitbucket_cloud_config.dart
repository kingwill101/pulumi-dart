// ignore_for_file: unused_element, unnecessary_cast

import 'connection_bitbucket_cloud_config_authorizer_credential.dart';
import 'connection_bitbucket_cloud_config_read_authorizer_credential.dart';

class ConnectionBitbucketCloudConfig {
  /// Required. An access token with the `webhook`, `repository`, `repository:admin` and `pullrequest` scope access. It can be either a workspace, project or repository access token. It's recommended to use a system account to generate these credentials.
  /// Structure is documented below.
  final ConnectionBitbucketCloudConfigAuthorizerCredential authorizerCredential;

  /// Required. An access token with the `repository` access. It can be either a workspace, project or repository access token. It's recommended to use a system account to generate the credentials.
  /// Structure is documented below.
  final ConnectionBitbucketCloudConfigReadAuthorizerCredential
  readAuthorizerCredential;

  /// Required. Immutable. SecretManager resource containing the webhook secret used to verify webhook events, formatted as `projects/*/secrets/*/versions/*`.
  final String webhookSecretSecretVersion;

  /// The Bitbucket Cloud Workspace ID to be connected to Google Cloud Platform.
  final String workspace;

  /// Creates a new [ConnectionBitbucketCloudConfig].
  /// [authorizerCredential] Required. An access token with the `webhook`, `repository`, `repository:admin` and `pullrequest` scope access. It can be either a workspace, project or repository access token. It's recommended to use a system account to generate these credentials.
  /// [readAuthorizerCredential] Required. An access token with the `repository` access. It can be either a workspace, project or repository access token. It's recommended to use a system account to generate the credentials.
  /// [webhookSecretSecretVersion] Required. Immutable. SecretManager resource containing the webhook secret used to verify webhook events, formatted as `projects/*/secrets/*/versions/*`.
  /// [workspace] The Bitbucket Cloud Workspace ID to be connected to Google Cloud Platform.
  ConnectionBitbucketCloudConfig({
    required this.authorizerCredential,
    required this.readAuthorizerCredential,
    required this.webhookSecretSecretVersion,
    required this.workspace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizerCredential': authorizerCredential.toMap(),
      'readAuthorizerCredential': readAuthorizerCredential.toMap(),
      'webhookSecretSecretVersion': webhookSecretSecretVersion,
      'workspace': workspace,
    };
  }

  factory ConnectionBitbucketCloudConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionBitbucketCloudConfig(
      authorizerCredential:
          ConnectionBitbucketCloudConfigAuthorizerCredential.fromMap(
            (map['authorizerCredential'] as Map).cast<String, dynamic>(),
          ),
      readAuthorizerCredential:
          ConnectionBitbucketCloudConfigReadAuthorizerCredential.fromMap(
            (map['readAuthorizerCredential'] as Map).cast<String, dynamic>(),
          ),
      webhookSecretSecretVersion: map['webhookSecretSecretVersion'] as String,
      workspace: map['workspace'] as String,
    );
  }
}
