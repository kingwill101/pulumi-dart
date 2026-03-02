// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'time.dart';

/// {@template pulumi_desktopvirtualization_scaling_plan_personal_schedule_args_doc}
/// The set of arguments for ScalingPlanPersonalSchedule.
/// {@endtemplate}
/// {@macro pulumi_desktopvirtualization_scaling_plan_personal_schedule_args_doc}
class ScalingPlanPersonalScheduleArgs {
  /// Set of days of the week on which this schedule is active.
  final pulumi.Input<List<String>>? daysOfWeek;
  /// Action to be taken after a user disconnect during the off-peak period.
  final pulumi.Input<String>? offPeakActionOnDisconnect;
  /// Action to be taken after a logoff during the off-peak period.
  final pulumi.Input<String>? offPeakActionOnLogoff;
  /// The time in minutes to wait before performing the desired session handling action when a user disconnects during the off-peak period.
  final pulumi.Input<int>? offPeakMinutesToWaitOnDisconnect;
  /// The time in minutes to wait before performing the desired session handling action when a user logs off during the off-peak period.
  final pulumi.Input<int>? offPeakMinutesToWaitOnLogoff;
  /// Starting time for off-peak period.
  final pulumi.Input<Time>? offPeakStartTime;
  /// The desired configuration of Start VM On Connect for the hostpool during the off-peak phase.
  final pulumi.Input<String>? offPeakStartVMOnConnect;
  /// Action to be taken after a user disconnect during the peak period.
  final pulumi.Input<String>? peakActionOnDisconnect;
  /// Action to be taken after a logoff during the peak period.
  final pulumi.Input<String>? peakActionOnLogoff;
  /// The time in minutes to wait before performing the desired session handling action when a user disconnects during the peak period.
  final pulumi.Input<int>? peakMinutesToWaitOnDisconnect;
  /// The time in minutes to wait before performing the desired session handling action when a user logs off during the peak period.
  final pulumi.Input<int>? peakMinutesToWaitOnLogoff;
  /// Starting time for peak period.
  final pulumi.Input<Time>? peakStartTime;
  /// The desired configuration of Start VM On Connect for the hostpool during the peak phase.
  final pulumi.Input<String>? peakStartVMOnConnect;
  /// Action to be taken after a user disconnect during the ramp down period.
  final pulumi.Input<String>? rampDownActionOnDisconnect;
  /// Action to be taken after a logoff during the ramp down period.
  final pulumi.Input<String>? rampDownActionOnLogoff;
  /// The time in minutes to wait before performing the desired session handling action when a user disconnects during the ramp down period.
  final pulumi.Input<int>? rampDownMinutesToWaitOnDisconnect;
  /// The time in minutes to wait before performing the desired session handling action when a user logs off during the ramp down period.
  final pulumi.Input<int>? rampDownMinutesToWaitOnLogoff;
  /// Starting time for ramp down period.
  final pulumi.Input<Time>? rampDownStartTime;
  /// The desired configuration of Start VM On Connect for the hostpool during the ramp down phase.
  final pulumi.Input<String>? rampDownStartVMOnConnect;
  /// Action to be taken after a user disconnect during the ramp up period.
  final pulumi.Input<String>? rampUpActionOnDisconnect;
  /// Action to be taken after a logoff during the ramp up period.
  final pulumi.Input<String>? rampUpActionOnLogoff;
  /// The desired startup behavior during the ramp up period for personal vms in the hostpool.
  final pulumi.Input<String>? rampUpAutoStartHosts;
  /// The time in minutes to wait before performing the desired session handling action when a user disconnects during the ramp up period.
  final pulumi.Input<int>? rampUpMinutesToWaitOnDisconnect;
  /// The time in minutes to wait before performing the desired session handling action when a user logs off during the ramp up period.
  final pulumi.Input<int>? rampUpMinutesToWaitOnLogoff;
  /// Starting time for ramp up period.
  final pulumi.Input<Time>? rampUpStartTime;
  /// The desired configuration of Start VM On Connect for the hostpool during the ramp up phase. If this is disabled, session hosts must be turned on using rampUpAutoStartHosts or by turning them on manually.
  final pulumi.Input<String>? rampUpStartVMOnConnect;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the scaling plan.
  final pulumi.Input<String> scalingPlanName;
  /// The name of the ScalingPlanSchedule
  final pulumi.Input<String>? scalingPlanScheduleName;

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
    this.offPeakStartVMOnConnect,
    this.peakActionOnDisconnect,
    this.peakActionOnLogoff,
    this.peakMinutesToWaitOnDisconnect,
    this.peakMinutesToWaitOnLogoff,
    this.peakStartTime,
    this.peakStartVMOnConnect,
    this.rampDownActionOnDisconnect,
    this.rampDownActionOnLogoff,
    this.rampDownMinutesToWaitOnDisconnect,
    this.rampDownMinutesToWaitOnLogoff,
    this.rampDownStartTime,
    this.rampDownStartVMOnConnect,
    this.rampUpActionOnDisconnect,
    this.rampUpActionOnLogoff,
    this.rampUpAutoStartHosts,
    this.rampUpMinutesToWaitOnDisconnect,
    this.rampUpMinutesToWaitOnLogoff,
    this.rampUpStartTime,
    this.rampUpStartVMOnConnect,
    required this.resourceGroupName,
    required this.scalingPlanName,
    this.scalingPlanScheduleName,
  });

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
      daysOfWeek: map['daysOfWeek'] == null ? null : ((map['daysOfWeek'] as List).cast<String>()).input(),
      offPeakActionOnDisconnect: map['offPeakActionOnDisconnect'] == null ? null : (map['offPeakActionOnDisconnect'] as String).input(),
      offPeakActionOnLogoff: map['offPeakActionOnLogoff'] == null ? null : (map['offPeakActionOnLogoff'] as String).input(),
      offPeakMinutesToWaitOnDisconnect: map['offPeakMinutesToWaitOnDisconnect'] == null ? null : (map['offPeakMinutesToWaitOnDisconnect'] as int).input(),
      offPeakMinutesToWaitOnLogoff: map['offPeakMinutesToWaitOnLogoff'] == null ? null : (map['offPeakMinutesToWaitOnLogoff'] as int).input(),
      offPeakStartTime: map['offPeakStartTime'] == null ? null : (Time.fromMap((map['offPeakStartTime'] as Map).cast<String, dynamic>())).input(),
      offPeakStartVMOnConnect: map['offPeakStartVMOnConnect'] == null ? null : (map['offPeakStartVMOnConnect'] as String).input(),
      peakActionOnDisconnect: map['peakActionOnDisconnect'] == null ? null : (map['peakActionOnDisconnect'] as String).input(),
      peakActionOnLogoff: map['peakActionOnLogoff'] == null ? null : (map['peakActionOnLogoff'] as String).input(),
      peakMinutesToWaitOnDisconnect: map['peakMinutesToWaitOnDisconnect'] == null ? null : (map['peakMinutesToWaitOnDisconnect'] as int).input(),
      peakMinutesToWaitOnLogoff: map['peakMinutesToWaitOnLogoff'] == null ? null : (map['peakMinutesToWaitOnLogoff'] as int).input(),
      peakStartTime: map['peakStartTime'] == null ? null : (Time.fromMap((map['peakStartTime'] as Map).cast<String, dynamic>())).input(),
      peakStartVMOnConnect: map['peakStartVMOnConnect'] == null ? null : (map['peakStartVMOnConnect'] as String).input(),
      rampDownActionOnDisconnect: map['rampDownActionOnDisconnect'] == null ? null : (map['rampDownActionOnDisconnect'] as String).input(),
      rampDownActionOnLogoff: map['rampDownActionOnLogoff'] == null ? null : (map['rampDownActionOnLogoff'] as String).input(),
      rampDownMinutesToWaitOnDisconnect: map['rampDownMinutesToWaitOnDisconnect'] == null ? null : (map['rampDownMinutesToWaitOnDisconnect'] as int).input(),
      rampDownMinutesToWaitOnLogoff: map['rampDownMinutesToWaitOnLogoff'] == null ? null : (map['rampDownMinutesToWaitOnLogoff'] as int).input(),
      rampDownStartTime: map['rampDownStartTime'] == null ? null : (Time.fromMap((map['rampDownStartTime'] as Map).cast<String, dynamic>())).input(),
      rampDownStartVMOnConnect: map['rampDownStartVMOnConnect'] == null ? null : (map['rampDownStartVMOnConnect'] as String).input(),
      rampUpActionOnDisconnect: map['rampUpActionOnDisconnect'] == null ? null : (map['rampUpActionOnDisconnect'] as String).input(),
      rampUpActionOnLogoff: map['rampUpActionOnLogoff'] == null ? null : (map['rampUpActionOnLogoff'] as String).input(),
      rampUpAutoStartHosts: map['rampUpAutoStartHosts'] == null ? null : (map['rampUpAutoStartHosts'] as String).input(),
      rampUpMinutesToWaitOnDisconnect: map['rampUpMinutesToWaitOnDisconnect'] == null ? null : (map['rampUpMinutesToWaitOnDisconnect'] as int).input(),
      rampUpMinutesToWaitOnLogoff: map['rampUpMinutesToWaitOnLogoff'] == null ? null : (map['rampUpMinutesToWaitOnLogoff'] as int).input(),
      rampUpStartTime: map['rampUpStartTime'] == null ? null : (Time.fromMap((map['rampUpStartTime'] as Map).cast<String, dynamic>())).input(),
      rampUpStartVMOnConnect: map['rampUpStartVMOnConnect'] == null ? null : (map['rampUpStartVMOnConnect'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      scalingPlanName: (map['scalingPlanName'] as String).input(),
      scalingPlanScheduleName: map['scalingPlanScheduleName'] == null ? null : (map['scalingPlanScheduleName'] as String).input(),
    );
  }
}

