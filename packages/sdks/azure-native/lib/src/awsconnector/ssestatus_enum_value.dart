// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of SSEStatusEnumValue
class SSEStatusEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [SSEStatusEnumValue].
  /// [value] Property value
  SSEStatusEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory SSEStatusEnumValue.fromMap(Map<String, dynamic> map) {
    return SSEStatusEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

