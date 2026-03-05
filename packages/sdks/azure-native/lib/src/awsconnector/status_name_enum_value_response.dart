// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of StatusNameEnumValue
class StatusNameEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [StatusNameEnumValueResponse].
  /// [value] Property value
  StatusNameEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory StatusNameEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return StatusNameEnumValueResponse(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

