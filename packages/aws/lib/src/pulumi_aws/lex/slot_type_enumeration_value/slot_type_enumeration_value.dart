// ignore_for_file: unused_element, unnecessary_cast

class SlotTypeEnumerationValue {
  /// Additional values related to the slot type value. Each item must be less than or equal to 140 characters in length.
  final List<String>? synonyms;

  /// The value of the slot type. Must be less than or equal to 140 characters in length.
  final String value;

  SlotTypeEnumerationValue({
    this.synonyms,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final synonymsValue = synonyms;
    if (synonymsValue != null) {
      map['synonyms'] = synonymsValue;
    }
    map['value'] = value;
    return map;
  }

  factory SlotTypeEnumerationValue.fromMap(Map<String, dynamic> map) {
    return SlotTypeEnumerationValue(
      synonyms: map['synonyms'] == null
          ? null
          : (map['synonyms'] as List).cast<String>(),
      value: map['value'] as String,
    );
  }
}
