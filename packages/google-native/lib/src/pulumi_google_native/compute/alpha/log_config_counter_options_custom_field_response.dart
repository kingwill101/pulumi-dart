// ignore_for_file: unused_element, unnecessary_cast

/// This is deprecated and has no effect. Do not use.
class LogConfigCounterOptionsCustomFieldResponse {
  /// This is deprecated and has no effect. Do not use.
  final String name;

  /// This is deprecated and has no effect. Do not use.
  final String value;

  LogConfigCounterOptionsCustomFieldResponse({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory LogConfigCounterOptionsCustomFieldResponse.fromMap(
      Map<String, dynamic> map) {
    return LogConfigCounterOptionsCustomFieldResponse(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
