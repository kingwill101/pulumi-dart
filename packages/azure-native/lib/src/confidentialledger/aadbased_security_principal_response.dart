// ignore_for_file: unused_element, unnecessary_cast


/// AAD based security principal with associated Ledger RoleName
class AADBasedSecurityPrincipalResponse {
  /// LedgerRole associated with the Security Principal of Ledger
  final String? ledgerRoleName;
  /// UUID/GUID based Principal Id of the Security Principal
  final String? principalId;
  /// UUID/GUID based Tenant Id of the Security Principal
  final String? tenantId;

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
      ledgerRoleName: map['ledgerRoleName'] == null ? null : map['ledgerRoleName'] as String,
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}

