// ignore_for_file: unused_element, unnecessary_cast


/// User assigned identity properties
class UserAssignedIdentityResponse {
  /// The client ID of the assigned identity.
  final String clientId;
  /// The principal ID of the assigned identity.
  final String principalId;
  /// The tenant ID of the user assigned identity.
  final String? tenantId;

  /// Creates a new [UserAssignedIdentityResponse].
  /// [clientId] The client ID of the assigned identity.
  /// [principalId] The principal ID of the assigned identity.
  /// [tenantId] The tenant ID of the user assigned identity.
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

