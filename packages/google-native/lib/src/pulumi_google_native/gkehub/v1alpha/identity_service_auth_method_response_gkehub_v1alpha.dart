// ignore_for_file: unused_element, unnecessary_cast

import 'identity_service_azure_adconfig_response_gkehub_v1alpha.dart';
import 'identity_service_google_config_response_gkehub_v1alpha.dart';
import 'identity_service_oidc_config_response_gkehub_v1alpha.dart';

/// Configuration of an auth method for a member/cluster. Only one authentication method (e.g., OIDC and LDAP) can be set per AuthMethod.
class IdentityServiceAuthMethodResponseGkehubV1alpha {
  /// AzureAD specific Configuration.
  final IdentityServiceAzureADConfigResponseGkehubV1alpha azureadConfig;

  /// GoogleConfig specific configuration.
  final IdentityServiceGoogleConfigResponseGkehubV1alpha googleConfig;

  /// Identifier for auth config.
  final String name;

  /// OIDC specific configuration.
  final IdentityServiceOidcConfigResponseGkehubV1alpha oidcConfig;

  /// Proxy server address to use for auth method.
  final String proxy;

  IdentityServiceAuthMethodResponseGkehubV1alpha({
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

  factory IdentityServiceAuthMethodResponseGkehubV1alpha.fromMap(
      Map<String, dynamic> map) {
    return IdentityServiceAuthMethodResponseGkehubV1alpha(
      azureadConfig: IdentityServiceAzureADConfigResponseGkehubV1alpha.fromMap(
          (map['azureadConfig'] as Map).cast<String, dynamic>()),
      googleConfig: IdentityServiceGoogleConfigResponseGkehubV1alpha.fromMap(
          (map['googleConfig'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      oidcConfig: IdentityServiceOidcConfigResponseGkehubV1alpha.fromMap(
          (map['oidcConfig'] as Map).cast<String, dynamic>()),
      proxy: map['proxy'] as String,
    );
  }
}
