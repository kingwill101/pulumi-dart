// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudsso_user_user_args_doc}
/// The set of arguments for User.
/// {@endtemplate}
/// {@macro pulumi_cloudsso_user_user_args_doc}
class UserArgs {
  /// The description of the user. The description can be up to 1,024 characters in length.
  final pulumi.Input<String>? description;
  /// The ID of the directory.
  final pulumi.Input<String> directoryId;
  /// The display name of the user. The display name can be up to 256 characters in length.
  final pulumi.Input<String>? displayName;
  /// The email address of the user. The email address must be unique within the directory. The email address can be up to 128 characters in length.
  final pulumi.Input<String>? email;
  /// The first name of the user. The first name can be up to 64 characters in length.
  final pulumi.Input<String>? firstName;
  /// The last name of the user. The last name can be up to 64 characters in length.
  final pulumi.Input<String>? lastName;
  /// Specifies whether to enable MFA for the user. Default value: `Enabled`. Valid values: `Enabled`, `Disabled`.
  final pulumi.Input<String>? mfaAuthenticationSettings;
  /// The new password. The password must contain the following types of characters: uppercase letters, lowercase letters, digits, and special characters. The password must be 8 to 32 characters in length.
  final pulumi.Input<String>? password;
  /// The status of the user. Default value: `Enabled`. Valid values: `Enabled`, `Disabled`.
  final pulumi.Input<String>? status;
  /// The tag of the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The username of the user. The username can contain digits, letters, and the following special characters: @_-. The username can be up to 64 characters in length.
  final pulumi.Input<String> userName;

  /// Creates a new [UserArgs].
  /// [description] The description of the user. The description can be up to 1,024 characters in length.
  /// [directoryId] The ID of the directory.
  /// [displayName] The display name of the user. The display name can be up to 256 characters in length.
  /// [email] The email address of the user. The email address must be unique within the directory. The email address can be up to 128 characters in length.
  /// [firstName] The first name of the user. The first name can be up to 64 characters in length.
  /// [lastName] The last name of the user. The last name can be up to 64 characters in length.
  /// [mfaAuthenticationSettings] Specifies whether to enable MFA for the user. Default value: `Enabled`. Valid values: `Enabled`, `Disabled`.
  /// [password] The new password. The password must contain the following types of characters: uppercase letters, lowercase letters, digits, and special characters. The password must be 8 to 32 characters in length.
  /// [status] The status of the user. Default value: `Enabled`. Valid values: `Enabled`, `Disabled`.
  /// [tags] The tag of the resource.
  /// [userName] The username of the user. The username can contain digits, letters, and the following special characters: @_-. The username can be up to 64 characters in length.
  UserArgs({
    this.description,
    required this.directoryId,
    this.displayName,
    this.email,
    this.firstName,
    this.lastName,
    this.mfaAuthenticationSettings,
    this.password,
    this.status,
    this.tags,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'directoryId': directoryId,
      'displayName': ?displayName,
      'email': ?email,
      'firstName': ?firstName,
      'lastName': ?lastName,
      'mfaAuthenticationSettings': ?mfaAuthenticationSettings,
      'password': ?password,
      'status': ?status,
      'tags': ?tags,
      'userName': userName,
    };
  }

  factory UserArgs.fromMap(Map<String, dynamic> map) {
    return UserArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      directoryId: (map['directoryId'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      email: map['email'] == null ? null : (map['email'] as String).input(),
      firstName: map['firstName'] == null ? null : (map['firstName'] as String).input(),
      lastName: map['lastName'] == null ? null : (map['lastName'] as String).input(),
      mfaAuthenticationSettings: map['mfaAuthenticationSettings'] == null ? null : (map['mfaAuthenticationSettings'] as String).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      userName: (map['userName'] as String).input(),
    );
  }
}

