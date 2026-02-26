// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_users_user_address/get_users_user_address.dart';
import '../get_users_user_email/get_users_user_email.dart';
import '../get_users_user_external_id/get_users_user_external_id.dart';
import '../get_users_user_name/get_users_user_name.dart';
import '../get_users_user_phone_number/get_users_user_phone_number.dart';

class GetUsersUser {
  /// List of details about the user's address.
  final List<GetUsersUserAddress> addresses;

  /// Name that is typically displayed when the user is referenced.
  final String displayName;

  /// List of details about the user's email.
  final List<GetUsersUserEmail> emails;

  /// List of identifiers issued to this resource by an external identity provider.
  final List<GetUsersUserExternalId> externalIds;

  /// Identity Store ID associated with the Single Sign-On Instance.
  final String identityStoreId;

  /// User's geographical region or location.
  final String locale;

  /// Details about the user's full name.
  final List<GetUsersUserName> names;

  /// An alternate name for the user.
  final String nickname;

  /// List of details about the user's phone number.
  final List<GetUsersUserPhoneNumber> phoneNumbers;

  /// Preferred language of the user.
  final String preferredLanguage;

  /// An URL that may be associated with the user.
  final String profileUrl;

  /// User's time zone.
  final String timezone;

  /// User's title.
  final String title;

  /// Identifier of the user in the Identity Store.
  final String userId;

  /// User's user name value.
  final String userName;

  /// User type.
  final String userType;

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
    final map = <String, dynamic>{};
    map['addresses'] =
        Input.encodeList<GetUsersUserAddress, Map<String, dynamic>>(
            addresses, (value) => value.toMap());
    map['displayName'] = displayName;
    map['emails'] = Input.encodeList<GetUsersUserEmail, Map<String, dynamic>>(
        emails, (value) => value.toMap());
    map['externalIds'] =
        Input.encodeList<GetUsersUserExternalId, Map<String, dynamic>>(
            externalIds, (value) => value.toMap());
    map['identityStoreId'] = identityStoreId;
    map['locale'] = locale;
    map['names'] = Input.encodeList<GetUsersUserName, Map<String, dynamic>>(
        names, (value) => value.toMap());
    map['nickname'] = nickname;
    map['phoneNumbers'] =
        Input.encodeList<GetUsersUserPhoneNumber, Map<String, dynamic>>(
            phoneNumbers, (value) => value.toMap());
    map['preferredLanguage'] = preferredLanguage;
    map['profileUrl'] = profileUrl;
    map['timezone'] = timezone;
    map['title'] = title;
    map['userId'] = userId;
    map['userName'] = userName;
    map['userType'] = userType;
    return map;
  }

  factory GetUsersUser.fromMap(Map<String, dynamic> map) {
    return GetUsersUser(
      addresses: Input.decodeList<GetUsersUserAddress>(
          map['addresses'],
          (value) => GetUsersUserAddress.fromMap(
              (value as Map).cast<String, dynamic>())),
      displayName: map['displayName'] as String,
      emails: Input.decodeList<GetUsersUserEmail>(
          map['emails'],
          (value) => GetUsersUserEmail.fromMap(
              (value as Map).cast<String, dynamic>())),
      externalIds: Input.decodeList<GetUsersUserExternalId>(
          map['externalIds'],
          (value) => GetUsersUserExternalId.fromMap(
              (value as Map).cast<String, dynamic>())),
      identityStoreId: map['identityStoreId'] as String,
      locale: map['locale'] as String,
      names: Input.decodeList<GetUsersUserName>(
          map['names'],
          (value) =>
              GetUsersUserName.fromMap((value as Map).cast<String, dynamic>())),
      nickname: map['nickname'] as String,
      phoneNumbers: Input.decodeList<GetUsersUserPhoneNumber>(
          map['phoneNumbers'],
          (value) => GetUsersUserPhoneNumber.fromMap(
              (value as Map).cast<String, dynamic>())),
      preferredLanguage: map['preferredLanguage'] as String,
      profileUrl: map['profileUrl'] as String,
      timezone: map['timezone'] as String,
      title: map['title'] as String,
      userId: map['userId'] as String,
      userName: map['userName'] as String,
      userType: map['userType'] as String,
    );
  }
}
