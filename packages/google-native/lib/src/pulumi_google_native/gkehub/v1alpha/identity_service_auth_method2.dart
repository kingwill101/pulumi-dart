// ignore_for_file: unused_element, unnecessary_cast

import 'identity_service_azure_adconfig2.dart';
import 'identity_service_google_config2.dart';
import 'identity_service_oidc_config2.dart';

/// Configuration of an auth method for a member/cluster. Only one authentication method (e.g., OIDC and LDAP) can be set per AuthMethod.
class IdentityServiceAuthMethod2 {
  /// AzureAD specific Configuration.
  final IdentityServiceAzureADConfig2? azureadConfig;

  /// GoogleConfig specific configuration.
  final IdentityServiceGoogleConfig2? googleConfig;

  /// Identifier for auth config.
  final String? name;

  /// OIDC specific configuration.
  final IdentityServiceOidcConfig2? oidcConfig;

  /// Proxy server address to use for auth method.
  final String? proxy;

  IdentityServiceAuthMethod2({
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

  factory IdentityServiceAuthMethod2.fromMap(Map<String, dynamic> map) {
    return IdentityServiceAuthMethod2(
      azureadConfig: map['azureadConfig'] == null
          ? null
          : IdentityServiceAzureADConfig2.fromMap(
              (map['azureadConfig'] as Map).cast<String, dynamic>()),
      googleConfig: map['googleConfig'] == null
          ? null
          : IdentityServiceGoogleConfig2.fromMap(
              (map['googleConfig'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      oidcConfig: map['oidcConfig'] == null
          ? null
          : IdentityServiceOidcConfig2.fromMap(
              (map['oidcConfig'] as Map).cast<String, dynamic>()),
      proxy: map['proxy'] == null ? null : map['proxy'] as String,
    );
  }
}
