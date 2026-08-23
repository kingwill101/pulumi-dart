// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of JobStatusEnumValue
class JobStatusEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [JobStatusEnumValueResponse].
  /// [value] Property value
  const JobStatusEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory JobStatusEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return JobStatusEnumValueResponse(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
