// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_users_user_address.dart';
import 'get_users_user_email.dart';
import 'get_users_user_external_id.dart';
import 'get_users_user_name.dart';
import 'get_users_user_phone_number.dart';

class GetUsersUser {
  /// List of details about the user's address.
  final pulumi.Input<List<GetUsersUserAddress>> addresses;
  /// Name that is typically displayed when the user is referenced.
  final pulumi.Input<String> displayName;
  /// List of details about the user's email.
  final pulumi.Input<List<GetUsersUserEmail>> emails;
  /// List of identifiers issued to this resource by an external identity provider.
  final pulumi.Input<List<GetUsersUserExternalId>> externalIds;
  /// Identity Store ID associated with the Single Sign-On Instance.
  final pulumi.Input<String> identityStoreId;
  /// User's geographical region or location.
  final pulumi.Input<String> locale;
  /// Details about the user's full name.
  final pulumi.Input<List<GetUsersUserName>> names;
  /// An alternate name for the user.
  final pulumi.Input<String> nickname;
  /// List of details about the user's phone number.
  final pulumi.Input<List<GetUsersUserPhoneNumber>> phoneNumbers;
  /// Preferred language of the user.
  final pulumi.Input<String> preferredLanguage;
  /// An URL that may be associated with the user.
  final pulumi.Input<String> profileUrl;
  /// User's time zone.
  final pulumi.Input<String> timezone;
  /// User's title.
  final pulumi.Input<String> title;
  /// Identifier of the user in the Identity Store.
  final pulumi.Input<String> userId;
  /// User's user name value.
  final pulumi.Input<String> userName;
  /// User type.
  final pulumi.Input<String> userType;

  /// Creates a new [GetUsersUser].
  /// [addresses] List of details about the user's address.
  /// [displayName] Name that is typically displayed when the user is referenced.
  /// [emails] List of details about the user's email.
  /// [externalIds] List of identifiers issued to this resource by an external identity provider.
  /// [identityStoreId] Identity Store ID associated with the Single Sign-On Instance.
  /// [locale] User's geographical region or location.
  /// [names] Details about the user's full name.
  /// [nickname] An alternate name for the user.
  /// [phoneNumbers] List of details about the user's phone number.
  /// [preferredLanguage] Preferred language of the user.
  /// [profileUrl] An URL that may be associated with the user.
  /// [timezone] User's time zone.
  /// [title] User's title.
  /// [userId] Identifier of the user in the Identity Store.
  /// [userName] User's user name value.
  /// [userType] User type.
  GetUsersUser({
    required this.addresses,
    required this.displayName,
    required this.emails,
    required this.externalIds,
    required this.identityStoreId,
    required this.locale,
    required this.names,
    required this.nickname,
    required this.phoneNumbers,
    required this.preferredLanguage,
    required this.profileUrl,
    required this.timezone,
    required this.title,
    required this.userId,
    required this.userName,
    required this.userType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addresses': pulumi.Input.mapInputValue<List<GetUsersUserAddress>, List<Map<String, dynamic>>>(addresses, (value) => pulumi.Input.encodeList<GetUsersUserAddress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'displayName': displayName,
      'emails': pulumi.Input.mapInputValue<List<GetUsersUserEmail>, List<Map<String, dynamic>>>(emails, (value) => pulumi.Input.encodeList<GetUsersUserEmail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'externalIds': pulumi.Input.mapInputValue<List<GetUsersUserExternalId>, List<Map<String, dynamic>>>(externalIds, (value) => pulumi.Input.encodeList<GetUsersUserExternalId, Map<String, dynamic>>(value, (value) => value.toMap())),
      'identityStoreId': identityStoreId,
      'locale': locale,
      'names': pulumi.Input.mapInputValue<List<GetUsersUserName>, List<Map<String, dynamic>>>(names, (value) => pulumi.Input.encodeList<GetUsersUserName, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nickname': nickname,
      'phoneNumbers': pulumi.Input.mapInputValue<List<GetUsersUserPhoneNumber>, List<Map<String, dynamic>>>(phoneNumbers, (value) => pulumi.Input.encodeList<GetUsersUserPhoneNumber, Map<String, dynamic>>(value, (value) => value.toMap())),
      'preferredLanguage': preferredLanguage,
      'profileUrl': profileUrl,
      'timezone': timezone,
      'title': title,
      'userId': userId,
      'userName': userName,
      'userType': userType,
    };
  }

  factory GetUsersUser.fromMap(Map<String, dynamic> map) {
    return GetUsersUser(
      addresses: (pulumi.Input.decodeList<GetUsersUserAddress>(map['addresses'], (value) => GetUsersUserAddress.fromMap((value as Map).cast<String, dynamic>()))).input(),
      displayName: (map['displayName'] as String).input(),
      emails: (pulumi.Input.decodeList<GetUsersUserEmail>(map['emails'], (value) => GetUsersUserEmail.fromMap((value as Map).cast<String, dynamic>()))).input(),
      externalIds: (pulumi.Input.decodeList<GetUsersUserExternalId>(map['externalIds'], (value) => GetUsersUserExternalId.fromMap((value as Map).cast<String, dynamic>()))).input(),
      identityStoreId: (map['identityStoreId'] as String).input(),
      locale: (map['locale'] as String).input(),
      names: (pulumi.Input.decodeList<GetUsersUserName>(map['names'], (value) => GetUsersUserName.fromMap((value as Map).cast<String, dynamic>()))).input(),
      nickname: (map['nickname'] as String).input(),
      phoneNumbers: (pulumi.Input.decodeList<GetUsersUserPhoneNumber>(map['phoneNumbers'], (value) => GetUsersUserPhoneNumber.fromMap((value as Map).cast<String, dynamic>()))).input(),
      preferredLanguage: (map['preferredLanguage'] as String).input(),
      profileUrl: (map['profileUrl'] as String).input(),
      timezone: (map['timezone'] as String).input(),
      title: (map['title'] as String).input(),
      userId: (map['userId'] as String).input(),
      userName: (map['userName'] as String).input(),
      userType: (map['userType'] as String).input(),
    );
  }
}

