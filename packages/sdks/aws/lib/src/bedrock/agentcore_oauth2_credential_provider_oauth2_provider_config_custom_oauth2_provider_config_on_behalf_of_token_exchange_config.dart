// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_oauth2_credential_provider_oauth2_provider_config_custom_oauth2_provider_config_on_behalf_of_token_exchange_config_token_exchange_grant_type_config.dart';

class AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOnBehalfOfTokenExchangeConfig {
  /// Grant type for the on-behalf-of token exchange. Valid values: `TOKEN_EXCHANGE`, `JWT_AUTHORIZATION_GRANT`.
  final pulumi.Input<String> grantType;
  /// Configuration specific to the `TOKEN_EXCHANGE` grant type (RFC 8693). See `tokenExchangeGrantTypeConfig` below.
  final pulumi.Input<AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOnBehalfOfTokenExchangeConfigTokenExchangeGrantTypeConfig?>? tokenExchangeGrantTypeConfig;

  /// Creates a new [AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOnBehalfOfTokenExchangeConfig].
  /// [grantType] Grant type for the on-behalf-of token exchange. Valid values: `TOKEN_EXCHANGE`, `JWT_AUTHORIZATION_GRANT`.
  /// [tokenExchangeGrantTypeConfig] Configuration specific to the `TOKEN_EXCHANGE` grant type (RFC 8693). See `tokenExchangeGrantTypeConfig` below.
  const AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOnBehalfOfTokenExchangeConfig({
    required this.grantType,
    this.tokenExchangeGrantTypeConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grantType': grantType,
      'tokenExchangeGrantTypeConfig': ?pulumi.Input.mapOptionalInputValue<AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOnBehalfOfTokenExchangeConfigTokenExchangeGrantTypeConfig, Map<String, dynamic>>(tokenExchangeGrantTypeConfig, (value) => value.toMap()),
    };
  }

  factory AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOnBehalfOfTokenExchangeConfig.fromMap(Map<String, dynamic> map) {
    return AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOnBehalfOfTokenExchangeConfig(
      grantType: pulumi.Input.fromValue(map['grantType'] as String),
      tokenExchangeGrantTypeConfig: (() { final guardedValue = map['tokenExchangeGrantTypeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOnBehalfOfTokenExchangeConfigTokenExchangeGrantTypeConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
