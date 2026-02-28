// ignore_for_file: unused_element, unnecessary_cast


class PreventionStoredInfoTypeLargeCustomDictionaryBigQueryFieldField {
  /// Name describing the field.
  final String name;

  /// Creates a new [PreventionStoredInfoTypeLargeCustomDictionaryBigQueryFieldField].
  /// [name] Name describing the field.
  PreventionStoredInfoTypeLargeCustomDictionaryBigQueryFieldField({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory PreventionStoredInfoTypeLargeCustomDictionaryBigQueryFieldField.fromMap(Map<String, dynamic> map) {
    return PreventionStoredInfoTypeLargeCustomDictionaryBigQueryFieldField(
      name: map['name'] as String,
    );
  }
}

