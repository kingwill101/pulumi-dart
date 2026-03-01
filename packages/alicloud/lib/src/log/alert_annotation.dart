// ignore_for_file: unused_element, unnecessary_cast


class AlertAnnotation {
  /// Annotations's key for new alert.
  final String key;
  /// Annotations's value for new alert.
  final String value;

  /// Creates a new [AlertAnnotation].
  /// [key] Annotations's key for new alert.
  /// [value] Annotations's value for new alert.
  AlertAnnotation({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory AlertAnnotation.fromMap(Map<String, dynamic> map) {
    return AlertAnnotation(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}

