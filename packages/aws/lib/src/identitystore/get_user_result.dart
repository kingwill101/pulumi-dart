// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_address.dart';
import 'get_user_alternate_identifier.dart';
import 'get_user_email.dart';
import 'get_user_external_id.dart';
import 'get_user_name.dart';
import 'get_user_phone_number.dart';

/// Result data returned by getUser.
class GetUserResult {
  /// List of details about the user's address.
  final List<GetUserAddress> addresses;
  final GetUserAlternateIdentifier? alternateIdentifier;

  /// The name that is typically displayed when the user is referenced.
  final String displayName;

  /// List of details about the user's email.
  final List<GetUserEmail> emails;

  /// List of identifiers issued to this resource by an external identity provider.
  final List<GetUserExternalId> externalIds;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String identityStoreId;

  /// The user's geographical region or location.
  final String locale;

  /// Details about the user's full name.
  final List<GetUserName> names;

  /// An alternate name for the user.
  final String nickname;

  /// List of details about the user's phone number.
  final List<GetUserPhoneNumber> phoneNumbers;

  /// The preferred language of the user.
  final String preferredLanguage;

  /// An URL that may be associated with the user.
  final String profileUrl;

  /// The region of the address.
  final String region;

  /// The user's time zone.
  final String timezone;

  /// The user's title.
  final String title;
  final String userId;

  /// User's user name value.
  final String userName;

  /// The user type.
  final String userType;

  /// Creates a new [GetUserResult].
  /// [addresses] List of details about the user's address.
  /// [alternateIdentifier] Optional.
  /// [displayName] The name that is typically displayed when the user is referenced.
  /// [emails] List of details about the user's email.
  /// [externalIds] List of identifiers issued to this resource by an external identity provider.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identityStoreId] Required.
  /// [locale] The user's geographical region or location.
  /// [names] Details about the user's full name.
  /// [nickname] An alternate name for the user.
  /// [phoneNumbers] List of details about the user's phone number.
  /// [preferredLanguage] The preferred language of the user.
  /// [profileUrl] An URL that may be associated with the user.
  /// [region] The region of the address.
  /// [timezone] The user's time zone.
  /// [title] The user's title.
  /// [userId] Required.
  /// [userName] User's user name value.
  /// [userType] The user type.
  GetUserResult({
    required this.addresses,
    this.alternateIdentifier,
    required this.displayName,
    required this.emails,
    required this.externalIds,
    required this.id,
    required this.identityStoreId,
    required this.locale,
    required this.names,
    required this.nickname,
    required this.phoneNumbers,
    required this.preferredLanguage,
    required this.profileUrl,
    required this.region,
    required this.timezone,
    required this.title,
    required this.userId,
    required this.userName,
    required this.userType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['addresses'] =
        pulumi.Input.encodeList<GetUserAddress, Map<String, dynamic>>(
            addresses, (value) => value.toMap());
    final alternateIdentifierValue = alternateIdentifier;
    if (alternateIdentifierValue != null) {
      map['alternateIdentifier'] = alternateIdentifierValue.toMap();
    }
    map['displayName'] = displayName;
    map['emails'] = pulumi.Input.encodeList<GetUserEmail, Map<String, dynamic>>(
        emails, (value) => value.toMap());
    map['externalIds'] =
        pulumi.Input.encodeList<GetUserExternalId, Map<String, dynamic>>(
            externalIds, (value) => value.toMap());
    map['id'] = id;
    map['identityStoreId'] = identityStoreId;
    map['locale'] = locale;
    map['names'] = pulumi.Input.encodeList<GetUserName, Map<String, dynamic>>(
        names, (value) => value.toMap());
    map['nickname'] = nickname;
    map['phoneNumbers'] =
        pulumi.Input.encodeList<GetUserPhoneNumber, Map<String, dynamic>>(
            phoneNumbers, (value) => value.toMap());
    map['preferredLanguage'] = preferredLanguage;
    map['profileUrl'] = profileUrl;
    map['region'] = region;
    map['timezone'] = timezone;
    map['title'] = title;
    map['userId'] = userId;
    map['userName'] = userName;
    map['userType'] = userType;
    return map;
  }

  factory GetUserResult.fromMap(Map<String, dynamic> map) {
    return GetUserResult(
      addresses: pulumi.Input.decodeList<GetUserAddress>(
          map['addresses'],
          (value) =>
              GetUserAddress.fromMap((value as Map).cast<String, dynamic>())),
      alternateIdentifier: map['alternateIdentifier'] == null
          ? null
          : GetUserAlternateIdentifier.fromMap(
              (map['alternateIdentifier'] as Map).cast<String, dynamic>()),
      displayName: map['displayName'] as String,
      emails: pulumi.Input.decodeList<GetUserEmail>(
          map['emails'],
          (value) =>
              GetUserEmail.fromMap((value as Map).cast<String, dynamic>())),
      externalIds: pulumi.Input.decodeList<GetUserExternalId>(
          map['externalIds'],
          (value) => GetUserExternalId.fromMap(
              (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      identityStoreId: map['identityStoreId'] as String,
      locale: map['locale'] as String,
      names: pulumi.Input.decodeList<GetUserName>(
          map['names'],
          (value) =>
              GetUserName.fromMap((value as Map).cast<String, dynamic>())),
      nickname: map['nickname'] as String,
      phoneNumbers: pulumi.Input.decodeList<GetUserPhoneNumber>(
          map['phoneNumbers'],
          (value) => GetUserPhoneNumber.fromMap(
              (value as Map).cast<String, dynamic>())),
      preferredLanguage: map['preferredLanguage'] as String,
      profileUrl: map['profileUrl'] as String,
      region: map['region'] as String,
      timezone: map['timezone'] as String,
      title: map['title'] as String,
      userId: map['userId'] as String,
      userName: map['userName'] as String,
      userType: map['userType'] as String,
    );
  }
}
