// ignore_for_file: unused_element, unnecessary_cast


/// User who created.
class UserInfoResponse {
  /// A user alternate sec id. This represents the user in a different identity provider system Eg.1:live.com:puid
  final String? userAltSecId;
  /// A user identity provider. Eg live.com
  final String? userIdp;
  /// The issuer which issued the token for this user.
  final String? userIss;
  /// A user's full name or a service principal's app ID.
  final String? userName;
  /// A user or service principal's object ID..
  final String? userObjectId;
  /// A user or service principal's PuID.
  final String? userPuId;
  /// A user or service principal's tenant ID.
  final String? userTenantId;

  /// Creates a new [UserInfoResponse].
  /// [userAltSecId] A user alternate sec id. This represents the user in a different identity provider system Eg.1:live.com:puid
  /// [userIdp] A user identity provider. Eg live.com
  /// [userIss] The issuer which issued the token for this user.
  /// [userName] A user's full name or a service principal's app ID.
  /// [userObjectId] A user or service principal's object ID..
  /// [userPuId] A user or service principal's PuID.
  /// [userTenantId] A user or service principal's tenant ID.
  UserInfoResponse({
    this.userAltSecId,
    this.userIdp,
    this.userIss,
    this.userName,
    this.userObjectId,
    this.userPuId,
    this.userTenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userAltSecId': ?userAltSecId,
      'userIdp': ?userIdp,
      'userIss': ?userIss,
      'userName': ?userName,
      'userObjectId': ?userObjectId,
      'userPuId': ?userPuId,
      'userTenantId': ?userTenantId,
    };
  }

  factory UserInfoResponse.fromMap(Map<String, dynamic> map) {
    return UserInfoResponse(
      userAltSecId: map['userAltSecId'] == null ? null : map['userAltSecId'] as String,
      userIdp: map['userIdp'] == null ? null : map['userIdp'] as String,
      userIss: map['userIss'] == null ? null : map['userIss'] as String,
      userName: map['userName'] == null ? null : map['userName'] as String,
      userObjectId: map['userObjectId'] == null ? null : map['userObjectId'] as String,
      userPuId: map['userPuId'] == null ? null : map['userPuId'] as String,
      userTenantId: map['userTenantId'] == null ? null : map['userTenantId'] as String,
    );
  }
}

