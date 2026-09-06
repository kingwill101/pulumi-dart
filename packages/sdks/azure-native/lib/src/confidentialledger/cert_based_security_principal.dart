// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cert based security principal with Ledger RoleName
class CertBasedSecurityPrincipal {
  /// Public key of the user cert (.pem or .cer)
  final pulumi.Input<String?>? cert;
  /// LedgerRole associated with the Security Principal of Ledger
  final pulumi.Input<dynamic>? ledgerRoleName;

  /// Creates a new [CertBasedSecurityPrincipal].
  /// [cert] Public key of the user cert (.pem or .cer)
  /// [ledgerRoleName] LedgerRole associated with the Security Principal of Ledger
  const CertBasedSecurityPrincipal({
    this.cert,
    this.ledgerRoleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cert': ?cert,
      'ledgerRoleName': ?ledgerRoleName,
    };
  }

  factory CertBasedSecurityPrincipal.fromMap(Map<String, dynamic> map) {
    return CertBasedSecurityPrincipal(
      cert: (() { final guardedValue = map['cert']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ledgerRoleName: (() { final guardedValue = map['ledgerRoleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
