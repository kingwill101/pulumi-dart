// ignore_for_file: unused_element, unnecessary_cast


class AlertConfigurationAnnotation {
  /// Field name.
  final String? key;
  /// Field value.
  final String? value;

  /// Creates a new [AlertConfigurationAnnotation].
  /// [key] Field name.
  /// [value] Field value.
  AlertConfigurationAnnotation({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory AlertConfigurationAnnotation.fromMap(Map<String, dynamic> map) {
    return AlertConfigurationAnnotation(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

