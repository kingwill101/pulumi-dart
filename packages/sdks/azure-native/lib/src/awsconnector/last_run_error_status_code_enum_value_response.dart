// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of LastRunErrorStatusCodeEnumValue
class LastRunErrorStatusCodeEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [LastRunErrorStatusCodeEnumValueResponse].
  /// [value] Property value
  LastRunErrorStatusCodeEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory LastRunErrorStatusCodeEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return LastRunErrorStatusCodeEnumValueResponse(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

