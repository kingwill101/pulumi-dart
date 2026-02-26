// ignore_for_file: unused_element, unnecessary_cast

class StepLabelsEntryResponse {
  final String key;
  final String value;

  StepLabelsEntryResponse({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['value'] = value;
    return map;
  }

  factory StepLabelsEntryResponse.fromMap(Map<String, dynamic> map) {
    return StepLabelsEntryResponse(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
