// ignore_for_file: unused_element, unnecessary_cast


/// The identity of the EnterprisePolicy.
class EnterprisePolicyIdentityResponse {
  /// The principal id of EnterprisePolicy identity.
  final String systemAssignedIdentityPrincipalId;
  /// The tenant id associated with the EnterprisePolicy.
  final String tenantId;
  /// The type of identity used for the EnterprisePolicy. Currently, the only supported type is 'SystemAssigned', which implicitly creates an identity.
  final String? type;

  /// Creates a new [EnterprisePolicyIdentityResponse].
  /// [systemAssignedIdentityPrincipalId] The principal id of EnterprisePolicy identity.
  /// [tenantId] The tenant id associated with the EnterprisePolicy.
  /// [type] The type of identity used for the EnterprisePolicy. Currently, the only supported type is 'SystemAssigned', which implicitly creates an identity.
  EnterprisePolicyIdentityResponse({
    required this.systemAssignedIdentityPrincipalId,
    required this.tenantId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'systemAssignedIdentityPrincipalId': systemAssignedIdentityPrincipalId,
      'tenantId': tenantId,
      'type': ?type,
    };
  }

  factory EnterprisePolicyIdentityResponse.fromMap(Map<String, dynamic> map) {
    return EnterprisePolicyIdentityResponse(
      systemAssignedIdentityPrincipalId: map['systemAssignedIdentityPrincipalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

