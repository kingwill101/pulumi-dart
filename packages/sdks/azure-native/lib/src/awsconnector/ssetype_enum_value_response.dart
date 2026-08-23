// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of SSETypeEnumValue
class SSETypeEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [SSETypeEnumValueResponse].
  /// [value] Property value
  const SSETypeEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory SSETypeEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return SSETypeEnumValueResponse(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
