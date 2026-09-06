// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Microsoft EntraID client application secrets
class ClientApplicationSecretsContractResponseEntra {
  /// EntraID client application secret
  final pulumi.Input<String?>? clientSecret;
  /// EntraID client application secret expiration date.
  final pulumi.Input<String> expiresAt;

  /// Creates a new [ClientApplicationSecretsContractResponseEntra].
  /// [clientSecret] EntraID client application secret
  /// [expiresAt] EntraID client application secret expiration date.
  const ClientApplicationSecretsContractResponseEntra({
    this.clientSecret,
    required this.expiresAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientSecret': ?clientSecret,
      'expiresAt': expiresAt,
    };
  }

  factory ClientApplicationSecretsContractResponseEntra.fromMap(Map<String, dynamic> map) {
    return ClientApplicationSecretsContractResponseEntra(
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expiresAt: pulumi.Input.fromValue(map['expiresAt'] as String),
    );
  }
}
