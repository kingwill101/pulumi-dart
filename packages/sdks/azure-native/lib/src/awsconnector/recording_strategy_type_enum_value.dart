// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of RecordingStrategyTypeEnumValue
class RecordingStrategyTypeEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [RecordingStrategyTypeEnumValue].
  /// [value] Property value
  RecordingStrategyTypeEnumValue({this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': ?value};
  }

  factory RecordingStrategyTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return RecordingStrategyTypeEnumValue(
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
