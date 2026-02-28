// ignore_for_file: unused_element, unnecessary_cast

import 'identity_service_azure_adconfig_gkehub_v1beta.dart';
import 'identity_service_google_config_gkehub_v1beta.dart';
import 'identity_service_oidc_config_gkehub_v1beta.dart';

/// Configuration of an auth method for a member/cluster. Only one authentication method (e.g., OIDC and LDAP) can be set per AuthMethod.
class IdentityServiceAuthMethodGkehubV1beta {
  /// AzureAD specific Configuration.
  final IdentityServiceAzureADConfigGkehubV1beta? azureadConfig;

  /// GoogleConfig specific configuration.
  final IdentityServiceGoogleConfigGkehubV1beta? googleConfig;

  /// Identifier for auth config.
  final String? name;

  /// OIDC specific configuration.
  final IdentityServiceOidcConfigGkehubV1beta? oidcConfig;

  /// Proxy server address to use for auth method.
  final String? proxy;

  /// Creates a new [IdentityServiceAuthMethodGkehubV1beta].
  /// [azureadConfig] AzureAD specific Configuration.
  /// [googleConfig] GoogleConfig specific configuration.
  /// [name] Identifier for auth config.
  /// [oidcConfig] OIDC specific configuration.
  /// [proxy] Proxy server address to use for auth method.
  IdentityServiceAuthMethodGkehubV1beta({
    this.azureadConfig,
    this.googleConfig,
    this.name,
    this.oidcConfig,
    this.proxy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final azureadConfigValue = azureadConfig;
    if (azureadConfigValue != null) {
      map['azureadConfig'] = azureadConfigValue.toMap();
    }
    final googleConfigValue = googleConfig;
    if (googleConfigValue != null) {
      map['googleConfig'] = googleConfigValue.toMap();
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final oidcConfigValue = oidcConfig;
    if (oidcConfigValue != null) {
      map['oidcConfig'] = oidcConfigValue.toMap();
    }
    final proxyValue = proxy;
    if (proxyValue != null) {
      map['proxy'] = proxyValue;
    }
    return map;
  }

  factory IdentityServiceAuthMethodGkehubV1beta.fromMap(
      Map<String, dynamic> map) {
    return IdentityServiceAuthMethodGkehubV1beta(
      azureadConfig: map['azureadConfig'] == null
          ? null
          : IdentityServiceAzureADConfigGkehubV1beta.fromMap(
              (map['azureadConfig'] as Map).cast<String, dynamic>()),
      googleConfig: map['googleConfig'] == null
          ? null
          : IdentityServiceGoogleConfigGkehubV1beta.fromMap(
              (map['googleConfig'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      oidcConfig: map['oidcConfig'] == null
          ? null
          : IdentityServiceOidcConfigGkehubV1beta.fromMap(
              (map['oidcConfig'] as Map).cast<String, dynamic>()),
      proxy: map['proxy'] == null ? null : map['proxy'] as String,
    );
  }
}
