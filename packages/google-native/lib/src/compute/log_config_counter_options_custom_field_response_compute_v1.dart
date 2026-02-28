// ignore_for_file: unused_element, unnecessary_cast


/// This is deprecated and has no effect. Do not use.
class LogConfigCounterOptionsCustomFieldResponseComputeV1 {
  /// This is deprecated and has no effect. Do not use.
  final String name;
  /// This is deprecated and has no effect. Do not use.
  final String value;

  /// Creates a new [LogConfigCounterOptionsCustomFieldResponseComputeV1].
  /// [name] This is deprecated and has no effect. Do not use.
  /// [value] This is deprecated and has no effect. Do not use.
  LogConfigCounterOptionsCustomFieldResponseComputeV1({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory LogConfigCounterOptionsCustomFieldResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return LogConfigCounterOptionsCustomFieldResponseComputeV1(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

