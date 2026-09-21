// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_oauth2_credential_provider_oauth2_provider_config_google_oauth2_provider_config_client_secret_config.dart';
import 'agentcore_oauth2_credential_provider_oauth2_provider_config_google_oauth2_provider_config_oauth_discovery.dart';

class AgentcoreOauth2CredentialProviderOauth2ProviderConfigGoogleOauth2ProviderConfig {
  /// Required when `clientIdWo` and `clientSecretWo` are set. Changing this value triggers an update to `clientIdWo` and `clientSecretWo`.
  ///
  /// **Microsoft-Specific Configuration:**
  ///
  /// The Microsoft OAuth2 provider supports additional tenant-specific arguments:
  ///
  /// **Standard Tenant ID:**
  final pulumi.Input<int?>? clientCredentialsWoVersion;
  /// OAuth2 client ID. Cannot be used with `clientIdWo`. Must be used together with `clientSecret`.
  final pulumi.Input<String?>? clientId;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Write-only OAuth2 client ID. Conflicts with `clientId`. If set, requires `clientSecretWo` and `clientCredentialsWoVersion` to be set.
  final pulumi.Input<String?>? clientIdWo;
  /// OAuth2 client secret. Cannot be used with `clientSecretWo`. Must be used together with `clientId`.
  ///
  /// **Write-Only Credentials (choose one pair):**
  final pulumi.Input<String?>? clientSecret;
  /// Reference to an AWS Secrets Manager secret that stores the client secret. Required when `clientSecretSource` is `EXTERNAL`. See `clientSecretConfig` below.
  ///
  /// **Advanced Configuration:**
  final pulumi.Input<AgentcoreOauth2CredentialProviderOauth2ProviderConfigGoogleOauth2ProviderConfigClientSecretConfig?>? clientSecretConfig;
  /// Source type of the client secret. Valid values: `MANAGED` (the service manages the secret) or `EXTERNAL` (you manage the secret in AWS Secrets Manager). Use `EXTERNAL` together with `clientSecretConfig`.
  final pulumi.Input<String?>? clientSecretSource;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Write-only OAuth2 client secret. Conflicts with `clientSecret`. If set, requires `clientIdWo` and `clientCredentialsWoVersion` to be set.
  final pulumi.Input<String?>? clientSecretWo;
  /// OAuth discovery configuration. See `oauthDiscovery` below.
  ///
  /// **Externally-Managed Client Secret:**
  final pulumi.Input<List<AgentcoreOauth2CredentialProviderOauth2ProviderConfigGoogleOauth2ProviderConfigOauthDiscovery>?>? oauthDiscoveries;

  /// Creates a new [AgentcoreOauth2CredentialProviderOauth2ProviderConfigGoogleOauth2ProviderConfig].
  /// [clientCredentialsWoVersion] Required when `clientIdWo` and `clientSecretWo` are set. Changing this value triggers an update to `clientIdWo` and `clientSecretWo`.
  /// [clientId] OAuth2 client ID. Cannot be used with `clientIdWo`. Must be used together with `clientSecret`.
  /// [clientIdWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [clientSecret] OAuth2 client secret. Cannot be used with `clientSecretWo`. Must be used together with `clientId`.
  /// [clientSecretConfig] Reference to an AWS Secrets Manager secret that stores the client secret. Required when `clientSecretSource` is `EXTERNAL`. See `clientSecretConfig` below.
  /// [clientSecretSource] Source type of the client secret. Valid values: `MANAGED` (the service manages the secret) or `EXTERNAL` (you manage the secret in AWS Secrets Manager). Use `EXTERNAL` together with `clientSecretConfig`.
  /// [clientSecretWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [oauthDiscoveries] OAuth discovery configuration. See `oauthDiscovery` below.
  const AgentcoreOauth2CredentialProviderOauth2ProviderConfigGoogleOauth2ProviderConfig({
    this.clientCredentialsWoVersion,
    this.clientId,
    this.clientIdWo,
    this.clientSecret,
    this.clientSecretConfig,
    this.clientSecretSource,
    this.clientSecretWo,
    this.oauthDiscoveries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientCredentialsWoVersion': ?clientCredentialsWoVersion,
      'clientId': ?clientId,
      'clientIdWo': ?clientIdWo,
      'clientSecret': ?clientSecret,
      'clientSecretConfig': ?pulumi.Input.mapOptionalInputValue<AgentcoreOauth2CredentialProviderOauth2ProviderConfigGoogleOauth2ProviderConfigClientSecretConfig, Map<String, dynamic>>(clientSecretConfig, (value) => value.toMap()),
      'clientSecretSource': ?clientSecretSource,
      'clientSecretWo': ?clientSecretWo,
      'oauthDiscoveries': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreOauth2CredentialProviderOauth2ProviderConfigGoogleOauth2ProviderConfigOauthDiscovery>, List<Map<String, dynamic>>>(oauthDiscoveries, (value) => pulumi.Input.encodeList<AgentcoreOauth2CredentialProviderOauth2ProviderConfigGoogleOauth2ProviderConfigOauthDiscovery, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AgentcoreOauth2CredentialProviderOauth2ProviderConfigGoogleOauth2ProviderConfig.fromMap(Map<String, dynamic> map) {
    return AgentcoreOauth2CredentialProviderOauth2ProviderConfigGoogleOauth2ProviderConfig(
      clientCredentialsWoVersion: (() { final guardedValue = map['clientCredentialsWoVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientIdWo: (() { final guardedValue = map['clientIdWo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecretConfig: (() { final guardedValue = map['clientSecretConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreOauth2CredentialProviderOauth2ProviderConfigGoogleOauth2ProviderConfigClientSecretConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clientSecretSource: (() { final guardedValue = map['clientSecretSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecretWo: (() { final guardedValue = map['clientSecretWo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oauthDiscoveries: (() { final guardedValue = map['oauthDiscoveries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreOauth2CredentialProviderOauth2ProviderConfigGoogleOauth2ProviderConfigOauthDiscovery>(guardedValue, (value) => AgentcoreOauth2CredentialProviderOauth2ProviderConfigGoogleOauth2ProviderConfigOauthDiscovery.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
