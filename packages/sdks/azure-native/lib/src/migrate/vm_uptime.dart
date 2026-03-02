// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details on the total up-time for the VM.
class VmUptime {
  /// Number of days in a month for VM uptime.
  final pulumi.Input<double>? daysPerMonth;
  /// Number of hours per day for VM uptime.
  final pulumi.Input<double>? hoursPerDay;

  /// Creates a new [VmUptime].
  /// [daysPerMonth] Number of days in a month for VM uptime.
  /// [hoursPerDay] Number of hours per day for VM uptime.
  VmUptime({
    this.daysPerMonth,
    this.hoursPerDay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysPerMonth': ?daysPerMonth,
      'hoursPerDay': ?hoursPerDay,
    };
  }

  factory VmUptime.fromMap(Map<String, dynamic> map) {
    return VmUptime(
      daysPerMonth: map['daysPerMonth'] == null ? null : (map['daysPerMonth'] as double).input(),
      hoursPerDay: map['hoursPerDay'] == null ? null : (map['hoursPerDay'] as double).input(),
    );
  }
}

