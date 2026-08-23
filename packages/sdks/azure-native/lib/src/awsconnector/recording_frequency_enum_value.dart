// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of RecordingFrequencyEnumValue
class RecordingFrequencyEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [RecordingFrequencyEnumValue].
  /// [value] Property value
  const RecordingFrequencyEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory RecordingFrequencyEnumValue.fromMap(Map<String, dynamic> map) {
    return RecordingFrequencyEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
