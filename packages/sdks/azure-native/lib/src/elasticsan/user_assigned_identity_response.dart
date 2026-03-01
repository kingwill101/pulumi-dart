// ignore_for_file: unused_element, unnecessary_cast


/// UserAssignedIdentity for the resource.
class UserAssignedIdentityResponse {
  /// The client ID of the identity.
  final String clientId;
  /// The principal ID of the identity.
  final String principalId;

  /// Creates a new [UserAssignedIdentityResponse].
  /// [clientId] The client ID of the identity.
  /// [principalId] The principal ID of the identity.
  UserAssignedIdentityResponse({
    required this.clientId,
    required this.principalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'principalId': principalId,
    };
  }

  factory UserAssignedIdentityResponse.fromMap(Map<String, dynamic> map) {
    return UserAssignedIdentityResponse(
      clientId: map['clientId'] as String,
      principalId: map['principalId'] as String,
    );
  }
}

