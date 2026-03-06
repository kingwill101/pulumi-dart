// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertConfigurationLabel {
  /// Field name.
  final pulumi.Input<String>? key;
  /// Field value.
  final pulumi.Input<String>? value;

  /// Creates a new [AlertConfigurationLabel].
  /// [key] Field name.
  /// [value] Field value.
  const AlertConfigurationLabel({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory AlertConfigurationLabel.fromMap(Map<String, dynamic> map) {
    return AlertConfigurationLabel(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

