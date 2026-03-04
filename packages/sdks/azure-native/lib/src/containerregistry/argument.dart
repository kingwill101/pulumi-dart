// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of a run argument.
class Argument {
  /// Flag to indicate whether the argument represents a secret and want to be removed from build logs.
  final pulumi.Input<bool>? isSecret;

  /// The name of the argument.
  final pulumi.Input<String> name;

  /// The value of the argument.
  final pulumi.Input<String> value;

  /// Creates a new [Argument].
  /// [isSecret] Flag to indicate whether the argument represents a secret and want to be removed from build logs.
  /// [name] The name of the argument.
  /// [value] The value of the argument.
  Argument({this.isSecret, required this.name, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isSecret': ?isSecret,
      'name': name,
      'value': value,
    };
  }

  factory Argument.fromMap(Map<String, dynamic> map) {
    return Argument(
      isSecret: (() {
        final guardedValue = map['isSecret'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
