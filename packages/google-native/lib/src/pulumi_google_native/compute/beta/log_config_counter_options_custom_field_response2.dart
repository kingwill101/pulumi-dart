// ignore_for_file: unused_element, unnecessary_cast

/// This is deprecated and has no effect. Do not use.
class LogConfigCounterOptionsCustomFieldResponse2 {
  /// This is deprecated and has no effect. Do not use.
  final String name;

  /// This is deprecated and has no effect. Do not use.
  final String value;

  LogConfigCounterOptionsCustomFieldResponse2({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory LogConfigCounterOptionsCustomFieldResponse2.fromMap(
      Map<String, dynamic> map) {
    return LogConfigCounterOptionsCustomFieldResponse2(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
