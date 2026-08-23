// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Entity Uptime.
class EntityUptimeResponse {
  /// Gets the days per month.
  final pulumi.Input<int>? daysPerMonth;
  /// Gets the hours per day.
  final pulumi.Input<int>? hoursPerDay;

  /// Creates a new [EntityUptimeResponse].
  /// [daysPerMonth] Gets the days per month.
  /// [hoursPerDay] Gets the hours per day.
  const EntityUptimeResponse({
    this.daysPerMonth,
    this.hoursPerDay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysPerMonth': ?daysPerMonth,
      'hoursPerDay': ?hoursPerDay,
    };
  }

  factory EntityUptimeResponse.fromMap(Map<String, dynamic> map) {
    return EntityUptimeResponse(
      daysPerMonth: (() { final guardedValue = map['daysPerMonth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      hoursPerDay: (() { final guardedValue = map['hoursPerDay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
