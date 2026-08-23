// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VmUptimeResponse {
  /// Number of days in a month for VM uptime.
  final pulumi.Input<double>? daysPerMonth;
  /// Number of hours per day for VM uptime.
  final pulumi.Input<double>? hoursPerDay;

  /// Creates a new [VmUptimeResponse].
  /// [daysPerMonth] Number of days in a month for VM uptime.
  /// [hoursPerDay] Number of hours per day for VM uptime.
  const VmUptimeResponse({
    this.daysPerMonth,
    this.hoursPerDay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysPerMonth': ?daysPerMonth,
      'hoursPerDay': ?hoursPerDay,
    };
  }

  factory VmUptimeResponse.fromMap(Map<String, dynamic> map) {
    return VmUptimeResponse(
      daysPerMonth: (() { final guardedValue = map['daysPerMonth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      hoursPerDay: (() { final guardedValue = map['hoursPerDay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
