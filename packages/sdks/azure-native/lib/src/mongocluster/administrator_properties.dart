// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The local administrator login properties.
class AdministratorProperties {
  /// The administrator password.
  final pulumi.Input<String>? password;
  /// The administrator user name.
  final pulumi.Input<String>? userName;

  /// Creates a new [AdministratorProperties].
  /// [password] The administrator password.
  /// [userName] The administrator user name.
  AdministratorProperties({
    this.password,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'userName': ?userName,
    };
  }

  factory AdministratorProperties.fromMap(Map<String, dynamic> map) {
    return AdministratorProperties(
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

