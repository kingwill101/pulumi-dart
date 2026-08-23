// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of SSETypeEnumValue
class SSETypeEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [SSETypeEnumValue].
  /// [value] Property value
  const SSETypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory SSETypeEnumValue.fromMap(Map<String, dynamic> map) {
    return SSETypeEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
