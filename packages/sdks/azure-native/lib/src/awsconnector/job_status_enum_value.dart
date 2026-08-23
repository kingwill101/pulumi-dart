// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of JobStatusEnumValue
class JobStatusEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [JobStatusEnumValue].
  /// [value] Property value
  const JobStatusEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory JobStatusEnumValue.fromMap(Map<String, dynamic> map) {
    return JobStatusEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
