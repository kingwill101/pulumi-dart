// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cert based security principal with Ledger RoleName
class CertBasedSecurityPrincipalResponse {
  /// Public key of the user cert (.pem or .cer)
  final pulumi.Input<String>? cert;
  /// LedgerRole associated with the Security Principal of Ledger
  final pulumi.Input<String>? ledgerRoleName;

  /// Creates a new [CertBasedSecurityPrincipalResponse].
  /// [cert] Public key of the user cert (.pem or .cer)
  /// [ledgerRoleName] LedgerRole associated with the Security Principal of Ledger
  CertBasedSecurityPrincipalResponse({
    this.cert,
    this.ledgerRoleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cert': ?cert,
      'ledgerRoleName': ?ledgerRoleName,
    };
  }

  factory CertBasedSecurityPrincipalResponse.fromMap(Map<String, dynamic> map) {
    return CertBasedSecurityPrincipalResponse(
      cert: map['cert'] == null ? null : (map['cert']! as String).input(),
      ledgerRoleName: map['ledgerRoleName'] == null ? null : (map['ledgerRoleName']! as String).input(),
    );
  }
}

