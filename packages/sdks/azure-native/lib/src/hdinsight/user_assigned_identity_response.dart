// ignore_for_file: unused_element, unnecessary_cast


/// The User Assigned Identity
class UserAssignedIdentityResponse {
  /// The client id of user assigned identity.
  final String clientId;
  /// The principal id of user assigned identity.
  final String principalId;
  /// The tenant id of user assigned identity.
  final String? tenantId;

  /// Creates a new [UserAssignedIdentityResponse].
  /// [clientId] The client id of user assigned identity.
  /// [principalId] The principal id of user assigned identity.
  /// [tenantId] The tenant id of user assigned identity.
  UserAssignedIdentityResponse({
    required this.clientId,
    required this.principalId,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'principalId': principalId,
      'tenantId': ?tenantId,
    };
  }

  factory UserAssignedIdentityResponse.fromMap(Map<String, dynamic> map) {
    return UserAssignedIdentityResponse(
      clientId: map['clientId'] as String,
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}

