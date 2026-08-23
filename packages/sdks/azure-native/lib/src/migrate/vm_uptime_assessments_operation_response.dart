// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details on the total up-time for the VM.
class VmUptimeAssessmentsOperationResponse {
  /// Number of days in a month for VM uptime.
  final pulumi.Input<int>? daysPerMonth;
  /// Number of hours per day for VM uptime.
  final pulumi.Input<int>? hoursPerDay;

  /// Creates a new [VmUptimeAssessmentsOperationResponse].
  /// [daysPerMonth] Number of days in a month for VM uptime.
  /// [hoursPerDay] Number of hours per day for VM uptime.
  const VmUptimeAssessmentsOperationResponse({
    this.daysPerMonth,
    this.hoursPerDay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysPerMonth': ?daysPerMonth,
      'hoursPerDay': ?hoursPerDay,
    };
  }

  factory VmUptimeAssessmentsOperationResponse.fromMap(Map<String, dynamic> map) {
    return VmUptimeAssessmentsOperationResponse(
      daysPerMonth: (() { final guardedValue = map['daysPerMonth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      hoursPerDay: (() { final guardedValue = map['hoursPerDay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
