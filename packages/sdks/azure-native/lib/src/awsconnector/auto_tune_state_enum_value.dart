// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of AutoTuneStateEnumValue
class AutoTuneStateEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [AutoTuneStateEnumValue].
  /// [value] Property value
  AutoTuneStateEnumValue({this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': ?value};
  }

  factory AutoTuneStateEnumValue.fromMap(Map<String, dynamic> map) {
    return AutoTuneStateEnumValue(
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
