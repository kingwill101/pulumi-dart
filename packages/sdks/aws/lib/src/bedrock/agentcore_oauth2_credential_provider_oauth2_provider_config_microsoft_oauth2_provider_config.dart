// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_oauth2_credential_provider_oauth2_provider_config_microsoft_oauth2_provider_config_oauth_discovery.dart';

class AgentcoreOauth2CredentialProviderOauth2ProviderConfigMicrosoftOauth2ProviderConfig {
  final pulumi.Input<int>? clientCredentialsWoVersion;
  final pulumi.Input<String>? clientId;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  final pulumi.Input<String>? clientIdWo;
  final pulumi.Input<String>? clientSecret;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  final pulumi.Input<String>? clientSecretWo;
  /// OAuth discovery configuration. See `oauth_discovery` below.
  final pulumi.Input<List<AgentcoreOauth2CredentialProviderOauth2ProviderConfigMicrosoftOauth2ProviderConfigOauthDiscovery>>? oauthDiscoveries;

  /// Creates a new [AgentcoreOauth2CredentialProviderOauth2ProviderConfigMicrosoftOauth2ProviderConfig].
  /// [clientCredentialsWoVersion] Optional.
  /// [clientId] Optional.
  /// [clientIdWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [clientSecret] Optional.
  /// [clientSecretWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [oauthDiscoveries] OAuth discovery configuration. See `oauth_discovery` below.
  AgentcoreOauth2CredentialProviderOauth2ProviderConfigMicrosoftOauth2ProviderConfig({
    this.clientCredentialsWoVersion,
    this.clientId,
    this.clientIdWo,
    this.clientSecret,
    this.clientSecretWo,
    this.oauthDiscoveries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientCredentialsWoVersion': ?clientCredentialsWoVersion,
      'clientId': ?clientId,
      'clientIdWo': ?clientIdWo,
      'clientSecret': ?clientSecret,
      'clientSecretWo': ?clientSecretWo,
      'oauthDiscoveries': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreOauth2CredentialProviderOauth2ProviderConfigMicrosoftOauth2ProviderConfigOauthDiscovery>, List<Map<String, dynamic>>>(oauthDiscoveries, (value) => pulumi.Input.encodeList<AgentcoreOauth2CredentialProviderOauth2ProviderConfigMicrosoftOauth2ProviderConfigOauthDiscovery, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AgentcoreOauth2CredentialProviderOauth2ProviderConfigMicrosoftOauth2ProviderConfig.fromMap(Map<String, dynamic> map) {
    return AgentcoreOauth2CredentialProviderOauth2ProviderConfigMicrosoftOauth2ProviderConfig(
      clientCredentialsWoVersion: map['clientCredentialsWoVersion'] == null ? null : ((map['clientCredentialsWoVersion'] as int).input()).input(),
      clientId: map['clientId'] == null ? null : ((map['clientId'] as String).input()).input(),
      clientIdWo: map['clientIdWo'] == null ? null : ((map['clientIdWo'] as String).input()).input(),
      clientSecret: map['clientSecret'] == null ? null : ((map['clientSecret'] as String).input()).input(),
      clientSecretWo: map['clientSecretWo'] == null ? null : ((map['clientSecretWo'] as String).input()).input(),
      oauthDiscoveries: map['oauthDiscoveries'] == null ? null : ((pulumi.Input.decodeList<AgentcoreOauth2CredentialProviderOauth2ProviderConfigMicrosoftOauth2ProviderConfigOauthDiscovery>(map['oauthDiscoveries']!, (value) => AgentcoreOauth2CredentialProviderOauth2ProviderConfigMicrosoftOauth2ProviderConfigOauthDiscovery.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
    );
  }
}

