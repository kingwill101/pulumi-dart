// ignore_for_file: unused_element, unnecessary_cast


/// Identity properties of the factory resource.
class FactoryIdentityResponse {
  /// The principal id of the identity.
  final String principalId;
  /// The client tenant id of the identity.
  final String tenantId;
  /// The identity type.
  final String type;
  /// List of user assigned identities for the factory.
  final Map<String, dynamic>? userAssignedIdentities;

  /// Creates a new [FactoryIdentityResponse].
  /// [principalId] The principal id of the identity.
  /// [tenantId] The client tenant id of the identity.
  /// [type] The identity type.
  /// [userAssignedIdentities] List of user assigned identities for the factory.
  FactoryIdentityResponse({
    required this.principalId,
    required this.tenantId,
    required this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': principalId,
      'tenantId': tenantId,
      'type': type,
      'userAssignedIdentities': ?userAssignedIdentities,
    };
  }

  factory FactoryIdentityResponse.fromMap(Map<String, dynamic> map) {
    return FactoryIdentityResponse(
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : (map['userAssignedIdentities'] as Map).cast<String, dynamic>(),
    );
  }
}

