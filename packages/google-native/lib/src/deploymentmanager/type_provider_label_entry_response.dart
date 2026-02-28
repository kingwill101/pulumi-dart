// ignore_for_file: unused_element, unnecessary_cast

/// Label object for TypeProviders
class TypeProviderLabelEntryResponse {
  /// Key of the label
  final String key;

  /// Value of the label
  final String value;

  /// Creates a new [TypeProviderLabelEntryResponse].
  /// [key] Key of the label
  /// [value] Value of the label
  TypeProviderLabelEntryResponse({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['value'] = value;
    return map;
  }

  factory TypeProviderLabelEntryResponse.fromMap(Map<String, dynamic> map) {
    return TypeProviderLabelEntryResponse(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
