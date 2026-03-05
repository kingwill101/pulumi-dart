// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAlertsAlertConfigurationAnnotation {
  /// Field name.
  final pulumi.Input<String> key;
  /// Field value.
  final pulumi.Input<String> value;

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
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

