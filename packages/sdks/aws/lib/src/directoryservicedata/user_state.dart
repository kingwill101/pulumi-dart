// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering User resources.
class UserState {
  /// ID of the Directory that's associated with the user.
  final pulumi.Input<String?>? directoryId;
  /// Distinguished name of the user.
  final pulumi.Input<String?>? distinguishedName;
  /// Email address of the user.
  final pulumi.Input<String?>? emailAddress;
  /// Whether the user is active.
  final pulumi.Input<bool?>? enabled;
  /// First name of the user.
  final pulumi.Input<String?>? givenName;
  /// Realm of the user.
  final pulumi.Input<String?>? realm;
  /// Region where the user is managed. Defaults to the provider region.
  final pulumi.Input<String?>? region;
  /// SAM account name of the user. Must contain only word characters, hyphens, and periods.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? samAccountName;
  /// Unique Security identifier (SID) of the user.
  final pulumi.Input<String?>? sid;
  /// Last name of the user.
  final pulumi.Input<String?>? surname;
  /// User principal name of the user.
  final pulumi.Input<String?>? userPrincipalName;

  /// Creates a new [UserState].
  /// [directoryId] ID of the Directory that's associated with the user.
  /// [distinguishedName] Distinguished name of the user.
  /// [emailAddress] Email address of the user.
  /// [enabled] Whether the user is active.
  /// [givenName] First name of the user.
  /// [realm] Realm of the user.
  /// [region] Region where the user is managed. Defaults to the provider region.
  /// [samAccountName] SAM account name of the user. Must contain only word characters, hyphens, and periods.
  /// [sid] Unique Security identifier (SID) of the user.
  /// [surname] Last name of the user.
  /// [userPrincipalName] User principal name of the user.
  const UserState({
    this.directoryId,
    this.distinguishedName,
    this.emailAddress,
    this.enabled,
    this.givenName,
    this.realm,
    this.region,
    this.samAccountName,
    this.sid,
    this.surname,
    this.userPrincipalName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'directoryId': ?directoryId,
      'distinguishedName': ?distinguishedName,
      'emailAddress': ?emailAddress,
      'enabled': ?enabled,
      'givenName': ?givenName,
      'realm': ?realm,
      'region': ?region,
      'samAccountName': ?samAccountName,
      'sid': ?sid,
      'surname': ?surname,
      'userPrincipalName': ?userPrincipalName,
    };
  }

  factory UserState.fromMap(Map<String, dynamic> map) {
    return UserState(
      directoryId: (() { final guardedValue = map['directoryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      distinguishedName: (() { final guardedValue = map['distinguishedName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      emailAddress: (() { final guardedValue = map['emailAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      givenName: (() { final guardedValue = map['givenName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      realm: (() { final guardedValue = map['realm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      samAccountName: (() { final guardedValue = map['samAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sid: (() { final guardedValue = map['sid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      surname: (() { final guardedValue = map['surname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userPrincipalName: (() { final guardedValue = map['userPrincipalName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
