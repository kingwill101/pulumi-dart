// ignore_for_file: unused_element, unnecessary_cast

import 'identity_service_azure_adconfig_response3.dart';
import 'identity_service_google_config_response3.dart';
import 'identity_service_oidc_config_response3.dart';

/// Configuration of an auth method for a member/cluster. Only one authentication method (e.g., OIDC and LDAP) can be set per AuthMethod.
class IdentityServiceAuthMethodResponse3 {
  /// AzureAD specific Configuration.
  final IdentityServiceAzureADConfigResponse3 azureadConfig;

  /// GoogleConfig specific configuration.
  final IdentityServiceGoogleConfigResponse3 googleConfig;

  /// Identifier for auth config.
  final String name;

  /// OIDC specific configuration.
  final IdentityServiceOidcConfigResponse3 oidcConfig;

  /// Proxy server address to use for auth method.
  final String proxy;

  IdentityServiceAuthMethodResponse3({
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

  factory IdentityServiceAuthMethodResponse3.fromMap(Map<String, dynamic> map) {
    return IdentityServiceAuthMethodResponse3(
      azureadConfig: IdentityServiceAzureADConfigResponse3.fromMap(
          (map['azureadConfig'] as Map).cast<String, dynamic>()),
      googleConfig: IdentityServiceGoogleConfigResponse3.fromMap(
          (map['googleConfig'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      oidcConfig: IdentityServiceOidcConfigResponse3.fromMap(
          (map['oidcConfig'] as Map).cast<String, dynamic>()),
      proxy: map['proxy'] as String,
    );
  }
}
