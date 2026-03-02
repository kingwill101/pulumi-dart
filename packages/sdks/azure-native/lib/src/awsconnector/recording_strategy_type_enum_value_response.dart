// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of RecordingStrategyTypeEnumValue
class RecordingStrategyTypeEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [RecordingStrategyTypeEnumValueResponse].
  /// [value] Property value
  RecordingStrategyTypeEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory RecordingStrategyTypeEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return RecordingStrategyTypeEnumValueResponse(
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

