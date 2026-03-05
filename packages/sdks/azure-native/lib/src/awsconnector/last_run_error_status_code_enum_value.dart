// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of LastRunErrorStatusCodeEnumValue
class LastRunErrorStatusCodeEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [LastRunErrorStatusCodeEnumValue].
  /// [value] Property value
  LastRunErrorStatusCodeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory LastRunErrorStatusCodeEnumValue.fromMap(Map<String, dynamic> map) {
    return LastRunErrorStatusCodeEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

