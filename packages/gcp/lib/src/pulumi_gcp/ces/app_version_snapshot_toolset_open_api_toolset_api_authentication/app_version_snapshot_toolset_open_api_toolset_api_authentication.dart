// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../app_version_snapshot_toolset_open_api_toolset_api_authentication_api_key_config/app_version_snapshot_toolset_open_api_toolset_api_authentication_api_key_config.dart';
import '../app_version_snapshot_toolset_open_api_toolset_api_authentication_bearer_token_config/app_version_snapshot_toolset_open_api_toolset_api_authentication_bearer_token_config.dart';
import '../app_version_snapshot_toolset_open_api_toolset_api_authentication_oauth_config/app_version_snapshot_toolset_open_api_toolset_api_authentication_oauth_config.dart';
import '../app_version_snapshot_toolset_open_api_toolset_api_authentication_service_account_auth_config/app_version_snapshot_toolset_open_api_toolset_api_authentication_service_account_auth_config.dart';

class AppVersionSnapshotToolsetOpenApiToolsetApiAuthentication {
  /// (Output)
  /// Configurations for authentication with API key.
  /// Structure is documented below.
  final List<
          AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationApiKeyConfig>?
      apiKeyConfigs;

  /// (Output)
  /// Configurations for authentication with a bearer token.
  /// Structure is documented below.
  final List<
          AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationBearerTokenConfig>?
      bearerTokenConfigs;

  /// (Output)
  /// Configurations for authentication with OAuth.
  /// Structure is documented below.
  final List<
          AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationOauthConfig>?
      oauthConfigs;

  /// (Output)
  /// Configurations for authentication using a custom service account.
  /// Structure is documented below.
  final List<
          AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationServiceAccountAuthConfig>?
      serviceAccountAuthConfigs;

  /// (Output)
  /// Configurations for authentication with [ID
  /// token](https://cloud.google.com/docs/authentication/token-types#id) generated
  /// from service agent.
  final List<Map<String, dynamic>>? serviceAgentIdTokenAuthConfigs;

  AppVersionSnapshotToolsetOpenApiToolsetApiAuthentication({
    this.apiKeyConfigs,
    this.bearerTokenConfigs,
    this.oauthConfigs,
    this.serviceAccountAuthConfigs,
    this.serviceAgentIdTokenAuthConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final apiKeyConfigsValue = apiKeyConfigs;
    if (apiKeyConfigsValue != null) {
      map['apiKeyConfigs'] = Input.encodeList<
          AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationApiKeyConfig,
          Map<String, dynamic>>(apiKeyConfigsValue, (value) => value.toMap());
    }
    final bearerTokenConfigsValue = bearerTokenConfigs;
    if (bearerTokenConfigsValue != null) {
      map['bearerTokenConfigs'] = Input.encodeList<
          AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationBearerTokenConfig,
          Map<String,
              dynamic>>(bearerTokenConfigsValue, (value) => value.toMap());
    }
    final oauthConfigsValue = oauthConfigs;
    if (oauthConfigsValue != null) {
      map['oauthConfigs'] = Input.encodeList<
          AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationOauthConfig,
          Map<String, dynamic>>(oauthConfigsValue, (value) => value.toMap());
    }
    final serviceAccountAuthConfigsValue = serviceAccountAuthConfigs;
    if (serviceAccountAuthConfigsValue != null) {
      map['serviceAccountAuthConfigs'] = Input.encodeList<
          AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationServiceAccountAuthConfig,
          Map<String,
              dynamic>>(serviceAccountAuthConfigsValue, (value) => value.toMap());
    }
    final serviceAgentIdTokenAuthConfigsValue = serviceAgentIdTokenAuthConfigs;
    if (serviceAgentIdTokenAuthConfigsValue != null) {
      map['serviceAgentIdTokenAuthConfigs'] =
          serviceAgentIdTokenAuthConfigsValue;
    }
    return map;
  }

  factory AppVersionSnapshotToolsetOpenApiToolsetApiAuthentication.fromMap(
      Map<String, dynamic> map) {
    return AppVersionSnapshotToolsetOpenApiToolsetApiAuthentication(
      apiKeyConfigs: map['apiKeyConfigs'] == null
          ? null
          : Input.decodeList<
                  AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationApiKeyConfig>(
              map['apiKeyConfigs'],
              (value) =>
                  AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationApiKeyConfig
                      .fromMap((value as Map).cast<String, dynamic>())),
      bearerTokenConfigs: map['bearerTokenConfigs'] == null
          ? null
          : Input.decodeList<
                  AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationBearerTokenConfig>(
              map['bearerTokenConfigs'],
              (value) =>
                  AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationBearerTokenConfig
                      .fromMap((value as Map).cast<String, dynamic>())),
      oauthConfigs: map['oauthConfigs'] == null
          ? null
          : Input.decodeList<
                  AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationOauthConfig>(
              map['oauthConfigs'],
              (value) =>
                  AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationOauthConfig
                      .fromMap((value as Map).cast<String, dynamic>())),
      serviceAccountAuthConfigs: map['serviceAccountAuthConfigs'] == null
          ? null
          : Input.decodeList<
                  AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationServiceAccountAuthConfig>(
              map['serviceAccountAuthConfigs'],
              (value) =>
                  AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationServiceAccountAuthConfig
                      .fromMap((value as Map).cast<String, dynamic>())),
      serviceAgentIdTokenAuthConfigs:
          map['serviceAgentIdTokenAuthConfigs'] == null
              ? null
              : (map['serviceAgentIdTokenAuthConfigs'] as List)
                  .cast<Map<String, dynamic>>(),
    );
  }
}
