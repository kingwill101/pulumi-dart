// ignore_for_file: unused_element, unnecessary_cast

/// This is deprecated and has no effect. Do not use.
class LogConfigCounterOptionsCustomField3 {
  /// This is deprecated and has no effect. Do not use.
  final String? name;

  /// This is deprecated and has no effect. Do not use.
  final String? value;

  LogConfigCounterOptionsCustomField3({
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

  factory LogConfigCounterOptionsCustomField3.fromMap(
      Map<String, dynamic> map) {
    return LogConfigCounterOptionsCustomField3(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
