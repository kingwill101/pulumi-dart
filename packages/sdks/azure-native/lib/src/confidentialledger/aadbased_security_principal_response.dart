// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AAD based security principal with associated Ledger RoleName
class AADBasedSecurityPrincipalResponse {
  /// LedgerRole associated with the Security Principal of Ledger
  final pulumi.Input<String>? ledgerRoleName;
  /// UUID/GUID based Principal Id of the Security Principal
  final pulumi.Input<String>? principalId;
  /// UUID/GUID based Tenant Id of the Security Principal
  final pulumi.Input<String>? tenantId;

  /// Creates a new [AADBasedSecurityPrincipalResponse].
  /// [ledgerRoleName] LedgerRole associated with the Security Principal of Ledger
  /// [principalId] UUID/GUID based Principal Id of the Security Principal
  /// [tenantId] UUID/GUID based Tenant Id of the Security Principal
  AADBasedSecurityPrincipalResponse({
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

  factory AADBasedSecurityPrincipalResponse.fromMap(Map<String, dynamic> map) {
    return AADBasedSecurityPrincipalResponse(
      ledgerRoleName: map['ledgerRoleName'] == null ? null : (map['ledgerRoleName']! as String).input(),
      principalId: map['principalId'] == null ? null : (map['principalId']! as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
    );
  }
}

