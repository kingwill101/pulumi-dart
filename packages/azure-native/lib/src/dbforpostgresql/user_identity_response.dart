// ignore_for_file: unused_element, unnecessary_cast


/// User assigned managed identity associated with a server.
class UserIdentityResponse {
  /// Identifier of the client of the service principal associated to the user assigned managed identity.
  final String? clientId;
  /// Identifier of the object of the service principal associated to the user assigned managed identity.
  final String? principalId;

  /// Creates a new [UserIdentityResponse].
  /// [clientId] Identifier of the client of the service principal associated to the user assigned managed identity.
  /// [principalId] Identifier of the object of the service principal associated to the user assigned managed identity.
  UserIdentityResponse({
    this.clientId,
    this.principalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'principalId': ?principalId,
    };
  }

  factory UserIdentityResponse.fromMap(Map<String, dynamic> map) {
    return UserIdentityResponse(
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
    );
  }
}

