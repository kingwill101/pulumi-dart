// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserAlarmConfigContactConfig {
  /// The email address of the contact.
  final pulumi.Input<String>? email;
  /// The mobile phone number of the contact.
  final pulumi.Input<String>? mobilePhone;
  /// The name of the contact.
  final pulumi.Input<String>? name;
  /// The status of the contact configuration. Possible values are: `0` disable, `1` enable.
  final pulumi.Input<String>? status;

  /// Creates a new [UserAlarmConfigContactConfig].
  /// [email] The email address of the contact.
  /// [mobilePhone] The mobile phone number of the contact.
  /// [name] The name of the contact.
  /// [status] The status of the contact configuration. Possible values are: `0` disable, `1` enable.
  UserAlarmConfigContactConfig({
    this.email,
    this.mobilePhone,
    this.name,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?email,
      'mobilePhone': ?mobilePhone,
      'name': ?name,
      'status': ?status,
    };
  }

  factory UserAlarmConfigContactConfig.fromMap(Map<String, dynamic> map) {
    return UserAlarmConfigContactConfig(
      email: map['email'] == null ? null : (map['email']! as String).input(),
      mobilePhone: map['mobilePhone'] == null ? null : (map['mobilePhone']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

