// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering User resources.
class UserState {
  /// (Available since v1.262.1) The time when the user was created.
  final pulumi.Input<String>? createTime;
  /// The description of the user. The description can be up to 1,024 characters in length.
  final pulumi.Input<String>? description;
  /// The ID of the directory.
  final pulumi.Input<String>? directoryId;
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
  /// The ID of the user.
  final pulumi.Input<String>? userId;
  /// The username of the user. The username can contain digits, letters, and the following special characters: @_-. The username can be up to 64 characters in length.
  final pulumi.Input<String>? userName;

  /// Creates a new [UserState].
  /// [createTime] (Available since v1.262.1) The time when the user was created.
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
  /// [userId] The ID of the user.
  /// [userName] The username of the user. The username can contain digits, letters, and the following special characters: @_-. The username can be up to 64 characters in length.
  UserState({
    this.createTime,
    this.description,
    this.directoryId,
    this.displayName,
    this.email,
    this.firstName,
    this.lastName,
    this.mfaAuthenticationSettings,
    this.password,
    this.status,
    this.tags,
    this.userId,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'directoryId': ?directoryId,
      'displayName': ?displayName,
      'email': ?email,
      'firstName': ?firstName,
      'lastName': ?lastName,
      'mfaAuthenticationSettings': ?mfaAuthenticationSettings,
      'password': ?password,
      'status': ?status,
      'tags': ?tags,
      'userId': ?userId,
      'userName': ?userName,
    };
  }

  factory UserState.fromMap(Map<String, dynamic> map) {
    return UserState(
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      directoryId: map['directoryId'] == null ? null : (map['directoryId']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      email: map['email'] == null ? null : (map['email']! as String).input(),
      firstName: map['firstName'] == null ? null : (map['firstName']! as String).input(),
      lastName: map['lastName'] == null ? null : (map['lastName']! as String).input(),
      mfaAuthenticationSettings: map['mfaAuthenticationSettings'] == null ? null : (map['mfaAuthenticationSettings']! as String).input(),
      password: map['password'] == null ? null : (map['password']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      userId: map['userId'] == null ? null : (map['userId']! as String).input(),
      userName: map['userName'] == null ? null : (map['userName']! as String).input(),
    );
  }
}

