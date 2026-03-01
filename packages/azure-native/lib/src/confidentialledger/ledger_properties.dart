// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aadbased_security_principal.dart';
import 'cert_based_security_principal.dart';

/// Additional Confidential Ledger properties.
class LedgerProperties {
  /// Array of all AAD based Security Principals.
  final List<AADBasedSecurityPrincipal>? aadBasedSecurityPrincipals;
  /// Array of all cert based Security Principals.
  final List<CertBasedSecurityPrincipal>? certBasedSecurityPrincipals;
  /// SKU associated with the ledger
  final String? ledgerSku;
  /// Type of Confidential Ledger
  final String? ledgerType;
  /// Object representing RunningState for Ledger.
  final String? runningState;

  /// Creates a new [LedgerProperties].
  /// [aadBasedSecurityPrincipals] Array of all AAD based Security Principals.
  /// [certBasedSecurityPrincipals] Array of all cert based Security Principals.
  /// [ledgerSku] SKU associated with the ledger
  /// [ledgerType] Type of Confidential Ledger
  /// [runningState] Object representing RunningState for Ledger.
  LedgerProperties({
    this.aadBasedSecurityPrincipals,
    this.certBasedSecurityPrincipals,
    this.ledgerSku,
    this.ledgerType,
    this.runningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadBasedSecurityPrincipals': ?aadBasedSecurityPrincipals == null ? null : pulumi.Input.encodeList<AADBasedSecurityPrincipal, Map<String, dynamic>>(aadBasedSecurityPrincipals!, (value) => value.toMap()),
      'certBasedSecurityPrincipals': ?certBasedSecurityPrincipals == null ? null : pulumi.Input.encodeList<CertBasedSecurityPrincipal, Map<String, dynamic>>(certBasedSecurityPrincipals!, (value) => value.toMap()),
      'ledgerSku': ?ledgerSku,
      'ledgerType': ?ledgerType,
      'runningState': ?runningState,
    };
  }

  factory LedgerProperties.fromMap(Map<String, dynamic> map) {
    return LedgerProperties(
      aadBasedSecurityPrincipals: map['aadBasedSecurityPrincipals'] == null ? null : pulumi.Input.decodeList<AADBasedSecurityPrincipal>(map['aadBasedSecurityPrincipals'], (value) => AADBasedSecurityPrincipal.fromMap((value as Map).cast<String, dynamic>())),
      certBasedSecurityPrincipals: map['certBasedSecurityPrincipals'] == null ? null : pulumi.Input.decodeList<CertBasedSecurityPrincipal>(map['certBasedSecurityPrincipals'], (value) => CertBasedSecurityPrincipal.fromMap((value as Map).cast<String, dynamic>())),
      ledgerSku: map['ledgerSku'] == null ? null : map['ledgerSku'] as String,
      ledgerType: map['ledgerType'] == null ? null : map['ledgerType'] as String,
      runningState: map['runningState'] == null ? null : map['runningState'] as String,
    );
  }
}

