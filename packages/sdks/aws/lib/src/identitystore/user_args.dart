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
  /// &gt; Unless specified otherwise, all fields can contain up to 1024 characters of free-form text.
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
    this.addresses,
    required this.displayName,
    this.emails,
    required this.identityStoreId,
    this.locale,
    this.name,
    this.nickname,
    this.phoneNumbers,
    this.preferredLanguage,
    this.profileUrl,
    this.region,
    this.timezone,
    this.title,
    required this.userName,
    this.userType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addresses': ?pulumi.Input.mapOptionalInputValue<UserAddresses, Map<String, dynamic>>(addresses, (value) => value.toMap()),
      'displayName': displayName,
      'emails': ?pulumi.Input.mapOptionalInputValue<UserEmails, Map<String, dynamic>>(emails, (value) => value.toMap()),
      'identityStoreId': identityStoreId,
      'locale': ?locale,
      'name': ?pulumi.Input.mapOptionalInputValue<UserName, Map<String, dynamic>>(name, (value) => value.toMap()),
      'nickname': ?nickname,
      'phoneNumbers': ?pulumi.Input.mapOptionalInputValue<UserPhoneNumbers, Map<String, dynamic>>(phoneNumbers, (value) => value.toMap()),
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
      addresses: (() { final guardedValue = map['addresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserAddresses.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      emails: (() { final guardedValue = map['emails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserEmails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identityStoreId: pulumi.Input.fromValue(map['identityStoreId'] as String),
      locale: (() { final guardedValue = map['locale']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserName.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nickname: (() { final guardedValue = map['nickname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      phoneNumbers: (() { final guardedValue = map['phoneNumbers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserPhoneNumbers.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      preferredLanguage: (() { final guardedValue = map['preferredLanguage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      profileUrl: (() { final guardedValue = map['profileUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timezone: (() { final guardedValue = map['timezone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userName: pulumi.Input.fromValue(map['userName'] as String),
      userType: (() { final guardedValue = map['userType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

