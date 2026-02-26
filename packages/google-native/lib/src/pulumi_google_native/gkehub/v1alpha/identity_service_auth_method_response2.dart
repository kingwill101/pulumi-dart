// ignore_for_file: unused_element, unnecessary_cast

import 'identity_service_azure_adconfig_response2.dart';
import 'identity_service_google_config_response2.dart';
import 'identity_service_oidc_config_response2.dart';

/// Configuration of an auth method for a member/cluster. Only one authentication method (e.g., OIDC and LDAP) can be set per AuthMethod.
class IdentityServiceAuthMethodResponse2 {
  /// AzureAD specific Configuration.
  final IdentityServiceAzureADConfigResponse2 azureadConfig;

  /// GoogleConfig specific configuration.
  final IdentityServiceGoogleConfigResponse2 googleConfig;

  /// Identifier for auth config.
  final String name;

  /// OIDC specific configuration.
  final IdentityServiceOidcConfigResponse2 oidcConfig;

  /// Proxy server address to use for auth method.
  final String proxy;

  IdentityServiceAuthMethodResponse2({
    required this.azureadConfig,
    required this.googleConfig,
    required this.name,
    required this.oidcConfig,
    required this.proxy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['azureadConfig'] = azureadConfig.toMap();
    map['googleConfig'] = googleConfig.toMap();
    map['name'] = name;
    map['oidcConfig'] = oidcConfig.toMap();
    map['proxy'] = proxy;
    return map;
  }

  factory IdentityServiceAuthMethodResponse2.fromMap(Map<String, dynamic> map) {
    return IdentityServiceAuthMethodResponse2(
      azureadConfig: IdentityServiceAzureADConfigResponse2.fromMap(
          (map['azureadConfig'] as Map).cast<String, dynamic>()),
      googleConfig: IdentityServiceGoogleConfigResponse2.fromMap(
          (map['googleConfig'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      oidcConfig: IdentityServiceOidcConfigResponse2.fromMap(
          (map['oidcConfig'] as Map).cast<String, dynamic>()),
      proxy: map['proxy'] as String,
    );
  }
}
