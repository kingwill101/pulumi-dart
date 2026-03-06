// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServerlessKubernetesRrsaMetadata {
  /// Whether the RRSA feature has been enabled.
  final pulumi.Input<bool>? enabled;
  /// The arn of OIDC provider that was registered in RAM.
  final pulumi.Input<String>? ramOidcProviderArn;
  /// The name of OIDC Provider that was registered in RAM.
  final pulumi.Input<String>? ramOidcProviderName;
  /// The issuer URL of RRSA OIDC Token.
  final pulumi.Input<String>? rrsaOidcIssuerUrl;

  /// Creates a new [ServerlessKubernetesRrsaMetadata].
  /// [enabled] Whether the RRSA feature has been enabled.
  /// [ramOidcProviderArn] The arn of OIDC provider that was registered in RAM.
  /// [ramOidcProviderName] The name of OIDC Provider that was registered in RAM.
  /// [rrsaOidcIssuerUrl] The issuer URL of RRSA OIDC Token.
  const ServerlessKubernetesRrsaMetadata({
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
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ramOidcProviderArn: (() { final guardedValue = map['ramOidcProviderArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ramOidcProviderName: (() { final guardedValue = map['ramOidcProviderName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rrsaOidcIssuerUrl: (() { final guardedValue = map['rrsaOidcIssuerUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

