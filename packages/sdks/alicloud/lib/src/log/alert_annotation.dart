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
      key: (map['key'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

