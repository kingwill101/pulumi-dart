// ignore_for_file: unused_element, unnecessary_cast


class GetUsersUser {
  /// Whether the account is enabled.
  final bool accountEnabled;
  /// The display name of the user.
  final String displayName;
  /// The employee identifier assigned to the user by the organisation.
  final String employeeId;
  /// The SMTP email address of the user.
  final String mail;
  /// The email alias of the user.
  final String mailNickname;
  /// The object ID of the user.
  final String objectId;
  /// The value used to associate an on-premises Active Directory user account with their Azure AD user object.
  final String onpremisesImmutableId;
  /// The on-premise SAM account name of the user.
  final String onpremisesSamAccountName;
  /// The on-premise user principal name of the user.
  final String onpremisesUserPrincipalName;
  /// The usage location of the user.
  final String usageLocation;
  /// The user principal name (UPN) of the user.
  final String userPrincipalName;

  /// Creates a new [GetUsersUser].
  /// [accountEnabled] Whether the account is enabled.
  /// [displayName] The display name of the user.
  /// [employeeId] The employee identifier assigned to the user by the organisation.
  /// [mail] The SMTP email address of the user.
  /// [mailNickname] The email alias of the user.
  /// [objectId] The object ID of the user.
  /// [onpremisesImmutableId] The value used to associate an on-premises Active Directory user account with their Azure AD user object.
  /// [onpremisesSamAccountName] The on-premise SAM account name of the user.
  /// [onpremisesUserPrincipalName] The on-premise user principal name of the user.
  /// [usageLocation] The usage location of the user.
  /// [userPrincipalName] The user principal name (UPN) of the user.
  GetUsersUser({
    required this.accountEnabled,
    required this.displayName,
    required this.employeeId,
    required this.mail,
    required this.mailNickname,
    required this.objectId,
    required this.onpremisesImmutableId,
    required this.onpremisesSamAccountName,
    required this.onpremisesUserPrincipalName,
    required this.usageLocation,
    required this.userPrincipalName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountEnabled': accountEnabled,
      'displayName': displayName,
      'employeeId': employeeId,
      'mail': mail,
      'mailNickname': mailNickname,
      'objectId': objectId,
      'onpremisesImmutableId': onpremisesImmutableId,
      'onpremisesSamAccountName': onpremisesSamAccountName,
      'onpremisesUserPrincipalName': onpremisesUserPrincipalName,
      'usageLocation': usageLocation,
      'userPrincipalName': userPrincipalName,
    };
  }

  factory GetUsersUser.fromMap(Map<String, dynamic> map) {
    return GetUsersUser(
      accountEnabled: map['accountEnabled'] as bool,
      displayName: map['displayName'] as String,
      employeeId: map['employeeId'] as String,
      mail: map['mail'] as String,
      mailNickname: map['mailNickname'] as String,
      objectId: map['objectId'] as String,
      onpremisesImmutableId: map['onpremisesImmutableId'] as String,
      onpremisesSamAccountName: map['onpremisesSamAccountName'] as String,
      onpremisesUserPrincipalName: map['onpremisesUserPrincipalName'] as String,
      usageLocation: map['usageLocation'] as String,
      userPrincipalName: map['userPrincipalName'] as String,
    );
  }
}

