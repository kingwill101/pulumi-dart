// ignore_for_file: unused_element, unnecessary_cast

import 'agentcore_oauth2_credential_provider_oauth2_provider_config_custom_oauth2_provider_config_oauth_discovery_authorization_server_metadata.dart';

class AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOauthDiscovery {
  /// Manual OAuth2 authorization server metadata configuration. Cannot be used together with `discovery_url`. See `authorization_server_metadata` below.
  final AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOauthDiscoveryAuthorizationServerMetadata?
      authorizationServerMetadata;

  /// OpenID Connect discovery URL (e.g., `https://provider.com/.well-known/openid-configuration`). Cannot be used together with `authorization_server_metadata`.
  final String? discoveryUrl;

  /// Creates a new [AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOauthDiscovery].
  /// [authorizationServerMetadata] Manual OAuth2 authorization server metadata configuration. Cannot be used together with `discovery_url`. See `authorization_server_metadata` below.
  /// [discoveryUrl] OpenID Connect discovery URL (e.g., `https://provider.com/.well-known/openid-configuration`). Cannot be used together with `authorization_server_metadata`.
  AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOauthDiscovery({
    this.authorizationServerMetadata,
    this.discoveryUrl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authorizationServerMetadataValue = authorizationServerMetadata;
    if (authorizationServerMetadataValue != null) {
      map['authorizationServerMetadata'] =
          authorizationServerMetadataValue.toMap();
    }
    final discoveryUrlValue = discoveryUrl;
    if (discoveryUrlValue != null) {
      map['discoveryUrl'] = discoveryUrlValue;
    }
    return map;
  }

  factory AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOauthDiscovery.fromMap(
      Map<String, dynamic> map) {
    return AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOauthDiscovery(
      authorizationServerMetadata: map['authorizationServerMetadata'] == null
          ? null
          : AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOauthDiscoveryAuthorizationServerMetadata
              .fromMap((map['authorizationServerMetadata'] as Map)
                  .cast<String, dynamic>()),
      discoveryUrl:
          map['discoveryUrl'] == null ? null : map['discoveryUrl'] as String,
    );
  }
}
