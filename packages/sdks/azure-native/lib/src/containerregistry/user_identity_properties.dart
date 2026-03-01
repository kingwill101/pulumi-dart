// ignore_for_file: unused_element, unnecessary_cast


class UserIdentityProperties {
  /// The client id of user assigned identity.
  final String? clientId;
  /// The principal id of user assigned identity.
  final String? principalId;

  /// Creates a new [UserIdentityProperties].
  /// [clientId] The client id of user assigned identity.
  /// [principalId] The principal id of user assigned identity.
  UserIdentityProperties({
    this.clientId,
    this.principalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'principalId': ?principalId,
    };
  }

  factory UserIdentityProperties.fromMap(Map<String, dynamic> map) {
    return UserIdentityProperties(
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
    );
  }
}

