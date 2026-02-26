// ignore_for_file: unused_element, unnecessary_cast

class StepDimensionValueEntryResponse {
  final String key;
  final String value;

  StepDimensionValueEntryResponse({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['value'] = value;
    return map;
  }

  factory StepDimensionValueEntryResponse.fromMap(Map<String, dynamic> map) {
    return StepDimensionValueEntryResponse(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
