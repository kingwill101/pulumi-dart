// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of StatusNameEnumValue
class StatusNameEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [StatusNameEnumValue].
  /// [value] Property value
  StatusNameEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory StatusNameEnumValue.fromMap(Map<String, dynamic> map) {
    return StatusNameEnumValue(
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

