// ignore_for_file: unused_element, unnecessary_cast

import '../plugin_instance_auth_config_api_key_config/plugin_instance_auth_config_api_key_config.dart';
import '../plugin_instance_auth_config_google_service_account_config/plugin_instance_auth_config_google_service_account_config.dart';
import '../plugin_instance_auth_config_oauth2_client_credentials_config/plugin_instance_auth_config_oauth2_client_credentials_config.dart';
import '../plugin_instance_auth_config_user_password_config/plugin_instance_auth_config_user_password_config.dart';

class PluginInstanceAuthConfig {
  /// Config for authentication with API key.
  /// Structure is documented below.
  final PluginInstanceAuthConfigApiKeyConfig? apiKeyConfig;

  /// Possible values:
  /// AUTH_TYPE_UNSPECIFIED
  /// NO_AUTH
  /// GOOGLE_SERVICE_ACCOUNT
  /// USER_PASSWORD
  /// API_KEY
  /// OAUTH2_CLIENT_CREDENTIALS
  final String authType;

  /// Config for Google service account authentication.
  /// Structure is documented below.
  final PluginInstanceAuthConfigGoogleServiceAccountConfig?
      googleServiceAccountConfig;

  /// Parameters to support Oauth 2.0 client credentials grant authentication.
  /// See https://tools.ietf.org/html/rfc6749#section-1.3.4 for more details.
  /// Structure is documented below.
  final PluginInstanceAuthConfigOauth2ClientCredentialsConfig?
      oauth2ClientCredentialsConfig;

  /// Parameters to support Username and Password Authentication.
  /// Structure is documented below.
  final PluginInstanceAuthConfigUserPasswordConfig? userPasswordConfig;

  PluginInstanceAuthConfig({
    this.apiKeyConfig,
    required this.authType,
    this.googleServiceAccountConfig,
    this.oauth2ClientCredentialsConfig,
    this.userPasswordConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final apiKeyConfigValue = apiKeyConfig;
    if (apiKeyConfigValue != null) {
      map['apiKeyConfig'] = apiKeyConfigValue.toMap();
    }
    map['authType'] = authType;
    final googleServiceAccountConfigValue = googleServiceAccountConfig;
    if (googleServiceAccountConfigValue != null) {
      map['googleServiceAccountConfig'] =
          googleServiceAccountConfigValue.toMap();
    }
    final oauth2ClientCredentialsConfigValue = oauth2ClientCredentialsConfig;
    if (oauth2ClientCredentialsConfigValue != null) {
      map['oauth2ClientCredentialsConfig'] =
          oauth2ClientCredentialsConfigValue.toMap();
    }
    final userPasswordConfigValue = userPasswordConfig;
    if (userPasswordConfigValue != null) {
      map['userPasswordConfig'] = userPasswordConfigValue.toMap();
    }
    return map;
  }

  factory PluginInstanceAuthConfig.fromMap(Map<String, dynamic> map) {
    return PluginInstanceAuthConfig(
      apiKeyConfig: map['apiKeyConfig'] == null
          ? null
          : PluginInstanceAuthConfigApiKeyConfig.fromMap(
              (map['apiKeyConfig'] as Map).cast<String, dynamic>()),
      authType: map['authType'] as String,
      googleServiceAccountConfig: map['googleServiceAccountConfig'] == null
          ? null
          : PluginInstanceAuthConfigGoogleServiceAccountConfig.fromMap(
              (map['googleServiceAccountConfig'] as Map)
                  .cast<String, dynamic>()),
      oauth2ClientCredentialsConfig:
          map['oauth2ClientCredentialsConfig'] == null
              ? null
              : PluginInstanceAuthConfigOauth2ClientCredentialsConfig.fromMap(
                  (map['oauth2ClientCredentialsConfig'] as Map)
                      .cast<String, dynamic>()),
      userPasswordConfig: map['userPasswordConfig'] == null
          ? null
          : PluginInstanceAuthConfigUserPasswordConfig.fromMap(
              (map['userPasswordConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
