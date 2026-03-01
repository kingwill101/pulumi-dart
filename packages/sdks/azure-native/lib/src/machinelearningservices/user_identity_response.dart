// ignore_for_file: unused_element, unnecessary_cast


/// User identity configuration.
class UserIdentityResponse {
  /// Enum to determine identity framework.
  /// Expected value is 'UserIdentity'.
  final String identityType;

  /// Creates a new [UserIdentityResponse].
  /// [identityType] Enum to determine identity framework.
  UserIdentityResponse({
    required this.identityType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityType': identityType,
    };
  }

  factory UserIdentityResponse.fromMap(Map<String, dynamic> map) {
    return UserIdentityResponse(
      identityType: map['identityType'] as String,
    );
  }
}

