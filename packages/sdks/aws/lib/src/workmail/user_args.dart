// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workmail_user_user_args_doc}
/// The set of arguments for User.
/// {@endtemplate}
/// {@macro pulumi_workmail_user_user_args_doc}
class UserArgs {
  /// City where the user is located.
  final pulumi.Input<String?>? city;
  /// Company associated with the user.
  final pulumi.Input<String?>? company;
  /// Country where the user is located.
  final pulumi.Input<String?>? country;
  /// Department associated with the user.
  final pulumi.Input<String?>? department;
  /// Display name of the user.
  final pulumi.Input<String> displayName;
  /// Primary email address used to register the user with WorkMail. Changing this value forces replacement.
  final pulumi.Input<String> email;
  /// First name of the user.
  final pulumi.Input<String?>? firstName;
  /// Whether to hide the user from the global address list. Defaults to `false`.
  final pulumi.Input<bool?>? hiddenFromGlobalAddressList;
  /// User ID from IAM Identity Center associated with the user.
  final pulumi.Input<String?>? identityProviderUserId;
  /// Initials of the user.
  final pulumi.Input<String?>? initials;
  /// Job title of the user.
  final pulumi.Input<String?>? jobTitle;
  /// Last name of the user.
  final pulumi.Input<String?>? lastName;
  /// Username of the user.
  final pulumi.Input<String?>? name;
  /// Office where the user is located.
  final pulumi.Input<String?>? office;
  /// Identifier of the WorkMail organization where the user is managed.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> organizationId;
  /// Password to set for the user.
  final pulumi.Input<String?>? password;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Street address of the user.
  final pulumi.Input<String?>? street;
  /// Telephone number of the user.
  final pulumi.Input<String?>? telephone;
  /// Role assigned to the user. Valid values are `USER`, `REMOTE_USER`, `RESOURCE`, and `SYSTEM_USER`.
  final pulumi.Input<String?>? userRole;
  /// ZIP or postal code of the user.
  final pulumi.Input<String?>? zipCode;

  /// Creates a new [UserArgs].
  /// [city] City where the user is located.
  /// [company] Company associated with the user.
  /// [country] Country where the user is located.
  /// [department] Department associated with the user.
  /// [displayName] Display name of the user.
  /// [email] Primary email address used to register the user with WorkMail. Changing this value forces replacement.
  /// [firstName] First name of the user.
  /// [hiddenFromGlobalAddressList] Whether to hide the user from the global address list. Defaults to `false`.
  /// [identityProviderUserId] User ID from IAM Identity Center associated with the user.
  /// [initials] Initials of the user.
  /// [jobTitle] Job title of the user.
  /// [lastName] Last name of the user.
  /// [name] Username of the user.
  /// [office] Office where the user is located.
  /// [organizationId] Identifier of the WorkMail organization where the user is managed.
  /// [password] Password to set for the user.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [street] Street address of the user.
  /// [telephone] Telephone number of the user.
  /// [userRole] Role assigned to the user. Valid values are `USER`, `REMOTE_USER`, `RESOURCE`, and `SYSTEM_USER`.
  /// [zipCode] ZIP or postal code of the user.
  const UserArgs({
    this.city,
    this.company,
    this.country,
    this.department,
    required this.displayName,
    required this.email,
    this.firstName,
    this.hiddenFromGlobalAddressList,
    this.identityProviderUserId,
    this.initials,
    this.jobTitle,
    this.lastName,
    this.name,
    this.office,
    required this.organizationId,
    this.password,
    this.region,
    this.street,
    this.telephone,
    this.userRole,
    this.zipCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'city': ?city,
      'company': ?company,
      'country': ?country,
      'department': ?department,
      'displayName': displayName,
      'email': email,
      'firstName': ?firstName,
      'hiddenFromGlobalAddressList': ?hiddenFromGlobalAddressList,
      'identityProviderUserId': ?identityProviderUserId,
      'initials': ?initials,
      'jobTitle': ?jobTitle,
      'lastName': ?lastName,
      'name': ?name,
      'office': ?office,
      'organizationId': organizationId,
      'password': ?password,
      'region': ?region,
      'street': ?street,
      'telephone': ?telephone,
      'userRole': ?userRole,
      'zipCode': ?zipCode,
    };
  }

  factory UserArgs.fromMap(Map<String, dynamic> map) {
    return UserArgs(
      city: (() { final guardedValue = map['city']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      company: (() { final guardedValue = map['company']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      country: (() { final guardedValue = map['country']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      department: (() { final guardedValue = map['department']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      email: pulumi.Input.fromValue(map['email'] as String),
      firstName: (() { final guardedValue = map['firstName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hiddenFromGlobalAddressList: (() { final guardedValue = map['hiddenFromGlobalAddressList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      identityProviderUserId: (() { final guardedValue = map['identityProviderUserId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      initials: (() { final guardedValue = map['initials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobTitle: (() { final guardedValue = map['jobTitle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastName: (() { final guardedValue = map['lastName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      office: (() { final guardedValue = map['office']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      street: (() { final guardedValue = map['street']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      telephone: (() { final guardedValue = map['telephone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userRole: (() { final guardedValue = map['userRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zipCode: (() { final guardedValue = map['zipCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
