// ignore_for_file: unused_element, unnecessary_cast

import 'identity_service_azure_adconfig3.dart';
import 'identity_service_google_config3.dart';
import 'identity_service_oidc_config3.dart';

/// Configuration of an auth method for a member/cluster. Only one authentication method (e.g., OIDC and LDAP) can be set per AuthMethod.
class IdentityServiceAuthMethod3 {
  /// AzureAD specific Configuration.
  final IdentityServiceAzureADConfig3? azureadConfig;

  /// GoogleConfig specific configuration.
  final IdentityServiceGoogleConfig3? googleConfig;

  /// Identifier for auth config.
  final String? name;

  /// OIDC specific configuration.
  final IdentityServiceOidcConfig3? oidcConfig;

  /// Proxy server address to use for auth method.
  final String? proxy;

  IdentityServiceAuthMethod3({
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

  factory IdentityServiceAuthMethod3.fromMap(Map<String, dynamic> map) {
    return IdentityServiceAuthMethod3(
      azureadConfig: map['azureadConfig'] == null
          ? null
          : IdentityServiceAzureADConfig3.fromMap(
              (map['azureadConfig'] as Map).cast<String, dynamic>()),
      googleConfig: map['googleConfig'] == null
          ? null
          : IdentityServiceGoogleConfig3.fromMap(
              (map['googleConfig'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      oidcConfig: map['oidcConfig'] == null
          ? null
          : IdentityServiceOidcConfig3.fromMap(
              (map['oidcConfig'] as Map).cast<String, dynamic>()),
      proxy: map['proxy'] == null ? null : map['proxy'] as String,
    );
  }
}
