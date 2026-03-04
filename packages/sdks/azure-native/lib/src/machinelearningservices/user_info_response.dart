// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// User who created.
class UserInfoResponse {
  /// A user alternate sec id. This represents the user in a different identity provider system Eg.1:live.com:puid
  final pulumi.Input<String>? userAltSecId;

  /// A user identity provider. Eg live.com
  final pulumi.Input<String>? userIdp;

  /// The issuer which issued the token for this user.
  final pulumi.Input<String>? userIss;

  /// A user's full name or a service principal's app ID.
  final pulumi.Input<String>? userName;

  /// A user or service principal's object ID..
  final pulumi.Input<String>? userObjectId;

  /// A user or service principal's PuID.
  final pulumi.Input<String>? userPuId;

  /// A user or service principal's tenant ID.
  final pulumi.Input<String>? userTenantId;

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
      userAltSecId: (() {
        final guardedValue = map['userAltSecId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userIdp: (() {
        final guardedValue = map['userIdp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userIss: (() {
        final guardedValue = map['userIss'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userName: (() {
        final guardedValue = map['userName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userObjectId: (() {
        final guardedValue = map['userObjectId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userPuId: (() {
        final guardedValue = map['userPuId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userTenantId: (() {
        final guardedValue = map['userTenantId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
