// ignore_for_file: unused_element, unnecessary_cast

/// This is deprecated and has no effect. Do not use.
class LogConfigCounterOptionsCustomFieldResponseComputeV1 {
  /// This is deprecated and has no effect. Do not use.
  final String name;

  /// This is deprecated and has no effect. Do not use.
  final String value;

  LogConfigCounterOptionsCustomFieldResponseComputeV1({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory LogConfigCounterOptionsCustomFieldResponseComputeV1.fromMap(
      Map<String, dynamic> map) {
    return LogConfigCounterOptionsCustomFieldResponseComputeV1(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
