// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_directoryservicedata_user_user_args_doc}
/// The set of arguments for User.
/// {@endtemplate}
/// {@macro pulumi_directoryservicedata_user_user_args_doc}
class UserArgs {
  /// ID of the Directory that's associated with the user.
  final pulumi.Input<String> directoryId;
  /// Email address of the user.
  final pulumi.Input<String?>? emailAddress;
  /// First name of the user.
  final pulumi.Input<String?>? givenName;
  /// Region where the user is managed. Defaults to the provider region.
  final pulumi.Input<String?>? region;
  /// SAM account name of the user. Must contain only word characters, hyphens, and periods.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> samAccountName;
  /// Last name of the user.
  final pulumi.Input<String?>? surname;

  /// Creates a new [UserArgs].
  /// [directoryId] ID of the Directory that's associated with the user.
  /// [emailAddress] Email address of the user.
  /// [givenName] First name of the user.
  /// [region] Region where the user is managed. Defaults to the provider region.
  /// [samAccountName] SAM account name of the user. Must contain only word characters, hyphens, and periods.
  /// [surname] Last name of the user.
  const UserArgs({
    required this.directoryId,
    this.emailAddress,
    this.givenName,
    this.region,
    required this.samAccountName,
    this.surname,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'directoryId': directoryId,
      'emailAddress': ?emailAddress,
      'givenName': ?givenName,
      'region': ?region,
      'samAccountName': samAccountName,
      'surname': ?surname,
    };
  }

  factory UserArgs.fromMap(Map<String, dynamic> map) {
    return UserArgs(
      directoryId: pulumi.Input.fromValue(map['directoryId'] as String),
      emailAddress: (() { final guardedValue = map['emailAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      givenName: (() { final guardedValue = map['givenName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      samAccountName: pulumi.Input.fromValue(map['samAccountName'] as String),
      surname: (() { final guardedValue = map['surname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
