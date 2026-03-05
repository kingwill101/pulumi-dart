// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertConfigurationAnnotation {
  /// Field name.
  final pulumi.Input<String>? key;
  /// Field value.
  final pulumi.Input<String>? value;

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
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

