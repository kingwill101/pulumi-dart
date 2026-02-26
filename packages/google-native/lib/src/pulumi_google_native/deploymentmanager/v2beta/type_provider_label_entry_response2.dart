// ignore_for_file: unused_element, unnecessary_cast

/// Label object for TypeProviders
class TypeProviderLabelEntryResponse2 {
  /// Key of the label
  final String key;

  /// Value of the label
  final String value;

  TypeProviderLabelEntryResponse2({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['value'] = value;
    return map;
  }

  factory TypeProviderLabelEntryResponse2.fromMap(Map<String, dynamic> map) {
    return TypeProviderLabelEntryResponse2(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
