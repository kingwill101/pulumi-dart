// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of AutoTuneStateEnumValue
class AutoTuneStateEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [AutoTuneStateEnumValueResponse].
  /// [value] Property value
  AutoTuneStateEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory AutoTuneStateEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return AutoTuneStateEnumValueResponse(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

