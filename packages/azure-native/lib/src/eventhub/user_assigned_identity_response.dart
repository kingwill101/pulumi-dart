// ignore_for_file: unused_element, unnecessary_cast


/// Recognized Dictionary value.
class UserAssignedIdentityResponse {
  /// Client Id of user assigned identity
  final String clientId;
  /// Principal Id of user assigned identity
  final String principalId;

  /// Creates a new [UserAssignedIdentityResponse].
  /// [clientId] Client Id of user assigned identity
  /// [principalId] Principal Id of user assigned identity
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

