// ignore_for_file: unused_element, unnecessary_cast

class SecurityActionFlagHeader {
  /// The header name to be sent to the target.
  final String? name;

  /// The header value to be sent to the target.
  final String? value;

  /// Creates a new [SecurityActionFlagHeader].
  /// [name] The header name to be sent to the target.
  /// [value] The header value to be sent to the target.
  SecurityActionFlagHeader({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory SecurityActionFlagHeader.fromMap(Map<String, dynamic> map) {
    return SecurityActionFlagHeader(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
