// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StringStringKeyValuePair {
  final pulumi.Input<String>? key;
  final pulumi.Input<String>? value;

  /// Creates a new [StringStringKeyValuePair].
  /// [key] Optional.
  /// [value] Optional.
  const StringStringKeyValuePair({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory StringStringKeyValuePair.fromMap(Map<String, dynamic> map) {
    return StringStringKeyValuePair(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
