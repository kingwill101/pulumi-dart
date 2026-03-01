// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_tool_open_api_tool_api_authentication_api_key_config.dart';
import 'app_version_snapshot_tool_open_api_tool_api_authentication_oauth_config.dart';
import 'app_version_snapshot_tool_open_api_tool_api_authentication_service_account_auth_config.dart';

class AppVersionSnapshotToolOpenApiToolApiAuthentication {
  /// (Output)
  /// Configurations for authentication with API key.
  /// Structure is documented below.
  final List<AppVersionSnapshotToolOpenApiToolApiAuthenticationApiKeyConfig>? apiKeyConfigs;
  /// (Output)
  /// Configurations for authentication with OAuth.
  /// Structure is documented below.
  final List<AppVersionSnapshotToolOpenApiToolApiAuthenticationOauthConfig>? oauthConfigs;
  /// (Output)
  /// Configurations for authentication using a custom service account.
  /// Structure is documented below.
  final List<AppVersionSnapshotToolOpenApiToolApiAuthenticationServiceAccountAuthConfig>? serviceAccountAuthConfigs;
  /// (Output)
  /// Configurations for authentication with [ID
  /// token](https://cloud.google.com/docs/authentication/token-types#id) generated
  /// from service agent.
  final List<Map<String, dynamic>>? serviceAgentIdTokenAuthConfigs;

  /// Creates a new [AppVersionSnapshotToolOpenApiToolApiAuthentication].
  /// [apiKeyConfigs] (Output)
  /// [oauthConfigs] (Output)
  /// [serviceAccountAuthConfigs] (Output)
  /// [serviceAgentIdTokenAuthConfigs] (Output)
  AppVersionSnapshotToolOpenApiToolApiAuthentication({
    this.apiKeyConfigs,
    this.oauthConfigs,
    this.serviceAccountAuthConfigs,
    this.serviceAgentIdTokenAuthConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKeyConfigs': ?apiKeyConfigs == null ? null : pulumi.Input.encodeList<AppVersionSnapshotToolOpenApiToolApiAuthenticationApiKeyConfig, Map<String, dynamic>>(apiKeyConfigs!, (value) => value.toMap()),
      'oauthConfigs': ?oauthConfigs == null ? null : pulumi.Input.encodeList<AppVersionSnapshotToolOpenApiToolApiAuthenticationOauthConfig, Map<String, dynamic>>(oauthConfigs!, (value) => value.toMap()),
      'serviceAccountAuthConfigs': ?serviceAccountAuthConfigs == null ? null : pulumi.Input.encodeList<AppVersionSnapshotToolOpenApiToolApiAuthenticationServiceAccountAuthConfig, Map<String, dynamic>>(serviceAccountAuthConfigs!, (value) => value.toMap()),
      'serviceAgentIdTokenAuthConfigs': ?serviceAgentIdTokenAuthConfigs,
    };
  }

  factory AppVersionSnapshotToolOpenApiToolApiAuthentication.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotToolOpenApiToolApiAuthentication(
      apiKeyConfigs: map['apiKeyConfigs'] == null ? null : pulumi.Input.decodeList<AppVersionSnapshotToolOpenApiToolApiAuthenticationApiKeyConfig>(map['apiKeyConfigs'], (value) => AppVersionSnapshotToolOpenApiToolApiAuthenticationApiKeyConfig.fromMap((value as Map).cast<String, dynamic>())),
      oauthConfigs: map['oauthConfigs'] == null ? null : pulumi.Input.decodeList<AppVersionSnapshotToolOpenApiToolApiAuthenticationOauthConfig>(map['oauthConfigs'], (value) => AppVersionSnapshotToolOpenApiToolApiAuthenticationOauthConfig.fromMap((value as Map).cast<String, dynamic>())),
      serviceAccountAuthConfigs: map['serviceAccountAuthConfigs'] == null ? null : pulumi.Input.decodeList<AppVersionSnapshotToolOpenApiToolApiAuthenticationServiceAccountAuthConfig>(map['serviceAccountAuthConfigs'], (value) => AppVersionSnapshotToolOpenApiToolApiAuthenticationServiceAccountAuthConfig.fromMap((value as Map).cast<String, dynamic>())),
      serviceAgentIdTokenAuthConfigs: map['serviceAgentIdTokenAuthConfigs'] == null ? null : (map['serviceAgentIdTokenAuthConfigs'] as List).cast<Map<String, dynamic>>(),
    );
  }
}

