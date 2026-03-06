// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_oauth2_credential_provider_oauth2_provider_config_custom_oauth2_provider_config_oauth_discovery.dart';

class AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfig {
  /// Used together with write-only credentials to trigger an update. Increment this value when an update to `client_id_wo` or `client_secret_wo` is required.
  ///
  /// **OAuth Discovery Configuration:**
  final pulumi.Input<int>? clientCredentialsWoVersion;
  /// OAuth2 client ID. Cannot be used with `client_id_wo`. Must be used together with `client_secret`.
  final pulumi.Input<String>? clientId;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Write-only OAuth2 client ID. Cannot be used with `client_id`. Must be used together with `client_secret_wo` and `client_credentials_wo_version`.
  final pulumi.Input<String>? clientIdWo;
  /// OAuth2 client secret. Cannot be used with `client_secret_wo`. Must be used together with `client_id`.
  ///
  /// **Write-Only Credentials (choose one pair):**
  final pulumi.Input<String>? clientSecret;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Write-only OAuth2 client secret. Cannot be used with `client_secret`. Must be used together with `client_id_wo` and `client_credentials_wo_version`.
  final pulumi.Input<String>? clientSecretWo;
  /// OAuth discovery configuration. See `oauth_discovery` below.
  final pulumi.Input<AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOauthDiscovery>? oauthDiscovery;

  /// Creates a new [AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfig].
  /// [clientCredentialsWoVersion] Used together with write-only credentials to trigger an update. Increment this value when an update to `client_id_wo` or `client_secret_wo` is required.
  /// [clientId] OAuth2 client ID. Cannot be used with `client_id_wo`. Must be used together with `client_secret`.
  /// [clientIdWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [clientSecret] OAuth2 client secret. Cannot be used with `client_secret_wo`. Must be used together with `client_id`.
  /// [clientSecretWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [oauthDiscovery] OAuth discovery configuration. See `oauth_discovery` below.
  const AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfig({
    this.clientCredentialsWoVersion,
    this.clientId,
    this.clientIdWo,
    this.clientSecret,
    this.clientSecretWo,
    this.oauthDiscovery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientCredentialsWoVersion': ?clientCredentialsWoVersion,
      'clientId': ?clientId,
      'clientIdWo': ?clientIdWo,
      'clientSecret': ?clientSecret,
      'clientSecretWo': ?clientSecretWo,
      'oauthDiscovery': ?pulumi.Input.mapOptionalInputValue<AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOauthDiscovery, Map<String, dynamic>>(oauthDiscovery, (value) => value.toMap()),
    };
  }

  factory AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfig.fromMap(Map<String, dynamic> map) {
    return AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfig(
      clientCredentialsWoVersion: (() { final guardedValue = map['clientCredentialsWoVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientIdWo: (() { final guardedValue = map['clientIdWo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecretWo: (() { final guardedValue = map['clientSecretWo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oauthDiscovery: (() { final guardedValue = map['oauthDiscovery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOauthDiscovery.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

