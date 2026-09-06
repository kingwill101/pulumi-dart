// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details on the total up-time for the VM.
class VmUptimeMachineAssessmentsV2OperationResponse {
  /// Number of days in a month for VM uptime.
  final pulumi.Input<int?>? daysPerMonth;
  /// Number of hours per day for VM uptime.
  final pulumi.Input<int?>? hoursPerDay;

  /// Creates a new [VmUptimeMachineAssessmentsV2OperationResponse].
  /// [daysPerMonth] Number of days in a month for VM uptime.
  /// [hoursPerDay] Number of hours per day for VM uptime.
  const VmUptimeMachineAssessmentsV2OperationResponse({
    this.daysPerMonth,
    this.hoursPerDay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysPerMonth': ?daysPerMonth,
      'hoursPerDay': ?hoursPerDay,
    };
  }

  factory VmUptimeMachineAssessmentsV2OperationResponse.fromMap(Map<String, dynamic> map) {
    return VmUptimeMachineAssessmentsV2OperationResponse(
      daysPerMonth: (() { final guardedValue = map['daysPerMonth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      hoursPerDay: (() { final guardedValue = map['hoursPerDay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
