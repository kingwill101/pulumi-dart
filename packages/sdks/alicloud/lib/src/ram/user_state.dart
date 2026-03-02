// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering User resources.
class UserState {
  /// Comment of the RAM user. This parameter can have a string of 1 to 128 characters.
  final pulumi.Input<String>? comments;
  /// Name of the RAM user which for display. This name can have a string of 1 to 128 characters or Chinese characters, must contain only alphanumeric characters or Chinese characters or hyphens, such as "-",".", and must not end with a hyphen.
  final pulumi.Input<String>? displayName;
  /// Email of the RAM user.
  final pulumi.Input<String>? email;
  /// This parameter is used for resource destroy. Default value: `false`.
  final pulumi.Input<bool>? force;
  /// Phone number of the RAM user. This number must contain an international area code prefix, just look like this: 86-18600008888.
  final pulumi.Input<String>? mobile;
  /// Name of the RAM user. This name can have a string of 1 to 64 characters, must contain only alphanumeric characters or hyphens, such as "-",".","_", and must not begin with a hyphen.
  final pulumi.Input<String>? name;

  /// Creates a new [UserState].
  /// [comments] Comment of the RAM user. This parameter can have a string of 1 to 128 characters.
  /// [displayName] Name of the RAM user which for display. This name can have a string of 1 to 128 characters or Chinese characters, must contain only alphanumeric characters or Chinese characters or hyphens, such as "-",".", and must not end with a hyphen.
  /// [email] Email of the RAM user.
  /// [force] This parameter is used for resource destroy. Default value: `false`.
  /// [mobile] Phone number of the RAM user. This number must contain an international area code prefix, just look like this: 86-18600008888.
  /// [name] Name of the RAM user. This name can have a string of 1 to 64 characters, must contain only alphanumeric characters or hyphens, such as "-",".","_", and must not begin with a hyphen.
  UserState({
    this.comments,
    this.displayName,
    this.email,
    this.force,
    this.mobile,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comments': ?comments,
      'displayName': ?displayName,
      'email': ?email,
      'force': ?force,
      'mobile': ?mobile,
      'name': ?name,
    };
  }

  factory UserState.fromMap(Map<String, dynamic> map) {
    return UserState(
      comments: map['comments'] == null ? null : (map['comments'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      email: map['email'] == null ? null : (map['email'] as String).input(),
      force: map['force'] == null ? null : (map['force'] as bool).input(),
      mobile: map['mobile'] == null ? null : (map['mobile'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

