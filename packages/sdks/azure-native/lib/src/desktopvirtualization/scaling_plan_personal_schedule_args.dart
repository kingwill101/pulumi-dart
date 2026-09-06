// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'time.dart';

/// {@template pulumi_desktopvirtualization_scaling_plan_personal_schedule_args_doc}
/// The set of arguments for ScalingPlanPersonalSchedule.
/// {@endtemplate}
/// {@macro pulumi_desktopvirtualization_scaling_plan_personal_schedule_args_doc}
class ScalingPlanPersonalScheduleArgs {
  /// Set of days of the week on which this schedule is active.
  final pulumi.Input<List<dynamic>?>? daysOfWeek;
  /// Action to be taken after a user disconnect during the off-peak period.
  final pulumi.Input<dynamic>? offPeakActionOnDisconnect;
  /// Action to be taken after a logoff during the off-peak period.
  final pulumi.Input<dynamic>? offPeakActionOnLogoff;
  /// The time in minutes to wait before performing the desired session handling action when a user disconnects during the off-peak period.
  final pulumi.Input<int?>? offPeakMinutesToWaitOnDisconnect;
  /// The time in minutes to wait before performing the desired session handling action when a user logs off during the off-peak period.
  final pulumi.Input<int?>? offPeakMinutesToWaitOnLogoff;
  /// Starting time for off-peak period.
  final pulumi.Input<Time?>? offPeakStartTime;
  /// The desired configuration of Start VM On Connect for the hostpool during the off-peak phase.
  final pulumi.Input<dynamic>? offPeakStartVMOnConnect;
  /// Action to be taken after a user disconnect during the peak period.
  final pulumi.Input<dynamic>? peakActionOnDisconnect;
  /// Action to be taken after a logoff during the peak period.
  final pulumi.Input<dynamic>? peakActionOnLogoff;
  /// The time in minutes to wait before performing the desired session handling action when a user disconnects during the peak period.
  final pulumi.Input<int?>? peakMinutesToWaitOnDisconnect;
  /// The time in minutes to wait before performing the desired session handling action when a user logs off during the peak period.
  final pulumi.Input<int?>? peakMinutesToWaitOnLogoff;
  /// Starting time for peak period.
  final pulumi.Input<Time?>? peakStartTime;
  /// The desired configuration of Start VM On Connect for the hostpool during the peak phase.
  final pulumi.Input<dynamic>? peakStartVMOnConnect;
  /// Action to be taken after a user disconnect during the ramp down period.
  final pulumi.Input<dynamic>? rampDownActionOnDisconnect;
  /// Action to be taken after a logoff during the ramp down period.
  final pulumi.Input<dynamic>? rampDownActionOnLogoff;
  /// The time in minutes to wait before performing the desired session handling action when a user disconnects during the ramp down period.
  final pulumi.Input<int?>? rampDownMinutesToWaitOnDisconnect;
  /// The time in minutes to wait before performing the desired session handling action when a user logs off during the ramp down period.
  final pulumi.Input<int?>? rampDownMinutesToWaitOnLogoff;
  /// Starting time for ramp down period.
  final pulumi.Input<Time?>? rampDownStartTime;
  /// The desired configuration of Start VM On Connect for the hostpool during the ramp down phase.
  final pulumi.Input<dynamic>? rampDownStartVMOnConnect;
  /// Action to be taken after a user disconnect during the ramp up period.
  final pulumi.Input<dynamic>? rampUpActionOnDisconnect;
  /// Action to be taken after a logoff during the ramp up period.
  final pulumi.Input<dynamic>? rampUpActionOnLogoff;
  /// The desired startup behavior during the ramp up period for personal vms in the hostpool.
  final pulumi.Input<dynamic>? rampUpAutoStartHosts;
  /// The time in minutes to wait before performing the desired session handling action when a user disconnects during the ramp up period.
  final pulumi.Input<int?>? rampUpMinutesToWaitOnDisconnect;
  /// The time in minutes to wait before performing the desired session handling action when a user logs off during the ramp up period.
  final pulumi.Input<int?>? rampUpMinutesToWaitOnLogoff;
  /// Starting time for ramp up period.
  final pulumi.Input<Time?>? rampUpStartTime;
  /// The desired configuration of Start VM On Connect for the hostpool during the ramp up phase. If this is disabled, session hosts must be turned on using rampUpAutoStartHosts or by turning them on manually.
  final pulumi.Input<dynamic>? rampUpStartVMOnConnect;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the scaling plan.
  final pulumi.Input<String> scalingPlanName;
  /// The name of the ScalingPlanSchedule
  final pulumi.Input<String?>? scalingPlanScheduleName;

