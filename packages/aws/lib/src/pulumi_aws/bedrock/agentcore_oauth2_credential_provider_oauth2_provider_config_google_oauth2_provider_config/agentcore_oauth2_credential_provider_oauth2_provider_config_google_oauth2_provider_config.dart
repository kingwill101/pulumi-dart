// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../agentcore_oauth2_credential_provider_oauth2_provider_config_google_oauth2_provider_config_oauth_discovery/agentcore_oauth2_credential_provider_oauth2_provider_config_google_oauth2_provider_config_oauth_discovery.dart';

class AgentcoreOauth2CredentialProviderOauth2ProviderConfigGoogleOauth2ProviderConfig {
  final int? clientCredentialsWoVersion;
  final String? clientId;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  final String? clientIdWo;
  final String? clientSecret;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  final String? clientSecretWo;

  /// OAuth discovery configuration. See `oauth_discovery` below.
  final List<
          AgentcoreOauth2CredentialProviderOauth2ProviderConfigGoogleOauth2ProviderConfigOauthDiscovery>?
      oauthDiscoveries;

  AgentcoreOauth2CredentialProviderOauth2ProviderConfigGoogleOauth2ProviderConfig({
    this.clientCredentialsWoVersion,
    this.clientId,
    this.clientIdWo,
    this.clientSecret,
    this.clientSecretWo,
    this.oauthDiscoveries,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clientCredentialsWoVersionValue = clientCredentialsWoVersion;
    if (clientCredentialsWoVersionValue != null) {
      map['clientCredentialsWoVersion'] = clientCredentialsWoVersionValue;
    }
    final clientIdValue = clientId;
    if (clientIdValue != null) {
      map['clientId'] = clientIdValue;
    }
    final clientIdWoValue = clientIdWo;
    if (clientIdWoValue != null) {
      map['clientIdWo'] = clientIdWoValue;
    }
    final clientSecretValue = clientSecret;
    if (clientSecretValue != null) {
      map['clientSecret'] = clientSecretValue;
    }
    final clientSecretWoValue = clientSecretWo;
    if (clientSecretWoValue != null) {
      map['clientSecretWo'] = clientSecretWoValue;
    }
    final oauthDiscoveriesValue = oauthDiscoveries;
    if (oauthDiscoveriesValue != null) {
      map['oauthDiscoveries'] = pulumi.Input.encodeList<
          AgentcoreOauth2CredentialProviderOauth2ProviderConfigGoogleOauth2ProviderConfigOauthDiscovery,
          Map<String,
              dynamic>>(oauthDiscoveriesValue, (value) => value.toMap());
    }
    return map;
  }

  factory AgentcoreOauth2CredentialProviderOauth2ProviderConfigGoogleOauth2ProviderConfig.fromMap(
      Map<String, dynamic> map) {
    return AgentcoreOauth2CredentialProviderOauth2ProviderConfigGoogleOauth2ProviderConfig(
      clientCredentialsWoVersion: map['clientCredentialsWoVersion'] == null
          ? null
          : map['clientCredentialsWoVersion'] as int,
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      clientIdWo:
          map['clientIdWo'] == null ? null : map['clientIdWo'] as String,
      clientSecret:
          map['clientSecret'] == null ? null : map['clientSecret'] as String,
      clientSecretWo: map['clientSecretWo'] == null
          ? null
          : map['clientSecretWo'] as String,
      oauthDiscoveries: map['oauthDiscoveries'] == null
          ? null
          : pulumi.Input.decodeList<
                  AgentcoreOauth2CredentialProviderOauth2ProviderConfigGoogleOauth2ProviderConfigOauthDiscovery>(
              map['oauthDiscoveries'],
              (value) =>
                  AgentcoreOauth2CredentialProviderOauth2ProviderConfigGoogleOauth2ProviderConfigOauthDiscovery
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
