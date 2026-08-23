// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of KeyValuePair
class KeyValuePair {
  /// The name of the key-value pair. For environment variables, this is the name of the environment variable.
  final pulumi.Input<String>? name;
  /// The value of the key-value pair. For environment variables, this is the value of the environment variable.
  final pulumi.Input<String>? value;

  /// Creates a new [KeyValuePair].
  /// [name] The name of the key-value pair. For environment variables, this is the name of the environment variable.
  /// [value] The value of the key-value pair. For environment variables, this is the value of the environment variable.
  const KeyValuePair({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory KeyValuePair.fromMap(Map<String, dynamic> map) {
    return KeyValuePair(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
