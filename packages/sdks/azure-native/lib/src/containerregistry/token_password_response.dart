// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The password that will be used for authenticating the token of a container registry.
class TokenPasswordResponse {
  /// The creation datetime of the password.
  final pulumi.Input<String>? creationTime;
  /// The expiry datetime of the password.
  final pulumi.Input<String>? expiry;
  /// The password name "password1" or "password2"
  final pulumi.Input<String>? name;
  /// The password value.
  final pulumi.Input<String> value;

  /// Creates a new [TokenPasswordResponse].
  /// [creationTime] The creation datetime of the password.
  /// [expiry] The expiry datetime of the password.
  /// [name] The password name "password1" or "password2"
  /// [value] The password value.
  const TokenPasswordResponse({
    this.creationTime,
    this.expiry,
    this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTime': ?creationTime,
      'expiry': ?expiry,
      'name': ?name,
      'value': value,
    };
  }

  factory TokenPasswordResponse.fromMap(Map<String, dynamic> map) {
    return TokenPasswordResponse(
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expiry: (() { final guardedValue = map['expiry']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

