// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_oauth2_credential_provider_oauth2_provider_config_custom_oauth2_provider_config_client_secret_config.dart';
import 'agentcore_oauth2_credential_provider_oauth2_provider_config_custom_oauth2_provider_config_oauth_discovery.dart';
import 'agentcore_oauth2_credential_provider_oauth2_provider_config_custom_oauth2_provider_config_on_behalf_of_token_exchange_config.dart';
import 'agentcore_oauth2_credential_provider_oauth2_provider_config_custom_oauth2_provider_config_private_endpoint.dart';
import 'agentcore_oauth2_credential_provider_oauth2_provider_config_custom_oauth2_provider_config_private_endpoint_override.dart';
import 'agentcore_oauth2_credential_provider_oauth2_provider_config_custom_oauth2_provider_config_private_key_jwt_config.dart';

class AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfig {
  /// Client authentication method used with the token endpoint. Valid values: `CLIENT_SECRET_BASIC`, `CLIENT_SECRET_POST`, `AWS_IAM_ID_TOKEN_JWT`.
  final pulumi.Input<String?>? clientAuthenticationMethod;
  /// Required when `clientIdWo` and `clientSecretWo` are set. Changing this value triggers an update to `clientIdWo` and `clientSecretWo`.
  ///
  /// **OAuth Discovery Configuration:**
  final pulumi.Input<int?>? clientCredentialsWoVersion;
  /// OAuth2 client ID. Conflicts with `clientIdWo`. Must be used together with `clientSecret`.
  final pulumi.Input<String?>? clientId;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Write-only OAuth2 client ID. Conflicts with `clientId`. If set, requires `clientSecretWo` and `clientCredentialsWoVersion` to be set.
  final pulumi.Input<String?>? clientIdWo;
  /// OAuth2 client secret. Conflicts with `clientSecretWo`. Must be used together with `clientId`.
  ///
  /// **Write-Only Credentials (choose one pair):**
  final pulumi.Input<String?>? clientSecret;
  /// Reference to an AWS Secrets Manager secret that stores the client secret. Required when `clientSecretSource` is `EXTERNAL`. See `clientSecretConfig` below.
  ///
  /// **Advanced Configuration:**
  final pulumi.Input<AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigClientSecretConfig?>? clientSecretConfig;
  /// Source type of the client secret. Valid values: `MANAGED` (the service manages the secret) or `EXTERNAL` (you manage the secret in AWS Secrets Manager). Use `EXTERNAL` together with `clientSecretConfig`.
  final pulumi.Input<String?>? clientSecretSource;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Write-only OAuth2 client secret. Conflicts with `clientSecret`. If set, requires `clientIdWo` and `clientCredentialsWoVersion` to be set.
  final pulumi.Input<String?>? clientSecretWo;
  /// OAuth discovery configuration. See `oauthDiscovery` below.
  ///
  /// **Externally-Managed Client Secret:**
  final pulumi.Input<AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOauthDiscovery> oauthDiscovery;
  /// On-behalf-of token exchange configuration, enabling RFC 8693 token exchange or RFC 7523 JWT authorization grant flows. See `onBehalfOfTokenExchangeConfig` below.
  final pulumi.Input<AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOnBehalfOfTokenExchangeConfig?>? onBehalfOfTokenExchangeConfig;
  /// Default private endpoint for the custom OAuth2 provider, enabling secure connectivity through a VPC Lattice resource configuration. See `privateEndpoint` below.
  final pulumi.Input<AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpoint?>? privateEndpoint;
  /// Private endpoint overrides for the custom OAuth2 provider configuration. See `privateEndpointOverride` below.
  final pulumi.Input<List<AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpointOverride>?>? privateEndpointOverrides;
  final pulumi.Input<AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateKeyJwtConfig?>? privateKeyJwtConfig;

