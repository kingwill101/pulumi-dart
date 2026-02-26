// ignore_for_file: unused_element, unnecessary_cast

import '../connection_bitbucket_cloud_config_authorizer_credential/connection_bitbucket_cloud_config_authorizer_credential.dart';
import '../connection_bitbucket_cloud_config_read_authorizer_credential/connection_bitbucket_cloud_config_read_authorizer_credential.dart';

class ConnectionBitbucketCloudConfig {
  /// Required. An access token with the <span pulumi-lang-nodejs="`webhook`" pulumi-lang-dotnet="`Webhook`" pulumi-lang-go="`webhook`" pulumi-lang-python="`webhook`" pulumi-lang-yaml="`webhook`" pulumi-lang-java="`webhook`">`webhook`</span>, <span pulumi-lang-nodejs="`repository`" pulumi-lang-dotnet="`Repository`" pulumi-lang-go="`repository`" pulumi-lang-python="`repository`" pulumi-lang-yaml="`repository`" pulumi-lang-java="`repository`">`repository`</span>, `repository:admin` and <span pulumi-lang-nodejs="`pullrequest`" pulumi-lang-dotnet="`Pullrequest`" pulumi-lang-go="`pullrequest`" pulumi-lang-python="`pullrequest`" pulumi-lang-yaml="`pullrequest`" pulumi-lang-java="`pullrequest`">`pullrequest`</span> scope access. It can be either a workspace, project or repository access token. It's recommended to use a system account to generate these credentials.
  /// Structure is documented below.
  final ConnectionBitbucketCloudConfigAuthorizerCredential authorizerCredential;

  /// Required. An access token with the <span pulumi-lang-nodejs="`repository`" pulumi-lang-dotnet="`Repository`" pulumi-lang-go="`repository`" pulumi-lang-python="`repository`" pulumi-lang-yaml="`repository`" pulumi-lang-java="`repository`">`repository`</span> access. It can be either a workspace, project or repository access token. It's recommended to use a system account to generate the credentials.
  /// Structure is documented below.
  final ConnectionBitbucketCloudConfigReadAuthorizerCredential
      readAuthorizerCredential;

  /// Required. Immutable. SecretManager resource containing the webhook secret used to verify webhook events, formatted as `projects/*/secrets/*/versions/*`.
  final String webhookSecretSecretVersion;

  /// The Bitbucket Cloud Workspace ID to be connected to Google Cloud Platform.
  final String workspace;

  ConnectionBitbucketCloudConfig({
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

  factory ConnectionBitbucketCloudConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionBitbucketCloudConfig(
      authorizerCredential:
          ConnectionBitbucketCloudConfigAuthorizerCredential.fromMap(
              (map['authorizerCredential'] as Map).cast<String, dynamic>()),
      readAuthorizerCredential:
          ConnectionBitbucketCloudConfigReadAuthorizerCredential.fromMap(
              (map['readAuthorizerCredential'] as Map).cast<String, dynamic>()),
      webhookSecretSecretVersion: map['webhookSecretSecretVersion'] as String,
      workspace: map['workspace'] as String,
    );
  }
}
