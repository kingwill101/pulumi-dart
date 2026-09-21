// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetUserAuthenticationMode {
  /// Number of passwords belonging to the user if `type` is set to `password`.
  final pulumi.Input<int> passwordCount;
  /// Type of authentication configured.
  final pulumi.Input<String> type;

  /// Creates a new [GetUserAuthenticationMode].
  /// [passwordCount] Number of passwords belonging to the user if `type` is set to `password`.
  /// [type] Type of authentication configured.
  const GetUserAuthenticationMode({
    required this.passwordCount,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'passwordCount': passwordCount,
      'type': type,
    };
  }

  factory GetUserAuthenticationMode.fromMap(Map<String, dynamic> map) {
    return GetUserAuthenticationMode(
      passwordCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['passwordCount'])),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
