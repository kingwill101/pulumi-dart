// ignore_for_file: unused_element, unnecessary_cast

/// This is deprecated and has no effect. Do not use.
class LogConfigCounterOptionsCustomFieldResponseComputeBeta {
  /// This is deprecated and has no effect. Do not use.
  final String name;

  /// This is deprecated and has no effect. Do not use.
  final String value;

  /// Creates a new [LogConfigCounterOptionsCustomFieldResponseComputeBeta].
  /// [name] This is deprecated and has no effect. Do not use.
  /// [value] This is deprecated and has no effect. Do not use.
  LogConfigCounterOptionsCustomFieldResponseComputeBeta({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory LogConfigCounterOptionsCustomFieldResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return LogConfigCounterOptionsCustomFieldResponseComputeBeta(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
