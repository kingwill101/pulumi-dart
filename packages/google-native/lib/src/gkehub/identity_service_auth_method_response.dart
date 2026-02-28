// ignore_for_file: unused_element, unnecessary_cast

import 'identity_service_azure_adconfig_response.dart';
import 'identity_service_google_config_response.dart';
import 'identity_service_oidc_config_response.dart';

/// Configuration of an auth method for a member/cluster. Only one authentication method (e.g., OIDC and LDAP) can be set per AuthMethod.
class IdentityServiceAuthMethodResponse {
  /// AzureAD specific Configuration.
  final IdentityServiceAzureADConfigResponse azureadConfig;

  /// GoogleConfig specific configuration.
  final IdentityServiceGoogleConfigResponse googleConfig;

  /// Identifier for auth config.
  final String name;

  /// OIDC specific configuration.
  final IdentityServiceOidcConfigResponse oidcConfig;

  /// Proxy server address to use for auth method.
  final String proxy;

  /// Creates a new [IdentityServiceAuthMethodResponse].
  /// [azureadConfig] AzureAD specific Configuration.
  /// [googleConfig] GoogleConfig specific configuration.
  /// [name] Identifier for auth config.
  /// [oidcConfig] OIDC specific configuration.
  /// [proxy] Proxy server address to use for auth method.
  IdentityServiceAuthMethodResponse({
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

  factory IdentityServiceAuthMethodResponse.fromMap(Map<String, dynamic> map) {
    return IdentityServiceAuthMethodResponse(
      azureadConfig: IdentityServiceAzureADConfigResponse.fromMap(
          (map['azureadConfig'] as Map).cast<String, dynamic>()),
      googleConfig: IdentityServiceGoogleConfigResponse.fromMap(
          (map['googleConfig'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      oidcConfig: IdentityServiceOidcConfigResponse.fromMap(
          (map['oidcConfig'] as Map).cast<String, dynamic>()),
      proxy: map['proxy'] as String,
    );
  }
}
