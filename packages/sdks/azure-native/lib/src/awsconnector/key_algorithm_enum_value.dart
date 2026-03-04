// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of KeyAlgorithmEnumValue
class KeyAlgorithmEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [KeyAlgorithmEnumValue].
  /// [value] Property value
  KeyAlgorithmEnumValue({this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': ?value};
  }

  factory KeyAlgorithmEnumValue.fromMap(Map<String, dynamic> map) {
    return KeyAlgorithmEnumValue(
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