  /// Creates a new [AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfig].
  /// [clientAuthenticationMethod] Client authentication method used with the token endpoint. Valid values: `CLIENT_SECRET_BASIC`, `CLIENT_SECRET_POST`, `AWS_IAM_ID_TOKEN_JWT`.
  /// [clientCredentialsWoVersion] Required when `clientIdWo` and `clientSecretWo` are set. Changing this value triggers an update to `clientIdWo` and `clientSecretWo`.
  /// [clientId] OAuth2 client ID. Conflicts with `clientIdWo`. Must be used together with `clientSecret`.
  /// [clientIdWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [clientSecret] OAuth2 client secret. Conflicts with `clientSecretWo`. Must be used together with `clientId`.
  /// [clientSecretConfig] Reference to an AWS Secrets Manager secret that stores the client secret. Required when `clientSecretSource` is `EXTERNAL`. See `clientSecretConfig` below.
  /// [clientSecretSource] Source type of the client secret. Valid values: `MANAGED` (the service manages the secret) or `EXTERNAL` (you manage the secret in AWS Secrets Manager). Use `EXTERNAL` together with `clientSecretConfig`.
  /// [clientSecretWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [oauthDiscovery] OAuth discovery configuration. See `oauthDiscovery` below.
  /// [onBehalfOfTokenExchangeConfig] On-behalf-of token exchange configuration, enabling RFC 8693 token exchange or RFC 7523 JWT authorization grant flows. See `onBehalfOfTokenExchangeConfig` below.
  /// [privateEndpoint] Default private endpoint for the custom OAuth2 provider, enabling secure connectivity through a VPC Lattice resource configuration. See `privateEndpoint` below.
  /// [privateEndpointOverrides] Private endpoint overrides for the custom OAuth2 provider configuration. See `privateEndpointOverride` below.
  /// [privateKeyJwtConfig] Optional.
  const AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfig({
    this.clientAuthenticationMethod,
    this.clientCredentialsWoVersion,
    this.clientId,
    this.clientIdWo,
    this.clientSecret,
    this.clientSecretConfig,
    this.clientSecretSource,
    this.clientSecretWo,
    required this.oauthDiscovery,
    this.onBehalfOfTokenExchangeConfig,
    this.privateEndpoint,
    this.privateEndpointOverrides,
    this.privateKeyJwtConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientAuthenticationMethod': ?clientAuthenticationMethod,
      'clientCredentialsWoVersion': ?clientCredentialsWoVersion,
      'clientId': ?clientId,
      'clientIdWo': ?clientIdWo,
      'clientSecret': ?clientSecret,
      'clientSecretConfig': ?pulumi.Input.mapOptionalInputValue<AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigClientSecretConfig, Map<String, dynamic>>(clientSecretConfig, (value) => value.toMap()),
      'clientSecretSource': ?clientSecretSource,
      'clientSecretWo': ?clientSecretWo,
      'oauthDiscovery': pulumi.Input.mapInputValue<AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOauthDiscovery, Map<String, dynamic>>(oauthDiscovery, (value) => value.toMap()),
      'onBehalfOfTokenExchangeConfig': ?pulumi.Input.mapOptionalInputValue<AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOnBehalfOfTokenExchangeConfig, Map<String, dynamic>>(onBehalfOfTokenExchangeConfig, (value) => value.toMap()),
      'privateEndpoint': ?pulumi.Input.mapOptionalInputValue<AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpoint, Map<String, dynamic>>(privateEndpoint, (value) => value.toMap()),
      'privateEndpointOverrides': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpointOverride>, List<Map<String, dynamic>>>(privateEndpointOverrides, (value) => pulumi.Input.encodeList<AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpointOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
      'privateKeyJwtConfig': ?pulumi.Input.mapOptionalInputValue<AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateKeyJwtConfig, Map<String, dynamic>>(privateKeyJwtConfig, (value) => value.toMap()),
    };
  }

  factory AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfig.fromMap(Map<String, dynamic> map) {
    return AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfig(
      clientAuthenticationMethod: (() { final guardedValue = map['clientAuthenticationMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientCredentialsWoVersion: (() { final guardedValue = map['clientCredentialsWoVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientIdWo: (() { final guardedValue = map['clientIdWo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecretConfig: (() { final guardedValue = map['clientSecretConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigClientSecretConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clientSecretSource: (() { final guardedValue = map['clientSecretSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecretWo: (() { final guardedValue = map['clientSecretWo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oauthDiscovery: pulumi.Input.fromValue(AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOauthDiscovery.fromMap((map['oauthDiscovery']! as Map).cast<String, dynamic>())),
      onBehalfOfTokenExchangeConfig: (() { final guardedValue = map['onBehalfOfTokenExchangeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOnBehalfOfTokenExchangeConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateEndpoint: (() { final guardedValue = map['privateEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateEndpointOverrides: (() { final guardedValue = map['privateEndpointOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpointOverride>(guardedValue, (value) => AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpointOverride.fromMap((value as Map).cast<String, dynamic>()))); })(),
      privateKeyJwtConfig: (() { final guardedValue = map['privateKeyJwtConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateKeyJwtConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
