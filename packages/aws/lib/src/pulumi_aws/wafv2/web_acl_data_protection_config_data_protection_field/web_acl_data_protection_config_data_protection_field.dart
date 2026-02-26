// ignore_for_file: unused_element, unnecessary_cast

class WebAclDataProtectionConfigDataProtectionField {
  /// Array of strings to specify the keys to protect for the specified field type. If you don't specify any key, then all keys for the field type are protected.
  final List<String>? fieldKeys;

  /// Specifies the web request component type to protect. Valid Values are `SINGLE_HEADER`, `SINGLE_COOKIE`, `SINGLE_QUERY_ARGUMENT`, `QUERY_STRING`, `BODY`.
  final String fieldType;

  WebAclDataProtectionConfigDataProtectionField({
    this.fieldKeys,
    required this.fieldType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fieldKeysValue = fieldKeys;
    if (fieldKeysValue != null) {
      map['fieldKeys'] = fieldKeysValue;
    }
    map['fieldType'] = fieldType;
    return map;
  }

  factory WebAclDataProtectionConfigDataProtectionField.fromMap(
      Map<String, dynamic> map) {
    return WebAclDataProtectionConfigDataProtectionField(
      fieldKeys: map['fieldKeys'] == null
          ? null
          : (map['fieldKeys'] as List).cast<String>(),
      fieldType: map['fieldType'] as String,
    );
  }
}