  /// Creates a new [ScalingPlanPersonalScheduleArgs].
  /// [daysOfWeek] Set of days of the week on which this schedule is active.
  /// [offPeakActionOnDisconnect] Action to be taken after a user disconnect during the off-peak period.
  /// [offPeakActionOnLogoff] Action to be taken after a logoff during the off-peak period.
  /// [offPeakMinutesToWaitOnDisconnect] The time in minutes to wait before performing the desired session handling action when a user disconnects during the off-peak period.
  /// [offPeakMinutesToWaitOnLogoff] The time in minutes to wait before performing the desired session handling action when a user logs off during the off-peak period.
  /// [offPeakStartTime] Starting time for off-peak period.
  /// [offPeakStartVMOnConnect] The desired configuration of Start VM On Connect for the hostpool during the off-peak phase.
  /// [peakActionOnDisconnect] Action to be taken after a user disconnect during the peak period.
  /// [peakActionOnLogoff] Action to be taken after a logoff during the peak period.
  /// [peakMinutesToWaitOnDisconnect] The time in minutes to wait before performing the desired session handling action when a user disconnects during the peak period.
  /// [peakMinutesToWaitOnLogoff] The time in minutes to wait before performing the desired session handling action when a user logs off during the peak period.
  /// [peakStartTime] Starting time for peak period.
  /// [peakStartVMOnConnect] The desired configuration of Start VM On Connect for the hostpool during the peak phase.
  /// [rampDownActionOnDisconnect] Action to be taken after a user disconnect during the ramp down period.
  /// [rampDownActionOnLogoff] Action to be taken after a logoff during the ramp down period.
  /// [rampDownMinutesToWaitOnDisconnect] The time in minutes to wait before performing the desired session handling action when a user disconnects during the ramp down period.
  /// [rampDownMinutesToWaitOnLogoff] The time in minutes to wait before performing the desired session handling action when a user logs off during the ramp down period.
  /// [rampDownStartTime] Starting time for ramp down period.
  /// [rampDownStartVMOnConnect] The desired configuration of Start VM On Connect for the hostpool during the ramp down phase.
  /// [rampUpActionOnDisconnect] Action to be taken after a user disconnect during the ramp up period.
  /// [rampUpActionOnLogoff] Action to be taken after a logoff during the ramp up period.
  /// [rampUpAutoStartHosts] The desired startup behavior during the ramp up period for personal vms in the hostpool.
  /// [rampUpMinutesToWaitOnDisconnect] The time in minutes to wait before performing the desired session handling action when a user disconnects during the ramp up period.
  /// [rampUpMinutesToWaitOnLogoff] The time in minutes to wait before performing the desired session handling action when a user logs off during the ramp up period.
  /// [rampUpStartTime] Starting time for ramp up period.
  /// [rampUpStartVMOnConnect] The desired configuration of Start VM On Connect for the hostpool during the ramp up phase. If this is disabled, session hosts must be turned on using rampUpAutoStartHosts or by turning them on manually.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scalingPlanName] The name of the scaling plan.
  /// [scalingPlanScheduleName] The name of the ScalingPlanSchedule
  ScalingPlanPersonalScheduleArgs({
    this.daysOfWeek,
    this.offPeakActionOnDisconnect,
    this.offPeakActionOnLogoff,
    this.offPeakMinutesToWaitOnDisconnect,
    this.offPeakMinutesToWaitOnLogoff,
    this.offPeakStartTime,
    pulumi.Input<dynamic>? offPeakStartVMOnConnect,
    this.peakActionOnDisconnect,
    this.peakActionOnLogoff,
    this.peakMinutesToWaitOnDisconnect,
    this.peakMinutesToWaitOnLogoff,
    this.peakStartTime,
    pulumi.Input<dynamic>? peakStartVMOnConnect,
    this.rampDownActionOnDisconnect,
    this.rampDownActionOnLogoff,
    this.rampDownMinutesToWaitOnDisconnect,
    this.rampDownMinutesToWaitOnLogoff,
    this.rampDownStartTime,
    pulumi.Input<dynamic>? rampDownStartVMOnConnect,
    this.rampUpActionOnDisconnect,
    this.rampUpActionOnLogoff,
    this.rampUpAutoStartHosts,
    this.rampUpMinutesToWaitOnDisconnect,
    this.rampUpMinutesToWaitOnLogoff,
    this.rampUpStartTime,
    pulumi.Input<dynamic>? rampUpStartVMOnConnect,
    required this.resourceGroupName,
    required this.scalingPlanName,
    this.scalingPlanScheduleName,
  }) : offPeakStartVMOnConnect = offPeakStartVMOnConnect ?? pulumi.Input.fromValue('Enable'), peakStartVMOnConnect = peakStartVMOnConnect ?? pulumi.Input.fromValue('Enable'), rampDownStartVMOnConnect = rampDownStartVMOnConnect ?? pulumi.Input.fromValue('Enable'), rampUpStartVMOnConnect = rampUpStartVMOnConnect ?? pulumi.Input.fromValue('Enable');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysOfWeek': ?daysOfWeek,
      'offPeakActionOnDisconnect': ?offPeakActionOnDisconnect,
      'offPeakActionOnLogoff': ?offPeakActionOnLogoff,
      'offPeakMinutesToWaitOnDisconnect': ?offPeakMinutesToWaitOnDisconnect,
      'offPeakMinutesToWaitOnLogoff': ?offPeakMinutesToWaitOnLogoff,
      'offPeakStartTime': ?pulumi.Input.mapOptionalInputValue<Time, Map<String, dynamic>>(offPeakStartTime, (value) => value.toMap()),
      'offPeakStartVMOnConnect': ?offPeakStartVMOnConnect,
      'peakActionOnDisconnect': ?peakActionOnDisconnect,
      'peakActionOnLogoff': ?peakActionOnLogoff,
      'peakMinutesToWaitOnDisconnect': ?peakMinutesToWaitOnDisconnect,
      'peakMinutesToWaitOnLogoff': ?peakMinutesToWaitOnLogoff,
      'peakStartTime': ?pulumi.Input.mapOptionalInputValue<Time, Map<String, dynamic>>(peakStartTime, (value) => value.toMap()),
      'peakStartVMOnConnect': ?peakStartVMOnConnect,
      'rampDownActionOnDisconnect': ?rampDownActionOnDisconnect,
      'rampDownActionOnLogoff': ?rampDownActionOnLogoff,
      'rampDownMinutesToWaitOnDisconnect': ?rampDownMinutesToWaitOnDisconnect,
      'rampDownMinutesToWaitOnLogoff': ?rampDownMinutesToWaitOnLogoff,
      'rampDownStartTime': ?pulumi.Input.mapOptionalInputValue<Time, Map<String, dynamic>>(rampDownStartTime, (value) => value.toMap()),
      'rampDownStartVMOnConnect': ?rampDownStartVMOnConnect,
      'rampUpActionOnDisconnect': ?rampUpActionOnDisconnect,
      'rampUpActionOnLogoff': ?rampUpActionOnLogoff,
      'rampUpAutoStartHosts': ?rampUpAutoStartHosts,
      'rampUpMinutesToWaitOnDisconnect': ?rampUpMinutesToWaitOnDisconnect,
      'rampUpMinutesToWaitOnLogoff': ?rampUpMinutesToWaitOnLogoff,
      'rampUpStartTime': ?pulumi.Input.mapOptionalInputValue<Time, Map<String, dynamic>>(rampUpStartTime, (value) => value.toMap()),
      'rampUpStartVMOnConnect': ?rampUpStartVMOnConnect,
      'resourceGroupName': resourceGroupName,
      'scalingPlanName': scalingPlanName,
      'scalingPlanScheduleName': ?scalingPlanScheduleName,
    };
  }

  factory ScalingPlanPersonalScheduleArgs.fromMap(Map<String, dynamic> map) {
    return ScalingPlanPersonalScheduleArgs(
      daysOfWeek: (() { final guardedValue = map['daysOfWeek']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      offPeakActionOnDisconnect: (() { final guardedValue = map['offPeakActionOnDisconnect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      offPeakActionOnLogoff: (() { final guardedValue = map['offPeakActionOnLogoff']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      offPeakMinutesToWaitOnDisconnect: (() { final guardedValue = map['offPeakMinutesToWaitOnDisconnect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      offPeakMinutesToWaitOnLogoff: (() { final guardedValue = map['offPeakMinutesToWaitOnLogoff']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      offPeakStartTime: (() { final guardedValue = map['offPeakStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Time.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      offPeakStartVMOnConnect: (() { final guardedValue = map['offPeakStartVMOnConnect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      peakActionOnDisconnect: (() { final guardedValue = map['peakActionOnDisconnect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      peakActionOnLogoff: (() { final guardedValue = map['peakActionOnLogoff']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      peakMinutesToWaitOnDisconnect: (() { final guardedValue = map['peakMinutesToWaitOnDisconnect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      peakMinutesToWaitOnLogoff: (() { final guardedValue = map['peakMinutesToWaitOnLogoff']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      peakStartTime: (() { final guardedValue = map['peakStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Time.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      peakStartVMOnConnect: (() { final guardedValue = map['peakStartVMOnConnect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      rampDownActionOnDisconnect: (() { final guardedValue = map['rampDownActionOnDisconnect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      rampDownActionOnLogoff: (() { final guardedValue = map['rampDownActionOnLogoff']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      rampDownMinutesToWaitOnDisconnect: (() { final guardedValue = map['rampDownMinutesToWaitOnDisconnect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      rampDownMinutesToWaitOnLogoff: (() { final guardedValue = map['rampDownMinutesToWaitOnLogoff']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      rampDownStartTime: (() { final guardedValue = map['rampDownStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Time.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rampDownStartVMOnConnect: (() { final guardedValue = map['rampDownStartVMOnConnect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      rampUpActionOnDisconnect: (() { final guardedValue = map['rampUpActionOnDisconnect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      rampUpActionOnLogoff: (() { final guardedValue = map['rampUpActionOnLogoff']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      rampUpAutoStartHosts: (() { final guardedValue = map['rampUpAutoStartHosts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      rampUpMinutesToWaitOnDisconnect: (() { final guardedValue = map['rampUpMinutesToWaitOnDisconnect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      rampUpMinutesToWaitOnLogoff: (() { final guardedValue = map['rampUpMinutesToWaitOnLogoff']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      rampUpStartTime: (() { final guardedValue = map['rampUpStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Time.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rampUpStartVMOnConnect: (() { final guardedValue = map['rampUpStartVMOnConnect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      scalingPlanName: pulumi.Input.fromValue(map['scalingPlanName'] as String),
      scalingPlanScheduleName: (() { final guardedValue = map['scalingPlanScheduleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
