// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of RecorderStatusEnumValue
class RecorderStatusEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [RecorderStatusEnumValue].
  /// [value] Property value
  const RecorderStatusEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory RecorderStatusEnumValue.fromMap(Map<String, dynamic> map) {
    return RecorderStatusEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
