// ignore_for_file: unused_element, unnecessary_cast


/// A resource identity that is managed by the user of the service.
class UserIdentityResponse {
  /// The client ID of the user-assigned identity.
  final String clientId;
  /// The principal ID of the user-assigned identity.
  final String principalId;

  /// Creates a new [UserIdentityResponse].
  /// [clientId] The client ID of the user-assigned identity.
  /// [principalId] The principal ID of the user-assigned identity.
  UserIdentityResponse({
    required this.clientId,
    required this.principalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'principalId': principalId,
    };
  }

  factory UserIdentityResponse.fromMap(Map<String, dynamic> map) {
    return UserIdentityResponse(
      clientId: map['clientId'] as String,
      principalId: map['principalId'] as String,
    );
  }
}

