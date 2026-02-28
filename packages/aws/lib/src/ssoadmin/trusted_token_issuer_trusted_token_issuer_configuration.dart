// ignore_for_file: unused_element, unnecessary_cast

import 'trusted_token_issuer_trusted_token_issuer_configuration_oidc_jwt_configuration.dart';

class TrustedTokenIssuerTrustedTokenIssuerConfiguration {
  /// A block that describes the settings for a trusted token issuer that works with OpenID Connect (OIDC) by using JSON Web Tokens (JWT). See Documented below below.
  final TrustedTokenIssuerTrustedTokenIssuerConfigurationOidcJwtConfiguration
      oidcJwtConfiguration;

  /// Creates a new [TrustedTokenIssuerTrustedTokenIssuerConfiguration].
  /// [oidcJwtConfiguration] A block that describes the settings for a trusted token issuer that works with OpenID Connect (OIDC) by using JSON Web Tokens (JWT). See Documented below below.
  TrustedTokenIssuerTrustedTokenIssuerConfiguration({
    required this.oidcJwtConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['oidcJwtConfiguration'] = oidcJwtConfiguration.toMap();
    return map;
  }

  factory TrustedTokenIssuerTrustedTokenIssuerConfiguration.fromMap(
      Map<String, dynamic> map) {
    return TrustedTokenIssuerTrustedTokenIssuerConfiguration(
      oidcJwtConfiguration:
          TrustedTokenIssuerTrustedTokenIssuerConfigurationOidcJwtConfiguration
              .fromMap(
                  (map['oidcJwtConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}
