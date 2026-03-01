// ignore_for_file: unused_element, unnecessary_cast


class GetConfidentialLedgerCertificateBasedSecurityPrincipal {
  /// The Ledger Role to grant this Certificate Security Principal.
  final String ledgerRoleName;
  /// The public key, in PEM format, of the certificate used by this identity to authenticate with the Confidential Ledger.
  final String pemPublicKey;

  /// Creates a new [GetConfidentialLedgerCertificateBasedSecurityPrincipal].
  /// [ledgerRoleName] The Ledger Role to grant this Certificate Security Principal.
  /// [pemPublicKey] The public key, in PEM format, of the certificate used by this identity to authenticate with the Confidential Ledger.
  GetConfidentialLedgerCertificateBasedSecurityPrincipal({
    required this.ledgerRoleName,
    required this.pemPublicKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ledgerRoleName': ledgerRoleName,
      'pemPublicKey': pemPublicKey,
    };
  }

  factory GetConfidentialLedgerCertificateBasedSecurityPrincipal.fromMap(Map<String, dynamic> map) {
    return GetConfidentialLedgerCertificateBasedSecurityPrincipal(
      ledgerRoleName: map['ledgerRoleName'] as String,
      pemPublicKey: map['pemPublicKey'] as String,
    );
  }
}

