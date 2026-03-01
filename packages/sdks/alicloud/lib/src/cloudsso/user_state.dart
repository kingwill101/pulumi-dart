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
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? directoryId,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? email,
    pulumi.Output<String>? firstName,
    pulumi.Output<String>? lastName,
    pulumi.Output<String>? mfaAuthenticationSettings,
    pulumi.Output<String>? password,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? userId,
    pulumi.Output<String>? userName,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      directoryId = pulumi.Input.asOptionalInput<String>(directoryId),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      email = pulumi.Input.asOptionalInput<String>(email),
      firstName = pulumi.Input.asOptionalInput<String>(firstName),
      lastName = pulumi.Input.asOptionalInput<String>(lastName),
      mfaAuthenticationSettings = pulumi.Input.asOptionalInput<String>(mfaAuthenticationSettings),
      password = pulumi.Input.asOptionalInput<String>(password),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      userId = pulumi.Input.asOptionalInput<String>(userId),
      userName = pulumi.Input.asOptionalInput<String>(userName);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      directoryId: map['directoryId'] == null ? null : pulumi.Output.create<String>(map['directoryId'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      email: map['email'] == null ? null : pulumi.Output.create<String>(map['email'] as String),
      firstName: map['firstName'] == null ? null : pulumi.Output.create<String>(map['firstName'] as String),
      lastName: map['lastName'] == null ? null : pulumi.Output.create<String>(map['lastName'] as String),
      mfaAuthenticationSettings: map['mfaAuthenticationSettings'] == null ? null : pulumi.Output.create<String>(map['mfaAuthenticationSettings'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      userId: map['userId'] == null ? null : pulumi.Output.create<String>(map['userId'] as String),
      userName: map['userName'] == null ? null : pulumi.Output.create<String>(map['userName'] as String),
    );
  }
}

