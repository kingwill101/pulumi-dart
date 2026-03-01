// ignore_for_file: unused_element, unnecessary_cast


class UserAssignedIdentityResponse {
  final String? clientId;
  final String? principalId;

  /// Creates a new [UserAssignedIdentityResponse].
  /// [clientId] Optional.
  /// [principalId] Optional.
  UserAssignedIdentityResponse({
    this.clientId,
    this.principalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'principalId': ?principalId,
    };
  }

  factory UserAssignedIdentityResponse.fromMap(Map<String, dynamic> map) {
    return UserAssignedIdentityResponse(
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
    );
  }
}

