// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getQuicksightUser.
class GetQuicksightUserResult {
  /// The active status of user. When you create an Amazon QuickSight user that’s not an IAM user or an Active Directory user, that user is inactive until they sign in and provide a password.
  final bool? active;
  /// ARN for the user.
  final String? arn;
  final String? awsAccountId;
  /// The custom permissions profile associated with this user.
  final String? customPermissionsName;
  /// The user's email address.
  final String? email;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The type of identity authentication used by the user.
  final String? identityType;
  final String? namespace;
  /// The principal ID of the user.
  final String? principalId;
  final String? region;
  final String? userName;
  /// The Amazon QuickSight role for the user. The user role can be one of the following:.
  /// - `READER`: A user who has read-only access to dashboards.
  /// - `AUTHOR`: A user who can create data sources, datasets, analyzes, and dashboards.
  /// - `ADMIN`: A user who is an author, who can also manage Amazon QuickSight settings.
  final String? userRole;

  /// Creates a new [GetQuicksightUserResult].
  /// [active] The active status of user. When you create an Amazon QuickSight user that’s not an IAM user or an Active Directory user, that user is inactive until they sign in and provide a password.
  /// [arn] ARN for the user.
  /// [awsAccountId] Optional.
  /// [customPermissionsName] The custom permissions profile associated with this user.
  /// [email] The user's email address.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identityType] The type of identity authentication used by the user.
  /// [namespace] Optional.
  /// [principalId] The principal ID of the user.
  /// [region] Optional.
  /// [userName] Optional.
  /// [userRole] The Amazon QuickSight role for the user. The user role can be one of the following:.
  const GetQuicksightUserResult({
    this.active,
    this.arn,
    this.awsAccountId,
    this.customPermissionsName,
    this.email,
    this.id,
    this.identityType,
    this.namespace,
    this.principalId,
    this.region,
    this.userName,
    this.userRole,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': ?active,
      'arn': ?arn,
      'awsAccountId': ?awsAccountId,
      'customPermissionsName': ?customPermissionsName,
      'email': ?email,
      'id': ?id,
      'identityType': ?identityType,
      'namespace': ?namespace,
      'principalId': ?principalId,
      'region': ?region,
      'userName': ?userName,
      'userRole': ?userRole,
    };
  }

  factory GetQuicksightUserResult.fromMap(Map<String, dynamic> map) {
    return GetQuicksightUserResult(
      active: (() { final guardedValue = map['active']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      awsAccountId: (() { final guardedValue = map['awsAccountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customPermissionsName: (() { final guardedValue = map['customPermissionsName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identityType: (() { final guardedValue = map['identityType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return guardedValue as String; })(),
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userRole: (() { final guardedValue = map['userRole']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
