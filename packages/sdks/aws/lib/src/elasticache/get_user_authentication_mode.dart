// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetUserAuthenticationMode {
  final pulumi.Input<int>? passwordCount;
  final pulumi.Input<String>? type;

  /// Creates a new [GetUserAuthenticationMode].
  /// [passwordCount] Optional.
  /// [type] Optional.
  GetUserAuthenticationMode({
    this.passwordCount,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'passwordCount': ?passwordCount,
      'type': ?type,
    };
  }

  factory GetUserAuthenticationMode.fromMap(Map<String, dynamic> map) {
    return GetUserAuthenticationMode(
      passwordCount: (() { final guardedValue = map['passwordCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

