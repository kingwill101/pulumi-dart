// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering User resources.
class UserState {
  /// City where the user is located.
  final pulumi.Input<String?>? city;
  /// Company associated with the user.
  final pulumi.Input<String?>? company;
  /// Country where the user is located.
  final pulumi.Input<String?>? country;
  /// Department associated with the user.
  final pulumi.Input<String?>? department;
  /// Timestamp when the user was disabled from WorkMail use.
  final pulumi.Input<String?>? disabledDate;
  /// Display name of the user.
  final pulumi.Input<String?>? displayName;
  /// Primary email address used to register the user with WorkMail. Changing this value forces replacement.
  final pulumi.Input<String?>? email;
  /// Timestamp when the user was enabled for WorkMail use.
  final pulumi.Input<String?>? enabledDate;
  /// First name of the user.
  final pulumi.Input<String?>? firstName;
  /// Whether to hide the user from the global address list. Defaults to `false`.
  final pulumi.Input<bool?>? hiddenFromGlobalAddressList;
  /// Identity store ID from IAM Identity Center associated with the user.
  final pulumi.Input<String?>? identityProviderIdentityStoreId;
  /// User ID from IAM Identity Center associated with the user.
  final pulumi.Input<String?>? identityProviderUserId;
  /// Initials of the user.
  final pulumi.Input<String?>? initials;
  /// Job title of the user.
  final pulumi.Input<String?>? jobTitle;
  /// Last name of the user.
  final pulumi.Input<String?>? lastName;
  /// Timestamp when the mailbox was removed for the user.
  final pulumi.Input<String?>? mailboxDeprovisionedDate;
  /// Timestamp when the mailbox was created for the user.
  final pulumi.Input<String?>? mailboxProvisionedDate;
  /// Username of the user.
  final pulumi.Input<String?>? name;
  /// Office where the user is located.
  final pulumi.Input<String?>? office;
  /// Identifier of the WorkMail organization where the user is managed.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? organizationId;
  /// Password to set for the user.
  final pulumi.Input<String?>? password;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Current WorkMail state of the user.
  final pulumi.Input<String?>? state;
  /// Street address of the user.
  final pulumi.Input<String?>? street;
  /// Telephone number of the user.
  final pulumi.Input<String?>? telephone;
  /// Identifier of the user.
  final pulumi.Input<String?>? userId;
  /// Role assigned to the user. Valid values are `USER`, `REMOTE_USER`, `RESOURCE`, and `SYSTEM_USER`.
  final pulumi.Input<String?>? userRole;
  /// ZIP or postal code of the user.
  final pulumi.Input<String?>? zipCode;

  /// Creates a new [UserState].
  /// [city] City where the user is located.
  /// [company] Company associated with the user.
  /// [country] Country where the user is located.
  /// [department] Department associated with the user.
  /// [disabledDate] Timestamp when the user was disabled from WorkMail use.
  /// [displayName] Display name of the user.
  /// [email] Primary email address used to register the user with WorkMail. Changing this value forces replacement.
  /// [enabledDate] Timestamp when the user was enabled for WorkMail use.
  /// [firstName] First name of the user.
  /// [hiddenFromGlobalAddressList] Whether to hide the user from the global address list. Defaults to `false`.
  /// [identityProviderIdentityStoreId] Identity store ID from IAM Identity Center associated with the user.
  /// [identityProviderUserId] User ID from IAM Identity Center associated with the user.
  /// [initials] Initials of the user.
  /// [jobTitle] Job title of the user.
  /// [lastName] Last name of the user.
  /// [mailboxDeprovisionedDate] Timestamp when the mailbox was removed for the user.
  /// [mailboxProvisionedDate] Timestamp when the mailbox was created for the user.
  /// [name] Username of the user.
  /// [office] Office where the user is located.
  /// [organizationId] Identifier of the WorkMail organization where the user is managed.
  /// [password] Password to set for the user.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [state] Current WorkMail state of the user.
  /// [street] Street address of the user.
  /// [telephone] Telephone number of the user.
  /// [userId] Identifier of the user.
  /// [userRole] Role assigned to the user. Valid values are `USER`, `REMOTE_USER`, `RESOURCE`, and `SYSTEM_USER`.
  /// [zipCode] ZIP or postal code of the user.
  const UserState({
    this.city,
    this.company,
    this.country,
    this.department,
    this.disabledDate,
    this.displayName,
    this.email,
    this.enabledDate,
    this.firstName,
    this.hiddenFromGlobalAddressList,
    this.identityProviderIdentityStoreId,
    this.identityProviderUserId,
    this.initials,
    this.jobTitle,
    this.lastName,
    this.mailboxDeprovisionedDate,
    this.mailboxProvisionedDate,
    this.name,
    this.office,
    this.organizationId,
    this.password,
    this.region,
    this.state,
    this.street,
    this.telephone,
    this.userId,
    this.userRole,
    this.zipCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'city': ?city,
      'company': ?company,
      'country': ?country,
      'department': ?department,
      'disabledDate': ?disabledDate,
      'displayName': ?displayName,
      'email': ?email,
      'enabledDate': ?enabledDate,
      'firstName': ?firstName,
      'hiddenFromGlobalAddressList': ?hiddenFromGlobalAddressList,
      'identityProviderIdentityStoreId': ?identityProviderIdentityStoreId,
      'identityProviderUserId': ?identityProviderUserId,
      'initials': ?initials,
      'jobTitle': ?jobTitle,
      'lastName': ?lastName,
      'mailboxDeprovisionedDate': ?mailboxDeprovisionedDate,
      'mailboxProvisionedDate': ?mailboxProvisionedDate,
      'name': ?name,
      'office': ?office,
      'organizationId': ?organizationId,
      'password': ?password,
      'region': ?region,
      'state': ?state,
      'street': ?street,
      'telephone': ?telephone,
      'userId': ?userId,
      'userRole': ?userRole,
      'zipCode': ?zipCode,
    };
  }

  factory UserState.fromMap(Map<String, dynamic> map) {
    return UserState(
      city: (() { final guardedValue = map['city']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      company: (() { final guardedValue = map['company']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      country: (() { final guardedValue = map['country']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      department: (() { final guardedValue = map['department']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disabledDate: (() { final guardedValue = map['disabledDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabledDate: (() { final guardedValue = map['enabledDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firstName: (() { final guardedValue = map['firstName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hiddenFromGlobalAddressList: (() { final guardedValue = map['hiddenFromGlobalAddressList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      identityProviderIdentityStoreId: (() { final guardedValue = map['identityProviderIdentityStoreId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identityProviderUserId: (() { final guardedValue = map['identityProviderUserId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      initials: (() { final guardedValue = map['initials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobTitle: (() { final guardedValue = map['jobTitle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastName: (() { final guardedValue = map['lastName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mailboxDeprovisionedDate: (() { final guardedValue = map['mailboxDeprovisionedDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mailboxProvisionedDate: (() { final guardedValue = map['mailboxProvisionedDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      office: (() { final guardedValue = map['office']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizationId: (() { final guardedValue = map['organizationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      street: (() { final guardedValue = map['street']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      telephone: (() { final guardedValue = map['telephone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userId: (() { final guardedValue = map['userId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userRole: (() { final guardedValue = map['userRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zipCode: (() { final guardedValue = map['zipCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
