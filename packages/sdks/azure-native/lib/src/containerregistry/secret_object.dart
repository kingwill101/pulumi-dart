// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the properties of a secret object value.
class SecretObject {
  /// The type of the secret object which determines how the value of the secret object has to be
  /// interpreted.
  final pulumi.Input<String>? type;
  /// The value of the secret. The format of this value will be determined
  /// based on the type of the secret object. If the type is Opaque, the value will be
  /// used as is without any modification.
  final pulumi.Input<String>? value;

  /// Creates a new [SecretObject].
  /// [type] The type of the secret object which determines how the value of the secret object has to be
  /// [value] The value of the secret. The format of this value will be determined
  const SecretObject({
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'value': ?value,
    };
  }

  factory SecretObject.fromMap(Map<String, dynamic> map) {
    return SecretObject(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

