// ignore_for_file: unused_element, unnecessary_cast


class UserAssignedIdentitiesValueResponse {
  /// The client id of user assigned identity.
  final String clientId;
  /// The principal id of user assigned identity.
  final String principalId;

  /// Creates a new [UserAssignedIdentitiesValueResponse].
  /// [clientId] The client id of user assigned identity.
  /// [principalId] The principal id of user assigned identity.
  UserAssignedIdentitiesValueResponse({
    required this.clientId,
    required this.principalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'principalId': principalId,
    };
  }

  factory UserAssignedIdentitiesValueResponse.fromMap(Map<String, dynamic> map) {
    return UserAssignedIdentitiesValueResponse(
      clientId: map['clientId'] as String,
      principalId: map['principalId'] as String,
    );
  }
}

