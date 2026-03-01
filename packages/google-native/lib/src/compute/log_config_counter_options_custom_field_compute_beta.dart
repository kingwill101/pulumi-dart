// ignore_for_file: unused_element, unnecessary_cast

/// This is deprecated and has no effect. Do not use.
class LogConfigCounterOptionsCustomFieldComputeBeta {
  /// This is deprecated and has no effect. Do not use.
  final String? name;

  /// This is deprecated and has no effect. Do not use.
  final String? value;

  /// Creates a new [LogConfigCounterOptionsCustomFieldComputeBeta].
  /// [name] This is deprecated and has no effect. Do not use.
  /// [value] This is deprecated and has no effect. Do not use.
  LogConfigCounterOptionsCustomFieldComputeBeta({this.name, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'value': ?value};
  }

  factory LogConfigCounterOptionsCustomFieldComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return LogConfigCounterOptionsCustomFieldComputeBeta(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
