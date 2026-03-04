// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of RecordingFrequencyEnumValue
class RecordingFrequencyEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [RecordingFrequencyEnumValueResponse].
  /// [value] Property value
  RecordingFrequencyEnumValueResponse({this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': ?value};
  }

  factory RecordingFrequencyEnumValueResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return RecordingFrequencyEnumValueResponse(
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
