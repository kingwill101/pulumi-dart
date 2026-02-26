// ignore_for_file: unused_element, unnecessary_cast

import '../agentcore_oauth2_credential_provider_oauth2_provider_config_custom_oauth2_provider_config_oauth_discovery/agentcore_oauth2_credential_provider_oauth2_provider_config_custom_oauth2_provider_config_oauth_discovery.dart';

class AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfig {
  /// Used together with write-only credentials to trigger an update. Increment this value when an update to <span pulumi-lang-nodejs="`clientIdWo`" pulumi-lang-dotnet="`ClientIdWo`" pulumi-lang-go="`clientIdWo`" pulumi-lang-python="`client_id_wo`" pulumi-lang-yaml="`clientIdWo`" pulumi-lang-java="`clientIdWo`">`client_id_wo`</span> or <span pulumi-lang-nodejs="`clientSecretWo`" pulumi-lang-dotnet="`ClientSecretWo`" pulumi-lang-go="`clientSecretWo`" pulumi-lang-python="`client_secret_wo`" pulumi-lang-yaml="`clientSecretWo`" pulumi-lang-java="`clientSecretWo`">`client_secret_wo`</span> is required.
  ///
  /// **OAuth Discovery Configuration:**
  final int? clientCredentialsWoVersion;

  /// OAuth2 client ID. Cannot be used with <span pulumi-lang-nodejs="`clientIdWo`" pulumi-lang-dotnet="`ClientIdWo`" pulumi-lang-go="`clientIdWo`" pulumi-lang-python="`client_id_wo`" pulumi-lang-yaml="`clientIdWo`" pulumi-lang-java="`clientIdWo`">`client_id_wo`</span>. Must be used together with <span pulumi-lang-nodejs="`clientSecret`" pulumi-lang-dotnet="`ClientSecret`" pulumi-lang-go="`clientSecret`" pulumi-lang-python="`client_secret`" pulumi-lang-yaml="`clientSecret`" pulumi-lang-java="`clientSecret`">`client_secret`</span>.
  final String? clientId;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Write-only OAuth2 client ID. Cannot be used with <span pulumi-lang-nodejs="`clientId`" pulumi-lang-dotnet="`ClientId`" pulumi-lang-go="`clientId`" pulumi-lang-python="`client_id`" pulumi-lang-yaml="`clientId`" pulumi-lang-java="`clientId`">`client_id`</span>. Must be used together with <span pulumi-lang-nodejs="`clientSecretWo`" pulumi-lang-dotnet="`ClientSecretWo`" pulumi-lang-go="`clientSecretWo`" pulumi-lang-python="`client_secret_wo`" pulumi-lang-yaml="`clientSecretWo`" pulumi-lang-java="`clientSecretWo`">`client_secret_wo`</span> and <span pulumi-lang-nodejs="`clientCredentialsWoVersion`" pulumi-lang-dotnet="`ClientCredentialsWoVersion`" pulumi-lang-go="`clientCredentialsWoVersion`" pulumi-lang-python="`client_credentials_wo_version`" pulumi-lang-yaml="`clientCredentialsWoVersion`" pulumi-lang-java="`clientCredentialsWoVersion`">`client_credentials_wo_version`</span>.
  final String? clientIdWo;

  /// OAuth2 client secret. Cannot be used with <span pulumi-lang-nodejs="`clientSecretWo`" pulumi-lang-dotnet="`ClientSecretWo`" pulumi-lang-go="`clientSecretWo`" pulumi-lang-python="`client_secret_wo`" pulumi-lang-yaml="`clientSecretWo`" pulumi-lang-java="`clientSecretWo`">`client_secret_wo`</span>. Must be used together with <span pulumi-lang-nodejs="`clientId`" pulumi-lang-dotnet="`ClientId`" pulumi-lang-go="`clientId`" pulumi-lang-python="`client_id`" pulumi-lang-yaml="`clientId`" pulumi-lang-java="`clientId`">`client_id`</span>.
  ///
  /// **Write-Only Credentials (choose one pair):**
  final String? clientSecret;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Write-only OAuth2 client secret. Cannot be used with <span pulumi-lang-nodejs="`clientSecret`" pulumi-lang-dotnet="`ClientSecret`" pulumi-lang-go="`clientSecret`" pulumi-lang-python="`client_secret`" pulumi-lang-yaml="`clientSecret`" pulumi-lang-java="`clientSecret`">`client_secret`</span>. Must be used together with <span pulumi-lang-nodejs="`clientIdWo`" pulumi-lang-dotnet="`ClientIdWo`" pulumi-lang-go="`clientIdWo`" pulumi-lang-python="`client_id_wo`" pulumi-lang-yaml="`clientIdWo`" pulumi-lang-java="`clientIdWo`">`client_id_wo`</span> and <span pulumi-lang-nodejs="`clientCredentialsWoVersion`" pulumi-lang-dotnet="`ClientCredentialsWoVersion`" pulumi-lang-go="`clientCredentialsWoVersion`" pulumi-lang-python="`client_credentials_wo_version`" pulumi-lang-yaml="`clientCredentialsWoVersion`" pulumi-lang-java="`clientCredentialsWoVersion`">`client_credentials_wo_version`</span>.
  final String? clientSecretWo;

  /// OAuth discovery configuration. See <span pulumi-lang-nodejs="`oauthDiscovery`" pulumi-lang-dotnet="`OauthDiscovery`" pulumi-lang-go="`oauthDiscovery`" pulumi-lang-python="`oauth_discovery`" pulumi-lang-yaml="`oauthDiscovery`" pulumi-lang-java="`oauthDiscovery`">`oauth_discovery`</span> below.
  final AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOauthDiscovery?
      oauthDiscovery;

  AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfig({
    this.clientCredentialsWoVersion,
    this.clientId,
    this.clientIdWo,
    this.clientSecret,
    this.clientSecretWo,
    this.oauthDiscovery,
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
    final oauthDiscoveryValue = oauthDiscovery;
    if (oauthDiscoveryValue != null) {
      map['oauthDiscovery'] = oauthDiscoveryValue.toMap();
    }
    return map;
  }

  factory AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfig.fromMap(
      Map<String, dynamic> map) {
    return AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfig(
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
      oauthDiscovery: map['oauthDiscovery'] == null
          ? null
          : AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOauthDiscovery
              .fromMap((map['oauthDiscovery'] as Map).cast<String, dynamic>()),
    );
  }
}
