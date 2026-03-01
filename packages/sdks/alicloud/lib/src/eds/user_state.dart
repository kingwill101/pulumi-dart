// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering User resources.
class UserState {
  /// The email of the user email.
  final pulumi.Input<String>? email;
  /// The Username. The custom setting is composed of lowercase letters, numbers and underscores, and the length is 3~24 characters.
  final pulumi.Input<String>? endUserId;
  /// The password of the user password.
  final pulumi.Input<String>? password;
  /// The phone of the mobile phone number.
  final pulumi.Input<String>? phone;
  /// The status of the resource. Valid values: `Unlocked`, `Locked`.
  final pulumi.Input<String>? status;

  /// Creates a new [UserState].
  /// [email] The email of the user email.
  /// [endUserId] The Username. The custom setting is composed of lowercase letters, numbers and underscores, and the length is 3~24 characters.
  /// [password] The password of the user password.
  /// [phone] The phone of the mobile phone number.
  /// [status] The status of the resource. Valid values: `Unlocked`, `Locked`.
  UserState({
    pulumi.Output<String>? email,
    pulumi.Output<String>? endUserId,
    pulumi.Output<String>? password,
    pulumi.Output<String>? phone,
    pulumi.Output<String>? status,
  }) :
      email = pulumi.Input.asOptionalInput<String>(email),
      endUserId = pulumi.Input.asOptionalInput<String>(endUserId),
      password = pulumi.Input.asOptionalInput<String>(password),
      phone = pulumi.Input.asOptionalInput<String>(phone),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?email,
      'endUserId': ?endUserId,
      'password': ?password,
      'phone': ?phone,
      'status': ?status,
    };
  }

  factory UserState.fromMap(Map<String, dynamic> map) {
    return UserState(
      email: map['email'] == null ? null : pulumi.Output.create<String>(map['email'] as String),
      endUserId: map['endUserId'] == null ? null : pulumi.Output.create<String>(map['endUserId'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      phone: map['phone'] == null ? null : pulumi.Output.create<String>(map['phone'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

