// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eds_user_user_args_doc}
/// The set of arguments for User.
/// {@endtemplate}
/// {@macro pulumi_eds_user_user_args_doc}
class UserArgs {
  /// The email of the user email.
  final pulumi.Input<String> email;
  /// The Username. The custom setting is composed of lowercase letters, numbers and underscores, and the length is 3~24 characters.
  final pulumi.Input<String> endUserId;
  /// The password of the user password.
  final pulumi.Input<String>? password;
  /// The phone of the mobile phone number.
  final pulumi.Input<String>? phone;
  /// The status of the resource. Valid values: `Unlocked`, `Locked`.
  final pulumi.Input<String>? status;

  /// Creates a new [UserArgs].
  /// [email] The email of the user email.
  /// [endUserId] The Username. The custom setting is composed of lowercase letters, numbers and underscores, and the length is 3~24 characters.
  /// [password] The password of the user password.
  /// [phone] The phone of the mobile phone number.
  /// [status] The status of the resource. Valid values: `Unlocked`, `Locked`.
  UserArgs({
    required this.email,
    required this.endUserId,
    this.password,
    this.phone,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'endUserId': endUserId,
      'password': ?password,
      'phone': ?phone,
      'status': ?status,
    };
  }

  factory UserArgs.fromMap(Map<String, dynamic> map) {
    return UserArgs(
      email: (map['email'] as String).input(),
      endUserId: (map['endUserId'] as String).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
      phone: map['phone'] == null ? null : (map['phone'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

