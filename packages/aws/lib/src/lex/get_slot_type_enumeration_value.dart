// ignore_for_file: unused_element, unnecessary_cast

class GetSlotTypeEnumerationValue {
  final List<String> synonyms;
  final String value;

  /// Creates a new [GetSlotTypeEnumerationValue].
  /// [synonyms] Required.
  /// [value] Required.
  GetSlotTypeEnumerationValue({
    required this.synonyms,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['synonyms'] = synonyms;
    map['value'] = value;
    return map;
  }

  factory GetSlotTypeEnumerationValue.fromMap(Map<String, dynamic> map) {
    return GetSlotTypeEnumerationValue(
      synonyms: (map['synonyms'] as List).cast<String>(),
      value: map['value'] as String,
    );
  }
}
