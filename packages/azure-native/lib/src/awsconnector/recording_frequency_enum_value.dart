// ignore_for_file: unused_element, unnecessary_cast


/// Definition of RecordingFrequencyEnumValue
class RecordingFrequencyEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [RecordingFrequencyEnumValue].
  /// [value] Property value
  RecordingFrequencyEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory RecordingFrequencyEnumValue.fromMap(Map<String, dynamic> map) {
    return RecordingFrequencyEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

