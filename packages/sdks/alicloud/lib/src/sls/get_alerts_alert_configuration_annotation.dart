// ignore_for_file: unused_element, unnecessary_cast


class GetAlertsAlertConfigurationAnnotation {
  /// Field name.
  final String key;
  /// Field value.
  final String value;

  /// Creates a new [GetAlertsAlertConfigurationAnnotation].
  /// [key] Field name.
  /// [value] Field value.
  GetAlertsAlertConfigurationAnnotation({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory GetAlertsAlertConfigurationAnnotation.fromMap(Map<String, dynamic> map) {
    return GetAlertsAlertConfigurationAnnotation(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}

