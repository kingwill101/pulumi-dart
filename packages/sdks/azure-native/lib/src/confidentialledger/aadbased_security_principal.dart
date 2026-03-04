// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AAD based security principal with associated Ledger RoleName
class AADBasedSecurityPrincipal {
  /// LedgerRole associated with the Security Principal of Ledger
  final pulumi.Input<String>? ledgerRoleName;

  /// UUID/GUID based Principal Id of the Security Principal
  final pulumi.Input<String>? principalId;

  /// UUID/GUID based Tenant Id of the Security Principal
  final pulumi.Input<String>? tenantId;

  /// Creates a new [AADBasedSecurityPrincipal].
  /// [ledgerRoleName] LedgerRole associated with the Security Principal of Ledger
  /// [principalId] UUID/GUID based Principal Id of the Security Principal
  /// [tenantId] UUID/GUID based Tenant Id of the Security Principal
  AADBasedSecurityPrincipal({
    this.ledgerRoleName,
    this.principalId,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ledgerRoleName': ?ledgerRoleName,
      'principalId': ?principalId,
      'tenantId': ?tenantId,
    };
  }

  factory AADBasedSecurityPrincipal.fromMap(Map<String, dynamic> map) {
    return AADBasedSecurityPrincipal(
      ledgerRoleName: (() {
        final guardedValue = map['ledgerRoleName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      principalId: (() {
        final guardedValue = map['principalId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tenantId: (() {
        final guardedValue = map['tenantId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
