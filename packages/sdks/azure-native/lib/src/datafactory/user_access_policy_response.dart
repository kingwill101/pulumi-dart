// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Get Data Plane read only token request definition.
class UserAccessPolicyResponse {
  /// The resource path to get access relative to factory. Currently only empty string is supported which corresponds to the factory resource.
  final pulumi.Input<String>? accessResourcePath;
  /// Expiration time for the token. Maximum duration for the token is eight hours and by default the token will expire in eight hours.
  final pulumi.Input<String>? expireTime;
  /// The string with permissions for Data Plane access. Currently only 'r' is supported which grants read only access.
  final pulumi.Input<String>? permissions;
  /// The name of the profile. Currently only the default is supported. The default value is DefaultProfile.
  final pulumi.Input<String>? profileName;
  /// Start time for the token. If not specified the current time will be used.
  final pulumi.Input<String>? startTime;

  /// Creates a new [UserAccessPolicyResponse].
  /// [accessResourcePath] The resource path to get access relative to factory. Currently only empty string is supported which corresponds to the factory resource.
  /// [expireTime] Expiration time for the token. Maximum duration for the token is eight hours and by default the token will expire in eight hours.
  /// [permissions] The string with permissions for Data Plane access. Currently only 'r' is supported which grants read only access.
  /// [profileName] The name of the profile. Currently only the default is supported. The default value is DefaultProfile.
  /// [startTime] Start time for the token. If not specified the current time will be used.
  const UserAccessPolicyResponse({
    this.accessResourcePath,
    this.expireTime,
    this.permissions,
    this.profileName,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessResourcePath': ?accessResourcePath,
      'expireTime': ?expireTime,
      'permissions': ?permissions,
      'profileName': ?profileName,
      'startTime': ?startTime,
    };
  }

  factory UserAccessPolicyResponse.fromMap(Map<String, dynamic> map) {
    return UserAccessPolicyResponse(
      accessResourcePath: (() { final guardedValue = map['accessResourcePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expireTime: (() { final guardedValue = map['expireTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      profileName: (() { final guardedValue = map['profileName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

