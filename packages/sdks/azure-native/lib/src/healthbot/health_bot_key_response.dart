// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An entry of HealthBotKeysResponse
class HealthBotKeyResponse {
  /// The name of the key.
  final pulumi.Input<String>? keyName;

  /// The value of the key.
  final pulumi.Input<String>? value;

  /// Creates a new [HealthBotKeyResponse].
  /// [keyName] The name of the key.
  /// [value] The value of the key.
  HealthBotKeyResponse({this.keyName, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'keyName': ?keyName, 'value': ?value};
  }

  factory HealthBotKeyResponse.fromMap(Map<String, dynamic> map) {
    return HealthBotKeyResponse(
      keyName: (() {
        final guardedValue = map['keyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
