// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ReplicationTimeValue
class ReplicationTimeValue {
  /// Contains an integer specifying time in minutes.   Valid value: 15
  final pulumi.Input<int?>? minutes;

  /// Creates a new [ReplicationTimeValue].
  /// [minutes] Contains an integer specifying time in minutes.   Valid value: 15
  const ReplicationTimeValue({
    this.minutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minutes': ?minutes,
    };
  }

  factory ReplicationTimeValue.fromMap(Map<String, dynamic> map) {
    return ReplicationTimeValue(
      minutes: (() { final guardedValue = map['minutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
