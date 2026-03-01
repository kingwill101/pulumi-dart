// ignore_for_file: unused_element, unnecessary_cast


class LedgerCertificateBasedSecurityPrincipal {
  /// Specifies the Ledger Role to grant this Certificate Security Principal. Possible values are `Administrator`, `Contributor` and `Reader`.
  final String ledgerRoleName;
  /// The public key, in PEM format, of the certificate used by this identity to authenticate with the Confidential Ledger.
  final String pemPublicKey;

  /// Creates a new [LedgerCertificateBasedSecurityPrincipal].
  /// [ledgerRoleName] Specifies the Ledger Role to grant this Certificate Security Principal. Possible values are `Administrator`, `Contributor` and `Reader`.
  /// [pemPublicKey] The public key, in PEM format, of the certificate used by this identity to authenticate with the Confidential Ledger.
  LedgerCertificateBasedSecurityPrincipal({
    required this.ledgerRoleName,
    required this.pemPublicKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ledgerRoleName': ledgerRoleName,
      'pemPublicKey': pemPublicKey,
    };
  }

  factory LedgerCertificateBasedSecurityPrincipal.fromMap(Map<String, dynamic> map) {
    return LedgerCertificateBasedSecurityPrincipal(
      ledgerRoleName: map['ledgerRoleName'] as String,
      pemPublicKey: map['pemPublicKey'] as String,
    );
  }
}

