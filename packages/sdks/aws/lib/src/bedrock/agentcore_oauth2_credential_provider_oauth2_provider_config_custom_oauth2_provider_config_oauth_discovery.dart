// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_oauth2_credential_provider_oauth2_provider_config_custom_oauth2_provider_config_oauth_discovery_authorization_server_metadata.dart';

class AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOauthDiscovery {
  /// OAuth2 authorization server metadata resolved by the service. See `authorizationServerMetadata` Block below.
  final pulumi.Input<AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOauthDiscoveryAuthorizationServerMetadata?>? authorizationServerMetadata;
  /// OpenID Connect discovery URL resolved by the service.
  final pulumi.Input<String?>? discoveryUrl;

  /// Creates a new [AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOauthDiscovery].
  /// [authorizationServerMetadata] OAuth2 authorization server metadata resolved by the service. See `authorizationServerMetadata` Block below.
  /// [discoveryUrl] OpenID Connect discovery URL resolved by the service.
  const AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOauthDiscovery({
    this.authorizationServerMetadata,
    this.discoveryUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationServerMetadata': ?pulumi.Input.mapOptionalInputValue<AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOauthDiscoveryAuthorizationServerMetadata, Map<String, dynamic>>(authorizationServerMetadata, (value) => value.toMap()),
      'discoveryUrl': ?discoveryUrl,
    };
  }

  factory AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOauthDiscovery.fromMap(Map<String, dynamic> map) {
    return AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOauthDiscovery(
      authorizationServerMetadata: (() { final guardedValue = map['authorizationServerMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOauthDiscoveryAuthorizationServerMetadata.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      discoveryUrl: (() { final guardedValue = map['discoveryUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
