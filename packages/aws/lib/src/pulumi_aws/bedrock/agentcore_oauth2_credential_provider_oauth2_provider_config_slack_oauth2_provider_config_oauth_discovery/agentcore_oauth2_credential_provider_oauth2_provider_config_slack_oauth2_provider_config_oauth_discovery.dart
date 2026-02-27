// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../agentcore_oauth2_credential_provider_oauth2_provider_config_slack_oauth2_provider_config_oauth_discovery_authorization_server_metadata/agentcore_oauth2_credential_provider_oauth2_provider_config_slack_oauth2_provider_config_oauth_discovery_authorization_server_metadata.dart';

class AgentcoreOauth2CredentialProviderOauth2ProviderConfigSlackOauth2ProviderConfigOauthDiscovery {
  /// Manual OAuth2 authorization server metadata configuration. Cannot be used together with `discovery_url`. See `authorization_server_metadata` below.
  final List<
          AgentcoreOauth2CredentialProviderOauth2ProviderConfigSlackOauth2ProviderConfigOauthDiscoveryAuthorizationServerMetadata>
      authorizationServerMetadatas;

  /// OpenID Connect discovery URL (e.g., `https://provider.com/.well-known/openid-configuration`). Cannot be used together with `authorization_server_metadata`.
  final String discoveryUrl;

  AgentcoreOauth2CredentialProviderOauth2ProviderConfigSlackOauth2ProviderConfigOauthDiscovery({
    required this.authorizationServerMetadatas,
    required this.discoveryUrl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authorizationServerMetadatas'] = Input.encodeList<
        AgentcoreOauth2CredentialProviderOauth2ProviderConfigSlackOauth2ProviderConfigOauthDiscoveryAuthorizationServerMetadata,
        Map<String,
            dynamic>>(authorizationServerMetadatas, (value) => value.toMap());
    map['discoveryUrl'] = discoveryUrl;
    return map;
  }

  factory AgentcoreOauth2CredentialProviderOauth2ProviderConfigSlackOauth2ProviderConfigOauthDiscovery.fromMap(
      Map<String, dynamic> map) {
    return AgentcoreOauth2CredentialProviderOauth2ProviderConfigSlackOauth2ProviderConfigOauthDiscovery(
      authorizationServerMetadatas: Input.decodeList<
              AgentcoreOauth2CredentialProviderOauth2ProviderConfigSlackOauth2ProviderConfigOauthDiscoveryAuthorizationServerMetadata>(
          map['authorizationServerMetadatas'],
          (value) =>
              AgentcoreOauth2CredentialProviderOauth2ProviderConfigSlackOauth2ProviderConfigOauthDiscoveryAuthorizationServerMetadata
                  .fromMap((value as Map).cast<String, dynamic>())),
      discoveryUrl: map['discoveryUrl'] as String,
    );
  }
}
