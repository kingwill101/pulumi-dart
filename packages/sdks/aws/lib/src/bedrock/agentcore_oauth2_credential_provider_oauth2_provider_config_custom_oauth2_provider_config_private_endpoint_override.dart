// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_oauth2_credential_provider_oauth2_provider_config_custom_oauth2_provider_config_private_endpoint_override_private_endpoint.dart';

class AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpointOverride {
  /// Domain the private endpoint override applies to.
  final pulumi.Input<String> domain;
  /// Private endpoint configuration for the domain. See `privateEndpoint` above.
  final pulumi.Input<AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpointOverridePrivateEndpoint> privateEndpoint;

  /// Creates a new [AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpointOverride].
  /// [domain] Domain the private endpoint override applies to.
  /// [privateEndpoint] Private endpoint configuration for the domain. See `privateEndpoint` above.
  const AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpointOverride({
    required this.domain,
    required this.privateEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
      'privateEndpoint': pulumi.Input.mapInputValue<AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpointOverridePrivateEndpoint, Map<String, dynamic>>(privateEndpoint, (value) => value.toMap()),
    };
  }

  factory AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpointOverride.fromMap(Map<String, dynamic> map) {
    return AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpointOverride(
      domain: pulumi.Input.fromValue(map['domain'] as String),
      privateEndpoint: pulumi.Input.fromValue(AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpointOverridePrivateEndpoint.fromMap((map['privateEndpoint']! as Map).cast<String, dynamic>())),
    );
  }
}
