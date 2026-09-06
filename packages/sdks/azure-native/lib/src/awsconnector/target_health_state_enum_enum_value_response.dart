// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of TargetHealthStateEnumEnumValue
class TargetHealthStateEnumEnumValueResponse {
  /// Property value
  final pulumi.Input<String?>? value;

  /// Creates a new [TargetHealthStateEnumEnumValueResponse].
  /// [value] Property value
  const TargetHealthStateEnumEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory TargetHealthStateEnumEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return TargetHealthStateEnumEnumValueResponse(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
