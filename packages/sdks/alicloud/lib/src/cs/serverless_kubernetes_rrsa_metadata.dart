// ignore_for_file: unused_element, unnecessary_cast


class ServerlessKubernetesRrsaMetadata {
  /// Whether the RRSA feature has been enabled.
  final bool? enabled;
  /// The arn of OIDC provider that was registered in RAM.
  final String? ramOidcProviderArn;
  /// The name of OIDC Provider that was registered in RAM.
  final String? ramOidcProviderName;
  /// The issuer URL of RRSA OIDC Token.
  final String? rrsaOidcIssuerUrl;

  /// Creates a new [ServerlessKubernetesRrsaMetadata].
  /// [enabled] Whether the RRSA feature has been enabled.
  /// [ramOidcProviderArn] The arn of OIDC provider that was registered in RAM.
  /// [ramOidcProviderName] The name of OIDC Provider that was registered in RAM.
  /// [rrsaOidcIssuerUrl] The issuer URL of RRSA OIDC Token.
  ServerlessKubernetesRrsaMetadata({
    this.enabled,
    this.ramOidcProviderArn,
    this.ramOidcProviderName,
    this.rrsaOidcIssuerUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'ramOidcProviderArn': ?ramOidcProviderArn,
      'ramOidcProviderName': ?ramOidcProviderName,
      'rrsaOidcIssuerUrl': ?rrsaOidcIssuerUrl,
    };
  }

  factory ServerlessKubernetesRrsaMetadata.fromMap(Map<String, dynamic> map) {
    return ServerlessKubernetesRrsaMetadata(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      ramOidcProviderArn: map['ramOidcProviderArn'] == null ? null : map['ramOidcProviderArn'] as String,
      ramOidcProviderName: map['ramOidcProviderName'] == null ? null : map['ramOidcProviderName'] as String,
      rrsaOidcIssuerUrl: map['rrsaOidcIssuerUrl'] == null ? null : map['rrsaOidcIssuerUrl'] as String,
    );
  }
}

