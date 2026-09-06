// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Entity Uptime.
class EntityUptime {
  /// Gets the days per month.
  final pulumi.Input<int?>? daysPerMonth;
  /// Gets the hours per day.
  final pulumi.Input<int?>? hoursPerDay;

  /// Creates a new [EntityUptime].
  /// [daysPerMonth] Gets the days per month.
  /// [hoursPerDay] Gets the hours per day.
  const EntityUptime({
    this.daysPerMonth,
    this.hoursPerDay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysPerMonth': ?daysPerMonth,
      'hoursPerDay': ?hoursPerDay,
    };
  }

  factory EntityUptime.fromMap(Map<String, dynamic> map) {
    return EntityUptime(
      daysPerMonth: (() { final guardedValue = map['daysPerMonth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      hoursPerDay: (() { final guardedValue = map['hoursPerDay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
