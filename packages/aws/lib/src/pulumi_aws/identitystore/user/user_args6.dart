// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../user_addresses/user_addresses.dart';
import '../user_emails/user_emails.dart';
import '../user_name/user_name.dart';
import '../user_phone_numbers/user_phone_numbers.dart';

/// The set of arguments for User.
class UserArgs6 {
  /// Details about the user's address. At most 1 address is allowed. Detailed below.
  final Input<UserAddresses>? addresses;

  /// The name that is typically displayed when the user is referenced.
  final Input<String> displayName;

  /// Details about the user's email. At most 1 email is allowed. Detailed below.
  final Input<UserEmails>? emails;

  /// The globally unique identifier for the identity store that this user is in.
  final Input<String> identityStoreId;

  /// The user's geographical region or location.
  final Input<String>? locale;

  /// Details about the user's full name. Detailed below.
  final Input<UserName>? name;

  /// An alternate name for the user.
  final Input<String>? nickname;

  /// Details about the user's phone number. At most 1 phone number is allowed. Detailed below.
  final Input<UserPhoneNumbers>? phoneNumbers;

  /// The preferred language of the user.
  final Input<String>? preferredLanguage;

  /// An URL that may be associated with the user.
  final Input<String>? profileUrl;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The user's time zone.
  final Input<String>? timezone;

  /// The user's title.
  final Input<String>? title;

  /// A unique string used to identify the user. This value can consist of letters, accented characters, symbols, numbers, and punctuation. This value is specified at the time the user is created and stored as an attribute of the user object in the identity store. The limit is 128 characters.
  ///
  /// The following arguments are optional:
  final Input<String> userName;

  /// The user type.
  ///
  /// > Unless specified otherwise, all fields can contain up to 1024 characters of free-form text.
  final Input<String>? userType;

  UserArgs6({
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
    final map = <String, dynamic>{};
    final addressesValue = addresses;
    if (addressesValue != null) {
      map['addresses'] =
          Input.mapOptionalInputValue<UserAddresses, Map<String, dynamic>>(
              addressesValue, (value) => value.toMap());
    }
    map['displayName'] = displayName;
    final emailsValue = emails;
    if (emailsValue != null) {
      map['emails'] =
          Input.mapOptionalInputValue<UserEmails, Map<String, dynamic>>(
              emailsValue, (value) => value.toMap());
    }
    map['identityStoreId'] = identityStoreId;
    final localeValue = locale;
    if (localeValue != null) {
      map['locale'] = localeValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = Input.mapOptionalInputValue<UserName, Map<String, dynamic>>(
          nameValue, (value) => value.toMap());
    }
    final nicknameValue = nickname;
    if (nicknameValue != null) {
      map['nickname'] = nicknameValue;
    }
    final phoneNumbersValue = phoneNumbers;
    if (phoneNumbersValue != null) {
      map['phoneNumbers'] =
          Input.mapOptionalInputValue<UserPhoneNumbers, Map<String, dynamic>>(
              phoneNumbersValue, (value) => value.toMap());
    }
    final preferredLanguageValue = preferredLanguage;
    if (preferredLanguageValue != null) {
      map['preferredLanguage'] = preferredLanguageValue;
    }
    final profileUrlValue = profileUrl;
    if (profileUrlValue != null) {
      map['profileUrl'] = profileUrlValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final timezoneValue = timezone;
    if (timezoneValue != null) {
      map['timezone'] = timezoneValue;
    }
    final titleValue = title;
    if (titleValue != null) {
      map['title'] = titleValue;
    }
    map['userName'] = userName;
    final userTypeValue = userType;
    if (userTypeValue != null) {
      map['userType'] = userTypeValue;
    }
    return map;
  }

  factory UserArgs6.fromMap(Map<String, dynamic> map) {
    return UserArgs6(
      addresses: Input.asOptionalInput<UserAddresses>(map['addresses']),
      displayName: Input.asInput<String>(map['displayName']),
      emails: Input.asOptionalInput<UserEmails>(map['emails']),
      identityStoreId: Input.asInput<String>(map['identityStoreId']),
      locale: Input.asOptionalInput<String>(map['locale']),
      name: Input.asOptionalInput<UserName>(map['name']),
      nickname: Input.asOptionalInput<String>(map['nickname']),
      phoneNumbers:
          Input.asOptionalInput<UserPhoneNumbers>(map['phoneNumbers']),
      preferredLanguage:
          Input.asOptionalInput<String>(map['preferredLanguage']),
      profileUrl: Input.asOptionalInput<String>(map['profileUrl']),
      region: Input.asOptionalInput<String>(map['region']),
      timezone: Input.asOptionalInput<String>(map['timezone']),
      title: Input.asOptionalInput<String>(map['title']),
      userName: Input.asInput<String>(map['userName']),
      userType: Input.asOptionalInput<String>(map['userType']),
    );
  }
}
