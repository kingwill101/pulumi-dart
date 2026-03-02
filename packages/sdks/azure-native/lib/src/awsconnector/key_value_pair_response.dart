// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of KeyValuePair
class KeyValuePairResponse {
  /// The name of the key-value pair. For environment variables, this is the name of the environment variable.
  final pulumi.Input<String>? name;
  /// The value of the key-value pair. For environment variables, this is the value of the environment variable.
  final pulumi.Input<String>? value;

  /// Creates a new [KeyValuePairResponse].
  /// [name] The name of the key-value pair. For environment variables, this is the name of the environment variable.
  /// [value] The value of the key-value pair. For environment variables, this is the value of the environment variable.
  KeyValuePairResponse({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory KeyValuePairResponse.fromMap(Map<String, dynamic> map) {
    return KeyValuePairResponse(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

