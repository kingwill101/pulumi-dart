// ignore_for_file: unused_element, unnecessary_cast


class StepLabelsEntryResponse {
  final String key;
  final String value;

  /// Creates a new [StepLabelsEntryResponse].
  /// [key] Required.
  /// [value] Required.
  StepLabelsEntryResponse({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory StepLabelsEntryResponse.fromMap(Map<String, dynamic> map) {
    return StepLabelsEntryResponse(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}

