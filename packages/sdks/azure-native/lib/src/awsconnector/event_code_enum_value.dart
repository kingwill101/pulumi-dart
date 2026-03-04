// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of EventCodeEnumValue
class EventCodeEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [EventCodeEnumValue].
  /// [value] Property value
  EventCodeEnumValue({this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': ?value};
  }

  factory EventCodeEnumValue.fromMap(Map<String, dynamic> map) {
    return EventCodeEnumValue(
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
