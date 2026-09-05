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
  final List<GetUserAddress>? addresses;
  final GetUserAlternateIdentifier? alternateIdentifier;
  /// The name that is typically displayed when the user is referenced.
  final String? displayName;
  /// List of details about the user's email.
  final List<GetUserEmail>? emails;
  /// List of identifiers issued to this resource by an external identity provider.
  final List<GetUserExternalId>? externalIds;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? identityStoreId;
  /// The user's geographical region or location.
  final String? locale;
  /// Details about the user's full name.
  final List<GetUserName>? names;
  /// An alternate name for the user.
  final String? nickname;
  /// List of details about the user's phone number.
  final List<GetUserPhoneNumber>? phoneNumbers;
  /// The preferred language of the user.
  final String? preferredLanguage;
  /// An URL that may be associated with the user.
  final String? profileUrl;
  /// The region of the address.
  final String? region;
  /// The user's time zone.
  final String? timezone;
  /// The user's title.
  final String? title;
  final String? userId;
  /// User's user name value.
  final String? userName;
  /// The current status of the user account.
  final String? userStatus;
  /// The user type.
  final String? userType;

  /// Creates a new [GetUserResult].
  /// [addresses] List of details about the user's address.
  /// [alternateIdentifier] Optional.
  /// [displayName] The name that is typically displayed when the user is referenced.
  /// [emails] List of details about the user's email.
  /// [externalIds] List of identifiers issued to this resource by an external identity provider.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identityStoreId] Optional.
  /// [locale] The user's geographical region or location.
  /// [names] Details about the user's full name.
  /// [nickname] An alternate name for the user.
  /// [phoneNumbers] List of details about the user's phone number.
  /// [preferredLanguage] The preferred language of the user.
  /// [profileUrl] An URL that may be associated with the user.
  /// [region] The region of the address.
  /// [timezone] The user's time zone.
  /// [title] The user's title.
  /// [userId] Optional.
  /// [userName] User's user name value.
  /// [userStatus] The current status of the user account.
  /// [userType] The user type.
  const GetUserResult({
    this.addresses,
    this.alternateIdentifier,
    this.displayName,
    this.emails,
    this.externalIds,
    this.id,
    this.identityStoreId,
    this.locale,
    this.names,
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
      'addresses': ?(() { final guardedValue = addresses; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetUserAddress, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'alternateIdentifier': ?alternateIdentifier?.toMap(),
      'displayName': ?displayName,
      'emails': ?(() { final guardedValue = emails; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetUserEmail, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'externalIds': ?(() { final guardedValue = externalIds; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetUserExternalId, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'identityStoreId': ?identityStoreId,
      'locale': ?locale,
      'names': ?(() { final guardedValue = names; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetUserName, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'nickname': ?nickname,
      'phoneNumbers': ?(() { final guardedValue = phoneNumbers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetUserPhoneNumber, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
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

  factory GetUserResult.fromMap(Map<String, dynamic> map) {
    return GetUserResult(
      addresses: (() { final guardedValue = map['addresses']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetUserAddress>(guardedValue, (value) => GetUserAddress.fromMap((value as Map).cast<String, dynamic>())); })(),
      alternateIdentifier: (() { final guardedValue = map['alternateIdentifier']; if (guardedValue == null) return null; return GetUserAlternateIdentifier.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      emails: (() { final guardedValue = map['emails']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetUserEmail>(guardedValue, (value) => GetUserEmail.fromMap((value as Map).cast<String, dynamic>())); })(),
      externalIds: (() { final guardedValue = map['externalIds']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetUserExternalId>(guardedValue, (value) => GetUserExternalId.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identityStoreId: (() { final guardedValue = map['identityStoreId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      locale: (() { final guardedValue = map['locale']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (() { final guardedValue = map['names']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetUserName>(guardedValue, (value) => GetUserName.fromMap((value as Map).cast<String, dynamic>())); })(),
      nickname: (() { final guardedValue = map['nickname']; if (guardedValue == null) return null; return guardedValue as String; })(),
      phoneNumbers: (() { final guardedValue = map['phoneNumbers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetUserPhoneNumber>(guardedValue, (value) => GetUserPhoneNumber.fromMap((value as Map).cast<String, dynamic>())); })(),
      preferredLanguage: (() { final guardedValue = map['preferredLanguage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      profileUrl: (() { final guardedValue = map['profileUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      timezone: (() { final guardedValue = map['timezone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userId: (() { final guardedValue = map['userId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userStatus: (() { final guardedValue = map['userStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userType: (() { final guardedValue = map['userType']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
