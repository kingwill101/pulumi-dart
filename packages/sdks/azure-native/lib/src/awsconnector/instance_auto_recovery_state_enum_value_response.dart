// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of InstanceAutoRecoveryStateEnumValue
class InstanceAutoRecoveryStateEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [InstanceAutoRecoveryStateEnumValueResponse].
  /// [value] Property value
  const InstanceAutoRecoveryStateEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory InstanceAutoRecoveryStateEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return InstanceAutoRecoveryStateEnumValueResponse(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

