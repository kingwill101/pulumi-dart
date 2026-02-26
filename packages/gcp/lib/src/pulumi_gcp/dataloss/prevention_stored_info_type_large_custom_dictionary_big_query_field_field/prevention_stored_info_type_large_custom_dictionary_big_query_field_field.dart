// ignore_for_file: unused_element, unnecessary_cast

class PreventionStoredInfoTypeLargeCustomDictionaryBigQueryFieldField {
  /// Name describing the field.
  final String name;

  PreventionStoredInfoTypeLargeCustomDictionaryBigQueryFieldField({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory PreventionStoredInfoTypeLargeCustomDictionaryBigQueryFieldField.fromMap(
      Map<String, dynamic> map) {
    return PreventionStoredInfoTypeLargeCustomDictionaryBigQueryFieldField(
      name: map['name'] as String,
    );
  }
}
