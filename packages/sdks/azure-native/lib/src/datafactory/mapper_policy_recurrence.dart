// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// CDC policy recurrence details.
class MapperPolicyRecurrence {
  /// Frequency of period in terms of 'Hour', 'Minute' or 'Second'.
  final pulumi.Input<dynamic>? frequency;
  /// Actual interval value as per chosen frequency.
  final pulumi.Input<int?>? interval;

  /// Creates a new [MapperPolicyRecurrence].
  /// [frequency] Frequency of period in terms of 'Hour', 'Minute' or 'Second'.
  /// [interval] Actual interval value as per chosen frequency.
  const MapperPolicyRecurrence({
    this.frequency,
    this.interval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequency': ?frequency,
      'interval': ?interval,
    };
  }

  factory MapperPolicyRecurrence.fromMap(Map<String, dynamic> map) {
    return MapperPolicyRecurrence(
      frequency: (() { final guardedValue = map['frequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
