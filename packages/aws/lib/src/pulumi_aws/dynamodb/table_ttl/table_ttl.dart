// ignore_for_file: unused_element, unnecessary_cast

class TableTtl {
  /// Name of the table attribute to store the TTL timestamp in.
  /// Required if `enabled` is `true`, must not be set otherwise.
  final String? attributeName;

  /// Whether TTL is enabled.
  /// Default value is `false`.
  final bool? enabled;

  TableTtl({
    this.attributeName,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attributeNameValue = attributeName;
    if (attributeNameValue != null) {
      map['attributeName'] = attributeNameValue;
    }
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    return map;
  }

  factory TableTtl.fromMap(Map<String, dynamic> map) {
    return TableTtl(
      attributeName:
          map['attributeName'] == null ? null : map['attributeName'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
