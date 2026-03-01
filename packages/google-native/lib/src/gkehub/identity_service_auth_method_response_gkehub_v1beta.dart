// ignore_for_file: unused_element, unnecessary_cast

import 'identity_service_azure_adconfig_response_gkehub_v1beta.dart';
import 'identity_service_google_config_response_gkehub_v1beta.dart';
import 'identity_service_oidc_config_response_gkehub_v1beta.dart';

/// Configuration of an auth method for a member/cluster. Only one authentication method (e.g., OIDC and LDAP) can be set per AuthMethod.
class IdentityServiceAuthMethodResponseGkehubV1beta {
  /// AzureAD specific Configuration.
  final IdentityServiceAzureADConfigResponseGkehubV1beta azureadConfig;

  /// GoogleConfig specific configuration.
  final IdentityServiceGoogleConfigResponseGkehubV1beta googleConfig;

  /// Identifier for auth config.
  final String name;

  /// OIDC specific configuration.
  final IdentityServiceOidcConfigResponseGkehubV1beta oidcConfig;

  /// Proxy server address to use for auth method.
  final String proxy;

  /// Creates a new [IdentityServiceAuthMethodResponseGkehubV1beta].
  /// [azureadConfig] AzureAD specific Configuration.
  /// [googleConfig] GoogleConfig specific configuration.
  /// [name] Identifier for auth config.
  /// [oidcConfig] OIDC specific configuration.
  /// [proxy] Proxy server address to use for auth method.
  IdentityServiceAuthMethodResponseGkehubV1beta({
    required this.azureadConfig,
    required this.googleConfig,
    required this.name,
    required this.oidcConfig,
    required this.proxy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureadConfig': azureadConfig.toMap(),
      'googleConfig': googleConfig.toMap(),
      'name': name,
      'oidcConfig': oidcConfig.toMap(),
      'proxy': proxy,
    };
  }

  factory IdentityServiceAuthMethodResponseGkehubV1beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return IdentityServiceAuthMethodResponseGkehubV1beta(
      azureadConfig: IdentityServiceAzureADConfigResponseGkehubV1beta.fromMap(
        (map['azureadConfig'] as Map).cast<String, dynamic>(),
      ),
      googleConfig: IdentityServiceGoogleConfigResponseGkehubV1beta.fromMap(
        (map['googleConfig'] as Map).cast<String, dynamic>(),
      ),
      name: map['name'] as String,
      oidcConfig: IdentityServiceOidcConfigResponseGkehubV1beta.fromMap(
        (map['oidcConfig'] as Map).cast<String, dynamic>(),
      ),
      proxy: map['proxy'] as String,
    );
  }
}
