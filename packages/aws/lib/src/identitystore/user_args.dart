// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_addresses.dart';
import 'user_emails.dart';
import 'user_name.dart';
import 'user_phone_numbers.dart';

/// {@template pulumi_identitystore_user_user_args_doc}
/// The set of arguments for User.
/// {@endtemplate}
/// {@macro pulumi_identitystore_user_user_args_doc}
class UserArgs {
  /// Details about the user's address. At most 1 address is allowed. Detailed below.
  final pulumi.Input<UserAddresses>? addresses;

  /// The name that is typically displayed when the user is referenced.
  final pulumi.Input<String> displayName;

  /// Details about the user's email. At most 1 email is allowed. Detailed below.
  final pulumi.Input<UserEmails>? emails;

  /// The globally unique identifier for the identity store that this user is in.
  final pulumi.Input<String> identityStoreId;

  /// The user's geographical region or location.
  final pulumi.Input<String>? locale;

  /// Details about the user's full name. Detailed below.
  final pulumi.Input<UserName>? name;

  /// An alternate name for the user.
  final pulumi.Input<String>? nickname;

  /// Details about the user's phone number. At most 1 phone number is allowed. Detailed below.
  final pulumi.Input<UserPhoneNumbers>? phoneNumbers;

  /// The preferred language of the user.
  final pulumi.Input<String>? preferredLanguage;

  /// An URL that may be associated with the user.
  final pulumi.Input<String>? profileUrl;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The user's time zone.
  final pulumi.Input<String>? timezone;

  /// The user's title.
  final pulumi.Input<String>? title;

  /// A unique string used to identify the user. This value can consist of letters, accented characters, symbols, numbers, and punctuation. This value is specified at the time the user is created and stored as an attribute of the user object in the identity store. The limit is 128 characters.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> userName;

  /// The user type.
  ///
  /// > Unless specified otherwise, all fields can contain up to 1024 characters of free-form text.
  final pulumi.Input<String>? userType;

  /// Creates a new [UserArgs].
  /// [addresses] Details about the user's address. At most 1 address is allowed. Detailed below.
  /// [displayName] The name that is typically displayed when the user is referenced.
  /// [emails] Details about the user's email. At most 1 email is allowed. Detailed below.
  /// [identityStoreId] The globally unique identifier for the identity store that this user is in.
  /// [locale] The user's geographical region or location.
  /// [name] Details about the user's full name. Detailed below.
  /// [nickname] An alternate name for the user.
  /// [phoneNumbers] Details about the user's phone number. At most 1 phone number is allowed. Detailed below.
  /// [preferredLanguage] The preferred language of the user.
  /// [profileUrl] An URL that may be associated with the user.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timezone] The user's time zone.
  /// [title] The user's title.
  /// [userName] A unique string used to identify the user. This value can consist of letters, accented characters, symbols, numbers, and punctuation. This value is specified at the time the user is created and stored as an attribute of the user object in the identity store. The limit is 128 characters.
  /// [userType] The user type.
  UserArgs({
    UserAddresses? addresses,
    required String displayName,
    UserEmails? emails,
    required String identityStoreId,
    String? locale,
    UserName? name,
    String? nickname,
    UserPhoneNumbers? phoneNumbers,
    String? preferredLanguage,
    String? profileUrl,
    String? region,
    String? timezone,
    String? title,
    required String userName,
    String? userType,
  }) : addresses = pulumi.Input.asOptionalInput<UserAddresses>(addresses),
       displayName = pulumi.Input.asInput<String>(displayName),
       emails = pulumi.Input.asOptionalInput<UserEmails>(emails),
       identityStoreId = pulumi.Input.asInput<String>(identityStoreId),
       locale = pulumi.Input.asOptionalInput<String>(locale),
       name = pulumi.Input.asOptionalInput<UserName>(name),
       nickname = pulumi.Input.asOptionalInput<String>(nickname),
       phoneNumbers = pulumi.Input.asOptionalInput<UserPhoneNumbers>(
         phoneNumbers,
       ),
       preferredLanguage = pulumi.Input.asOptionalInput<String>(
         preferredLanguage,
       ),
       profileUrl = pulumi.Input.asOptionalInput<String>(profileUrl),
       region = pulumi.Input.asOptionalInput<String>(region),
       timezone = pulumi.Input.asOptionalInput<String>(timezone),
       title = pulumi.Input.asOptionalInput<String>(title),
       userName = pulumi.Input.asInput<String>(userName),
       userType = pulumi.Input.asOptionalInput<String>(userType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addresses':
          ?pulumi.Input.mapOptionalInputValue<
            UserAddresses,
            Map<String, dynamic>
          >(addresses, (value) => value.toMap()),
      'displayName': displayName,
      'emails':
          ?pulumi.Input.mapOptionalInputValue<UserEmails, Map<String, dynamic>>(
            emails,
            (value) => value.toMap(),
          ),
      'identityStoreId': identityStoreId,
      'locale': ?locale,
      'name':
          ?pulumi.Input.mapOptionalInputValue<UserName, Map<String, dynamic>>(
            name,
            (value) => value.toMap(),
          ),
      'nickname': ?nickname,
      'phoneNumbers':
          ?pulumi.Input.mapOptionalInputValue<
            UserPhoneNumbers,
            Map<String, dynamic>
          >(phoneNumbers, (value) => value.toMap()),
      'preferredLanguage': ?preferredLanguage,
      'profileUrl': ?profileUrl,
      'region': ?region,
      'timezone': ?timezone,
      'title': ?title,
      'userName': userName,
      'userType': ?userType,
    };
  }

  factory UserArgs.fromMap(Map<String, dynamic> map) {
    return UserArgs(
      addresses: map['addresses'] == null
          ? null
          : UserAddresses.fromMap(
              (map['addresses'] as Map).cast<String, dynamic>(),
            ),
      displayName: map['displayName'] as String,
      emails: map['emails'] == null
          ? null
          : UserEmails.fromMap((map['emails'] as Map).cast<String, dynamic>()),
      identityStoreId: map['identityStoreId'] as String,
      locale: map['locale'] == null ? null : map['locale'] as String,
      name: map['name'] == null
          ? null
          : UserName.fromMap((map['name'] as Map).cast<String, dynamic>()),
      nickname: map['nickname'] == null ? null : map['nickname'] as String,
      phoneNumbers: map['phoneNumbers'] == null
          ? null
          : UserPhoneNumbers.fromMap(
              (map['phoneNumbers'] as Map).cast<String, dynamic>(),
            ),
      preferredLanguage: map['preferredLanguage'] == null
          ? null
          : map['preferredLanguage'] as String,
      profileUrl: map['profileUrl'] == null
          ? null
          : map['profileUrl'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      timezone: map['timezone'] == null ? null : map['timezone'] as String,
      title: map['title'] == null ? null : map['title'] as String,
      userName: map['userName'] as String,
      userType: map['userType'] == null ? null : map['userType'] as String,
    );
  }
}
