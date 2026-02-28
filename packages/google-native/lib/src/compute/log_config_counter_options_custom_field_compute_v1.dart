// ignore_for_file: unused_element, unnecessary_cast

/// This is deprecated and has no effect. Do not use.
class LogConfigCounterOptionsCustomFieldComputeV1 {
  /// This is deprecated and has no effect. Do not use.
  final String? name;

  /// This is deprecated and has no effect. Do not use.
  final String? value;

  /// Creates a new [LogConfigCounterOptionsCustomFieldComputeV1].
  /// [name] This is deprecated and has no effect. Do not use.
  /// [value] This is deprecated and has no effect. Do not use.
  LogConfigCounterOptionsCustomFieldComputeV1({
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

  factory LogConfigCounterOptionsCustomFieldComputeV1.fromMap(
      Map<String, dynamic> map) {
    return LogConfigCounterOptionsCustomFieldComputeV1(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
