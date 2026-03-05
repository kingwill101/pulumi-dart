// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StringStringKeyValuePairResponse {
  final pulumi.Input<String>? key;
  final pulumi.Input<String>? value;

  /// Creates a new [StringStringKeyValuePairResponse].
  /// [key] Optional.
  /// [value] Optional.
  StringStringKeyValuePairResponse({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory StringStringKeyValuePairResponse.fromMap(Map<String, dynamic> map) {
    return StringStringKeyValuePairResponse(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

