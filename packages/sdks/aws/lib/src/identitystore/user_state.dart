// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_addresses.dart';
import 'user_emails.dart';
import 'user_external_id.dart';
import 'user_name.dart';
import 'user_phone_numbers.dart';

/// Input properties used for looking up and filtering User resources.
class UserState {
  /// Details about the user's address. At most 1 address is allowed. Detailed below.
  final pulumi.Input<UserAddresses?>? addresses;
  /// The name that is typically displayed when the user is referenced.
  final pulumi.Input<String?>? displayName;
  /// Details about the user's email. At most 1 email is allowed. Detailed below.
  final pulumi.Input<UserEmails?>? emails;
  /// A list of identifiers issued to this resource by an external identity provider.
  final pulumi.Input<List<UserExternalId>?>? externalIds;
  /// The globally unique identifier for the identity store that this user is in.
  final pulumi.Input<String?>? identityStoreId;
  /// The user's geographical region or location.
  final pulumi.Input<String?>? locale;
  /// Details about the user's full name. Detailed below.
  final pulumi.Input<UserName?>? name;
  /// An alternate name for the user.
  final pulumi.Input<String?>? nickname;
  /// Details about the user's phone number. At most 1 phone number is allowed. Detailed below.
  final pulumi.Input<UserPhoneNumbers?>? phoneNumbers;
  /// The preferred language of the user.
  final pulumi.Input<String?>? preferredLanguage;
  /// An URL that may be associated with the user.
  final pulumi.Input<String?>? profileUrl;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The user's time zone.
  final pulumi.Input<String?>? timezone;
  /// The user's title.
  final pulumi.Input<String?>? title;
  /// The identifier for this user in the identity store.
  final pulumi.Input<String?>? userId;
  /// A unique string used to identify the user. This value can consist of letters, accented characters, symbols, numbers, and punctuation. This value is specified at the time the user is created and stored as an attribute of the user object in the identity store. The limit is 128 characters.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? userName;
  /// The current status of the user account.
  final pulumi.Input<String?>? userStatus;
  /// The user type.
  ///
  /// &gt; Unless specified otherwise, all fields can contain up to 1024 characters of free-form text.
  final pulumi.Input<String?>? userType;

  /// Creates a new [UserState].
  /// [addresses] Details about the user's address. At most 1 address is allowed. Detailed below.
  /// [displayName] The name that is typically displayed when the user is referenced.
  /// [emails] Details about the user's email. At most 1 email is allowed. Detailed below.
  /// [externalIds] A list of identifiers issued to this resource by an external identity provider.
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
  /// [userId] The identifier for this user in the identity store.
  /// [userName] A unique string used to identify the user. This value can consist of letters, accented characters, symbols, numbers, and punctuation. This value is specified at the time the user is created and stored as an attribute of the user object in the identity store. The limit is 128 characters.
  /// [userStatus] The current status of the user account.
  /// [userType] The user type.
  const UserState({
    this.addresses,
    this.displayName,
    this.emails,
    this.externalIds,
    this.identityStoreId,
    this.locale,
    this.name,
    this.nickname,
    this.phoneNumbers,
    this.preferredLanguage,
    this.profileUrl,
    this.region,
    this.timezone,
    this.title,
    this.userId,
    this.userName,
    this.userStatus,
    this.userType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addresses': ?pulumi.Input.mapOptionalInputValue<UserAddresses, Map<String, dynamic>>(addresses, (value) => value.toMap()),
      'displayName': ?displayName,
      'emails': ?pulumi.Input.mapOptionalInputValue<UserEmails, Map<String, dynamic>>(emails, (value) => value.toMap()),
      'externalIds': ?pulumi.Input.mapOptionalInputValue<List<UserExternalId>, List<Map<String, dynamic>>>(externalIds, (value) => pulumi.Input.encodeList<UserExternalId, Map<String, dynamic>>(value, (value) => value.toMap())),
      'identityStoreId': ?identityStoreId,
      'locale': ?locale,
      'name': ?pulumi.Input.mapOptionalInputValue<UserName, Map<String, dynamic>>(name, (value) => value.toMap()),
      'nickname': ?nickname,
      'phoneNumbers': ?pulumi.Input.mapOptionalInputValue<UserPhoneNumbers, Map<String, dynamic>>(phoneNumbers, (value) => value.toMap()),
      'preferredLanguage': ?preferredLanguage,
      'profileUrl': ?profileUrl,
      'region': ?region,
      'timezone': ?timezone,
      'title': ?title,
      'userId': ?userId,
      'userName': ?userName,
      'userStatus': ?userStatus,
      'userType': ?userType,
    };
  }

  factory UserState.fromMap(Map<String, dynamic> map) {
    return UserState(
      addresses: (() { final guardedValue = map['addresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserAddresses.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      emails: (() { final guardedValue = map['emails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserEmails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      externalIds: (() { final guardedValue = map['externalIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UserExternalId>(guardedValue, (value) => UserExternalId.fromMap((value as Map).cast<String, dynamic>()))); })(),
      identityStoreId: (() { final guardedValue = map['identityStoreId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      locale: (() { final guardedValue = map['locale']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserName.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nickname: (() { final guardedValue = map['nickname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      phoneNumbers: (() { final guardedValue = map['phoneNumbers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserPhoneNumbers.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      preferredLanguage: (() { final guardedValue = map['preferredLanguage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      profileUrl: (() { final guardedValue = map['profileUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timezone: (() { final guardedValue = map['timezone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userId: (() { final guardedValue = map['userId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userStatus: (() { final guardedValue = map['userStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userType: (() { final guardedValue = map['userType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
