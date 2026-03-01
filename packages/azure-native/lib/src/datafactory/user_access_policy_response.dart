// ignore_for_file: unused_element, unnecessary_cast


/// Get Data Plane read only token request definition.
class UserAccessPolicyResponse {
  /// The resource path to get access relative to factory. Currently only empty string is supported which corresponds to the factory resource.
  final String? accessResourcePath;
  /// Expiration time for the token. Maximum duration for the token is eight hours and by default the token will expire in eight hours.
  final String? expireTime;
  /// The string with permissions for Data Plane access. Currently only 'r' is supported which grants read only access.
  final String? permissions;
  /// The name of the profile. Currently only the default is supported. The default value is DefaultProfile.
  final String? profileName;
  /// Start time for the token. If not specified the current time will be used.
  final String? startTime;

  /// Creates a new [UserAccessPolicyResponse].
  /// [accessResourcePath] The resource path to get access relative to factory. Currently only empty string is supported which corresponds to the factory resource.
  /// [expireTime] Expiration time for the token. Maximum duration for the token is eight hours and by default the token will expire in eight hours.
  /// [permissions] The string with permissions for Data Plane access. Currently only 'r' is supported which grants read only access.
  /// [profileName] The name of the profile. Currently only the default is supported. The default value is DefaultProfile.
  /// [startTime] Start time for the token. If not specified the current time will be used.
  UserAccessPolicyResponse({
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
      accessResourcePath: map['accessResourcePath'] == null ? null : map['accessResourcePath'] as String,
      expireTime: map['expireTime'] == null ? null : map['expireTime'] as String,
      permissions: map['permissions'] == null ? null : map['permissions'] as String,
      profileName: map['profileName'] == null ? null : map['profileName'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}

