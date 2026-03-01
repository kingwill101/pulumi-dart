// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_toolset_open_api_toolset_api_authentication_api_key_config.dart';
import 'app_version_snapshot_toolset_open_api_toolset_api_authentication_bearer_token_config.dart';
import 'app_version_snapshot_toolset_open_api_toolset_api_authentication_oauth_config.dart';
import 'app_version_snapshot_toolset_open_api_toolset_api_authentication_service_account_auth_config.dart';

class AppVersionSnapshotToolsetOpenApiToolsetApiAuthentication {
  /// (Output)
  /// Configurations for authentication with API key.
  /// Structure is documented below.
  final List<
    AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationApiKeyConfig
  >?
  apiKeyConfigs;

  /// (Output)
  /// Configurations for authentication with a bearer token.
  /// Structure is documented below.
  final List<
    AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationBearerTokenConfig
  >?
  bearerTokenConfigs;

  /// (Output)
  /// Configurations for authentication with OAuth.
  /// Structure is documented below.
  final List<
    AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationOauthConfig
  >?
  oauthConfigs;

  /// (Output)
  /// Configurations for authentication using a custom service account.
  /// Structure is documented below.
  final List<
    AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationServiceAccountAuthConfig
  >?
  serviceAccountAuthConfigs;

  /// (Output)
  /// Configurations for authentication with [ID
  /// token](https://cloud.google.com/docs/authentication/token-types#id) generated
  /// from service agent.
  final List<Map<String, dynamic>>? serviceAgentIdTokenAuthConfigs;

  /// Creates a new [AppVersionSnapshotToolsetOpenApiToolsetApiAuthentication].
  /// [apiKeyConfigs] (Output)
  /// [bearerTokenConfigs] (Output)
  /// [oauthConfigs] (Output)
  /// [serviceAccountAuthConfigs] (Output)
  /// [serviceAgentIdTokenAuthConfigs] (Output)
  AppVersionSnapshotToolsetOpenApiToolsetApiAuthentication({
    this.apiKeyConfigs,
    this.bearerTokenConfigs,
    this.oauthConfigs,
    this.serviceAccountAuthConfigs,
    this.serviceAgentIdTokenAuthConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKeyConfigs': ?apiKeyConfigs == null
          ? null
          : pulumi.Input.encodeList<
              AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationApiKeyConfig,
              Map<String, dynamic>
            >(apiKeyConfigs!, (value) => value.toMap()),
      'bearerTokenConfigs': ?bearerTokenConfigs == null
          ? null
          : pulumi.Input.encodeList<
              AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationBearerTokenConfig,
              Map<String, dynamic>
            >(bearerTokenConfigs!, (value) => value.toMap()),
      'oauthConfigs': ?oauthConfigs == null
          ? null
          : pulumi.Input.encodeList<
              AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationOauthConfig,
              Map<String, dynamic>
            >(oauthConfigs!, (value) => value.toMap()),
      'serviceAccountAuthConfigs': ?serviceAccountAuthConfigs == null
          ? null
          : pulumi.Input.encodeList<
              AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationServiceAccountAuthConfig,
              Map<String, dynamic>
            >(serviceAccountAuthConfigs!, (value) => value.toMap()),
      'serviceAgentIdTokenAuthConfigs': ?serviceAgentIdTokenAuthConfigs,
    };
  }

  factory AppVersionSnapshotToolsetOpenApiToolsetApiAuthentication.fromMap(
    Map<String, dynamic> map,
  ) {
    return AppVersionSnapshotToolsetOpenApiToolsetApiAuthentication(
      apiKeyConfigs: map['apiKeyConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
              AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationApiKeyConfig
            >(
              map['apiKeyConfigs'],
              (value) =>
                  AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationApiKeyConfig.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      bearerTokenConfigs: map['bearerTokenConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
              AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationBearerTokenConfig
            >(
              map['bearerTokenConfigs'],
              (value) =>
                  AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationBearerTokenConfig.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      oauthConfigs: map['oauthConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
              AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationOauthConfig
            >(
              map['oauthConfigs'],
              (value) =>
                  AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationOauthConfig.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      serviceAccountAuthConfigs: map['serviceAccountAuthConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
              AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationServiceAccountAuthConfig
            >(
              map['serviceAccountAuthConfigs'],
              (value) =>
                  AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationServiceAccountAuthConfig.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      serviceAgentIdTokenAuthConfigs:
          map['serviceAgentIdTokenAuthConfigs'] == null
          ? null
          : (map['serviceAgentIdTokenAuthConfigs'] as List)
                .cast<Map<String, dynamic>>(),
    );
  }
}
