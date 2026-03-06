// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of FieldLogLevelEnumValue
class FieldLogLevelEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [FieldLogLevelEnumValueResponse].
  /// [value] Property value
  const FieldLogLevelEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory FieldLogLevelEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return FieldLogLevelEnumValueResponse(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

