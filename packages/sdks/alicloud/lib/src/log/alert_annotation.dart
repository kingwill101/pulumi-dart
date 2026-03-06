// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertAnnotation {
  /// Annotations's key for new alert.
  final pulumi.Input<String> key;
  /// Annotations's value for new alert.
  final pulumi.Input<String> value;

  /// Creates a new [AlertAnnotation].
  /// [key] Annotations's key for new alert.
  /// [value] Annotations's value for new alert.
  const AlertAnnotation({
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
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

