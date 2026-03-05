// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aadbased_security_principal.dart';
import 'cert_based_security_principal.dart';

/// Additional Confidential Ledger properties.
class LedgerProperties {
  /// Array of all AAD based Security Principals.
  final pulumi.Input<List<AADBasedSecurityPrincipal>>? aadBasedSecurityPrincipals;
  /// Array of all cert based Security Principals.
  final pulumi.Input<List<CertBasedSecurityPrincipal>>? certBasedSecurityPrincipals;
  /// SKU associated with the ledger
  final pulumi.Input<String>? ledgerSku;
  /// Type of Confidential Ledger
  final pulumi.Input<String>? ledgerType;
  /// Object representing RunningState for Ledger.
  final pulumi.Input<String>? runningState;

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
      'aadBasedSecurityPrincipals': ?pulumi.Input.mapOptionalInputValue<List<AADBasedSecurityPrincipal>, List<Map<String, dynamic>>>(aadBasedSecurityPrincipals, (value) => pulumi.Input.encodeList<AADBasedSecurityPrincipal, Map<String, dynamic>>(value, (value) => value.toMap())),
      'certBasedSecurityPrincipals': ?pulumi.Input.mapOptionalInputValue<List<CertBasedSecurityPrincipal>, List<Map<String, dynamic>>>(certBasedSecurityPrincipals, (value) => pulumi.Input.encodeList<CertBasedSecurityPrincipal, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ledgerSku': ?ledgerSku,
      'ledgerType': ?ledgerType,
      'runningState': ?runningState,
    };
  }

  factory LedgerProperties.fromMap(Map<String, dynamic> map) {
    return LedgerProperties(
      aadBasedSecurityPrincipals: (() { final guardedValue = map['aadBasedSecurityPrincipals']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AADBasedSecurityPrincipal>(guardedValue, (value) => AADBasedSecurityPrincipal.fromMap((value as Map).cast<String, dynamic>()))); })(),
      certBasedSecurityPrincipals: (() { final guardedValue = map['certBasedSecurityPrincipals']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CertBasedSecurityPrincipal>(guardedValue, (value) => CertBasedSecurityPrincipal.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ledgerSku: (() { final guardedValue = map['ledgerSku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ledgerType: (() { final guardedValue = map['ledgerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runningState: (() { final guardedValue = map['runningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

