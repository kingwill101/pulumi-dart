// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of PingStatusEnumValue
class PingStatusEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [PingStatusEnumValueResponse].
  /// [value] Property value
  const PingStatusEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory PingStatusEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return PingStatusEnumValueResponse(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
