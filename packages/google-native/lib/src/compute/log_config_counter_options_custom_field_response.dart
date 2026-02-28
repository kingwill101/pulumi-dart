// ignore_for_file: unused_element, unnecessary_cast


/// This is deprecated and has no effect. Do not use.
class LogConfigCounterOptionsCustomFieldResponse {
  /// This is deprecated and has no effect. Do not use.
  final String name;
  /// This is deprecated and has no effect. Do not use.
  final String value;

  /// Creates a new [LogConfigCounterOptionsCustomFieldResponse].
  /// [name] This is deprecated and has no effect. Do not use.
  /// [value] This is deprecated and has no effect. Do not use.
  LogConfigCounterOptionsCustomFieldResponse({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory LogConfigCounterOptionsCustomFieldResponse.fromMap(Map<String, dynamic> map) {
    return LogConfigCounterOptionsCustomFieldResponse(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

