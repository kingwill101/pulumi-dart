// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getQuicksightUser.
class GetQuicksightUserResult {
  /// The active status of user. When you create an Amazon QuickSight user that’s not an IAM user or an Active Directory user, that user is inactive until they sign in and provide a password.
  final bool active;
  /// The Amazon Resource Name (ARN) for the user.
  final String arn;
  final String awsAccountId;
  /// The custom permissions profile associated with this user.
  final String customPermissionsName;
  /// The user's email address.
  final String email;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The type of identity authentication used by the user.
  final String identityType;
  final String? namespace;
  /// The principal ID of the user.
  final String principalId;
  final String region;
  final String userName;
  /// The Amazon QuickSight role for the user. The user role can be one of the following:.
  /// - `READER`: A user who has read-only access to dashboards.
  /// - `AUTHOR`: A user who can create data sources, datasets, analyzes, and dashboards.
  /// - `ADMIN`: A user who is an author, who can also manage Amazon QuickSight settings.
  final String userRole;

  /// Creates a new [GetQuicksightUserResult].
  /// [active] The active status of user. When you create an Amazon QuickSight user that’s not an IAM user or an Active Directory user, that user is inactive until they sign in and provide a password.
  /// [arn] The Amazon Resource Name (ARN) for the user.
  /// [awsAccountId] Required.
  /// [customPermissionsName] The custom permissions profile associated with this user.
  /// [email] The user's email address.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identityType] The type of identity authentication used by the user.
  /// [namespace] Optional.
  /// [principalId] The principal ID of the user.
  /// [region] Required.
  /// [userName] Required.
  /// [userRole] The Amazon QuickSight role for the user. The user role can be one of the following:.
  const GetQuicksightUserResult({
    required this.active,
    required this.arn,
    required this.awsAccountId,
    required this.customPermissionsName,
    required this.email,
    required this.id,
    required this.identityType,
    this.namespace,
    required this.principalId,
    required this.region,
    required this.userName,
    required this.userRole,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': active,
      'arn': arn,
      'awsAccountId': awsAccountId,
      'customPermissionsName': customPermissionsName,
      'email': email,
      'id': id,
      'identityType': identityType,
      'namespace': ?namespace,
      'principalId': principalId,
      'region': region,
      'userName': userName,
      'userRole': userRole,
    };
  }

  factory GetQuicksightUserResult.fromMap(Map<String, dynamic> map) {
    return GetQuicksightUserResult(
      active: map['active'] as bool,
      arn: map['arn'] as String,
      awsAccountId: map['awsAccountId'] as String,
      customPermissionsName: map['customPermissionsName'] as String,
      email: map['email'] as String,
      id: map['id'] as String,
      identityType: map['identityType'] as String,
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return guardedValue as String; })(),
      principalId: map['principalId'] as String,
      region: map['region'] as String,
      userName: map['userName'] as String,
      userRole: map['userRole'] as String,
    );
  }
}

