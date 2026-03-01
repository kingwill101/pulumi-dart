// ignore_for_file: unused_element, unnecessary_cast


class SlotTypeEnumerationValue {
  /// Additional values related to the slot type value. Each item must be less than or equal to 140 characters in length.
  final List<String>? synonyms;
  /// The value of the slot type. Must be less than or equal to 140 characters in length.
  final String value;

  /// Creates a new [SlotTypeEnumerationValue].
  /// [synonyms] Additional values related to the slot type value. Each item must be less than or equal to 140 characters in length.
  /// [value] The value of the slot type. Must be less than or equal to 140 characters in length.
  SlotTypeEnumerationValue({
    this.synonyms,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'synonyms': ?synonyms,
      'value': value,
    };
  }

  factory SlotTypeEnumerationValue.fromMap(Map<String, dynamic> map) {
    return SlotTypeEnumerationValue(
      synonyms: map['synonyms'] == null ? null : (map['synonyms'] as List).cast<String>(),
      value: map['value'] as String,
    );
  }
}

