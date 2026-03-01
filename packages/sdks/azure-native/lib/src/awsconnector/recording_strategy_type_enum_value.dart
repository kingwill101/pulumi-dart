// ignore_for_file: unused_element, unnecessary_cast


/// Definition of RecordingStrategyTypeEnumValue
class RecordingStrategyTypeEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [RecordingStrategyTypeEnumValue].
  /// [value] Property value
  RecordingStrategyTypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory RecordingStrategyTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return RecordingStrategyTypeEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

