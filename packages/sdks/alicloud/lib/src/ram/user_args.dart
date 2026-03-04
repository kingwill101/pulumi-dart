// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ram_user_user_args_doc}
/// The set of arguments for User.
/// {@endtemplate}
/// {@macro pulumi_ram_user_user_args_doc}
class UserArgs {
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

  /// Creates a new [UserArgs].
  /// [comments] Comment of the RAM user. This parameter can have a string of 1 to 128 characters.
  /// [displayName] Name of the RAM user which for display. This name can have a string of 1 to 128 characters or Chinese characters, must contain only alphanumeric characters or Chinese characters or hyphens, such as "-",".", and must not end with a hyphen.
  /// [email] Email of the RAM user.
  /// [force] This parameter is used for resource destroy. Default value: `false`.
  /// [mobile] Phone number of the RAM user. This number must contain an international area code prefix, just look like this: 86-18600008888.
  /// [name] Name of the RAM user. This name can have a string of 1 to 64 characters, must contain only alphanumeric characters or hyphens, such as "-",".","_", and must not begin with a hyphen.
  UserArgs({
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

  factory UserArgs.fromMap(Map<String, dynamic> map) {
    return UserArgs(
      comments: (() {
        final guardedValue = map['comments'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      email: (() {
        final guardedValue = map['email'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      force: (() {
        final guardedValue = map['force'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      mobile: (() {
        final guardedValue = map['mobile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
