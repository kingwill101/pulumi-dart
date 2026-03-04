// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// CDC policy recurrence details.
class MapperPolicyRecurrence {
  /// Frequency of period in terms of 'Hour', 'Minute' or 'Second'.
  final pulumi.Input<String>? frequency;

  /// Actual interval value as per chosen frequency.
  final pulumi.Input<int>? interval;

  /// Creates a new [MapperPolicyRecurrence].
  /// [frequency] Frequency of period in terms of 'Hour', 'Minute' or 'Second'.
  /// [interval] Actual interval value as per chosen frequency.
  MapperPolicyRecurrence({this.frequency, this.interval});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'frequency': ?frequency, 'interval': ?interval};
  }

  factory MapperPolicyRecurrence.fromMap(Map<String, dynamic> map) {
    return MapperPolicyRecurrence(
      frequency: (() {
        final guardedValue = map['frequency'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      interval: (() {
        final guardedValue = map['interval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
