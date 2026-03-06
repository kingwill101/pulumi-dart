// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of AnomalyResultEnumEnumValue
class AnomalyResultEnumEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [AnomalyResultEnumEnumValueResponse].
  /// [value] Property value
  const AnomalyResultEnumEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory AnomalyResultEnumEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return AnomalyResultEnumEnumValueResponse(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

