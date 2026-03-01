// ignore_for_file: unused_element, unnecessary_cast


class UserAssignedIdentity {
  final String? clientId;
  final String? principalId;

  /// Creates a new [UserAssignedIdentity].
  /// [clientId] Optional.
  /// [principalId] Optional.
  UserAssignedIdentity({
    this.clientId,
    this.principalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'principalId': ?principalId,
    };
  }

  factory UserAssignedIdentity.fromMap(Map<String, dynamic> map) {
    return UserAssignedIdentity(
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
    );
  }
}

