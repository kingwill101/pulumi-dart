// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../agentcore_oauth2_credential_provider_oauth2_provider_config_salesforce_oauth2_provider_config_oauth_discovery_authorization_server_metadata/agentcore_oauth2_credential_provider_oauth2_provider_config_salesforce_oauth2_provider_config_oauth_discovery_authorization_server_metadata.dart';

class AgentcoreOauth2CredentialProviderOauth2ProviderConfigSalesforceOauth2ProviderConfigOauthDiscovery {
  /// Manual OAuth2 authorization server metadata configuration. Cannot be used together with <span pulumi-lang-nodejs="`discoveryUrl`" pulumi-lang-dotnet="`DiscoveryUrl`" pulumi-lang-go="`discoveryUrl`" pulumi-lang-python="`discovery_url`" pulumi-lang-yaml="`discoveryUrl`" pulumi-lang-java="`discoveryUrl`">`discovery_url`</span>. See <span pulumi-lang-nodejs="`authorizationServerMetadata`" pulumi-lang-dotnet="`AuthorizationServerMetadata`" pulumi-lang-go="`authorizationServerMetadata`" pulumi-lang-python="`authorization_server_metadata`" pulumi-lang-yaml="`authorizationServerMetadata`" pulumi-lang-java="`authorizationServerMetadata`">`authorization_server_metadata`</span> below.
  final List<
          AgentcoreOauth2CredentialProviderOauth2ProviderConfigSalesforceOauth2ProviderConfigOauthDiscoveryAuthorizationServerMetadata>
      authorizationServerMetadatas;

  /// OpenID Connect discovery URL (e.g., `https://provider.com/.well-known/openid-configuration`). Cannot be used together with <span pulumi-lang-nodejs="`authorizationServerMetadata`" pulumi-lang-dotnet="`AuthorizationServerMetadata`" pulumi-lang-go="`authorizationServerMetadata`" pulumi-lang-python="`authorization_server_metadata`" pulumi-lang-yaml="`authorizationServerMetadata`" pulumi-lang-java="`authorizationServerMetadata`">`authorization_server_metadata`</span>.
  final String discoveryUrl;

  AgentcoreOauth2CredentialProviderOauth2ProviderConfigSalesforceOauth2ProviderConfigOauthDiscovery({
    required this.authorizationServerMetadatas,
    required this.discoveryUrl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authorizationServerMetadatas'] = Input.encodeList<
        AgentcoreOauth2CredentialProviderOauth2ProviderConfigSalesforceOauth2ProviderConfigOauthDiscoveryAuthorizationServerMetadata,
        Map<String,
            dynamic>>(authorizationServerMetadatas, (value) => value.toMap());
    map['discoveryUrl'] = discoveryUrl;
    return map;
  }

  factory AgentcoreOauth2CredentialProviderOauth2ProviderConfigSalesforceOauth2ProviderConfigOauthDiscovery.fromMap(
      Map<String, dynamic> map) {
    return AgentcoreOauth2CredentialProviderOauth2ProviderConfigSalesforceOauth2ProviderConfigOauthDiscovery(
      authorizationServerMetadatas: Input.decodeList<
              AgentcoreOauth2CredentialProviderOauth2ProviderConfigSalesforceOauth2ProviderConfigOauthDiscoveryAuthorizationServerMetadata>(
          map['authorizationServerMetadatas'],
          (value) =>
              AgentcoreOauth2CredentialProviderOauth2ProviderConfigSalesforceOauth2ProviderConfigOauthDiscoveryAuthorizationServerMetadata
                  .fromMap((value as Map).cast<String, dynamic>())),
      discoveryUrl: map['discoveryUrl'] as String,
    );
  }
}
