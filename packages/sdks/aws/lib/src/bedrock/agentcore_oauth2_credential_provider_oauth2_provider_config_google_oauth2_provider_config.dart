// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_oauth2_credential_provider_oauth2_provider_config_google_oauth2_provider_config_oauth_discovery.dart';

class AgentcoreOauth2CredentialProviderOauth2ProviderConfigGoogleOauth2ProviderConfig {
  final pulumi.Input<int>? clientCredentialsWoVersion;
  final pulumi.Input<String>? clientId;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  final pulumi.Input<String>? clientIdWo;
  final pulumi.Input<String>? clientSecret;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  final pulumi.Input<String>? clientSecretWo;

  /// OAuth discovery configuration. See `oauth_discovery` below.
  final pulumi.Input<
    List<
      AgentcoreOauth2CredentialProviderOauth2ProviderConfigGoogleOauth2ProviderConfigOauthDiscovery
    >
  >?
  oauthDiscoveries;

  /// Creates a new [AgentcoreOauth2CredentialProviderOauth2ProviderConfigGoogleOauth2ProviderConfig].
  /// [clientCredentialsWoVersion] Optional.
  /// [clientId] Optional.
  /// [clientIdWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [clientSecret] Optional.
  /// [clientSecretWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [oauthDiscoveries] OAuth discovery configuration. See `oauth_discovery` below.
  AgentcoreOauth2CredentialProviderOauth2ProviderConfigGoogleOauth2ProviderConfig({
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
      'oauthDiscoveries':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              AgentcoreOauth2CredentialProviderOauth2ProviderConfigGoogleOauth2ProviderConfigOauthDiscovery
            >,
            List<Map<String, dynamic>>
          >(
            oauthDiscoveries,
            (value) =>
                pulumi.Input.encodeList<
                  AgentcoreOauth2CredentialProviderOauth2ProviderConfigGoogleOauth2ProviderConfigOauthDiscovery,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory AgentcoreOauth2CredentialProviderOauth2ProviderConfigGoogleOauth2ProviderConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentcoreOauth2CredentialProviderOauth2ProviderConfigGoogleOauth2ProviderConfig(
      clientCredentialsWoVersion: (() {
        final guardedValue = map['clientCredentialsWoVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      clientId: (() {
        final guardedValue = map['clientId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clientIdWo: (() {
        final guardedValue = map['clientIdWo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clientSecret: (() {
        final guardedValue = map['clientSecret'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clientSecretWo: (() {
        final guardedValue = map['clientSecretWo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      oauthDiscoveries: (() {
        final guardedValue = map['oauthDiscoveries'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            AgentcoreOauth2CredentialProviderOauth2ProviderConfigGoogleOauth2ProviderConfigOauthDiscovery
          >(
            guardedValue,
            (value) =>
                AgentcoreOauth2CredentialProviderOauth2ProviderConfigGoogleOauth2ProviderConfigOauthDiscovery.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
    );
  }
}
