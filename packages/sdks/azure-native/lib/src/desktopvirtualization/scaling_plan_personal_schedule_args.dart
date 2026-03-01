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
    pulumi.Output<List<String>>? daysOfWeek,
    pulumi.Output<String>? offPeakActionOnDisconnect,
    pulumi.Output<String>? offPeakActionOnLogoff,
    pulumi.Output<int>? offPeakMinutesToWaitOnDisconnect,
    pulumi.Output<int>? offPeakMinutesToWaitOnLogoff,
    pulumi.Output<Time>? offPeakStartTime,
    pulumi.Output<String>? offPeakStartVMOnConnect,
    pulumi.Output<String>? peakActionOnDisconnect,
    pulumi.Output<String>? peakActionOnLogoff,
    pulumi.Output<int>? peakMinutesToWaitOnDisconnect,
    pulumi.Output<int>? peakMinutesToWaitOnLogoff,
    pulumi.Output<Time>? peakStartTime,
    pulumi.Output<String>? peakStartVMOnConnect,
    pulumi.Output<String>? rampDownActionOnDisconnect,
    pulumi.Output<String>? rampDownActionOnLogoff,
    pulumi.Output<int>? rampDownMinutesToWaitOnDisconnect,
    pulumi.Output<int>? rampDownMinutesToWaitOnLogoff,
    pulumi.Output<Time>? rampDownStartTime,
    pulumi.Output<String>? rampDownStartVMOnConnect,
    pulumi.Output<String>? rampUpActionOnDisconnect,
    pulumi.Output<String>? rampUpActionOnLogoff,
    pulumi.Output<String>? rampUpAutoStartHosts,
    pulumi.Output<int>? rampUpMinutesToWaitOnDisconnect,
    pulumi.Output<int>? rampUpMinutesToWaitOnLogoff,
    pulumi.Output<Time>? rampUpStartTime,
    pulumi.Output<String>? rampUpStartVMOnConnect,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> scalingPlanName,
    pulumi.Output<String>? scalingPlanScheduleName,
  }) :
      daysOfWeek = pulumi.Input.asOptionalInput<List<String>>(daysOfWeek),
      offPeakActionOnDisconnect = pulumi.Input.asOptionalInput<String>(offPeakActionOnDisconnect),
      offPeakActionOnLogoff = pulumi.Input.asOptionalInput<String>(offPeakActionOnLogoff),
      offPeakMinutesToWaitOnDisconnect = pulumi.Input.asOptionalInput<int>(offPeakMinutesToWaitOnDisconnect),
      offPeakMinutesToWaitOnLogoff = pulumi.Input.asOptionalInput<int>(offPeakMinutesToWaitOnLogoff),
      offPeakStartTime = pulumi.Input.asOptionalInput<Time>(offPeakStartTime),
      offPeakStartVMOnConnect = pulumi.Input.asOptionalInput<String>(offPeakStartVMOnConnect),
      peakActionOnDisconnect = pulumi.Input.asOptionalInput<String>(peakActionOnDisconnect),
      peakActionOnLogoff = pulumi.Input.asOptionalInput<String>(peakActionOnLogoff),
      peakMinutesToWaitOnDisconnect = pulumi.Input.asOptionalInput<int>(peakMinutesToWaitOnDisconnect),
      peakMinutesToWaitOnLogoff = pulumi.Input.asOptionalInput<int>(peakMinutesToWaitOnLogoff),
      peakStartTime = pulumi.Input.asOptionalInput<Time>(peakStartTime),
      peakStartVMOnConnect = pulumi.Input.asOptionalInput<String>(peakStartVMOnConnect),
      rampDownActionOnDisconnect = pulumi.Input.asOptionalInput<String>(rampDownActionOnDisconnect),
      rampDownActionOnLogoff = pulumi.Input.asOptionalInput<String>(rampDownActionOnLogoff),
      rampDownMinutesToWaitOnDisconnect = pulumi.Input.asOptionalInput<int>(rampDownMinutesToWaitOnDisconnect),
      rampDownMinutesToWaitOnLogoff = pulumi.Input.asOptionalInput<int>(rampDownMinutesToWaitOnLogoff),
      rampDownStartTime = pulumi.Input.asOptionalInput<Time>(rampDownStartTime),
      rampDownStartVMOnConnect = pulumi.Input.asOptionalInput<String>(rampDownStartVMOnConnect),
      rampUpActionOnDisconnect = pulumi.Input.asOptionalInput<String>(rampUpActionOnDisconnect),
      rampUpActionOnLogoff = pulumi.Input.asOptionalInput<String>(rampUpActionOnLogoff),
      rampUpAutoStartHosts = pulumi.Input.asOptionalInput<String>(rampUpAutoStartHosts),
      rampUpMinutesToWaitOnDisconnect = pulumi.Input.asOptionalInput<int>(rampUpMinutesToWaitOnDisconnect),
      rampUpMinutesToWaitOnLogoff = pulumi.Input.asOptionalInput<int>(rampUpMinutesToWaitOnLogoff),
      rampUpStartTime = pulumi.Input.asOptionalInput<Time>(rampUpStartTime),
      rampUpStartVMOnConnect = pulumi.Input.asOptionalInput<String>(rampUpStartVMOnConnect),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      scalingPlanName = pulumi.Input.asInput<String>(scalingPlanName),
      scalingPlanScheduleName = pulumi.Input.asOptionalInput<String>(scalingPlanScheduleName);

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
      daysOfWeek: map['daysOfWeek'] == null ? null : pulumi.Output.create<List<String>>((map['daysOfWeek'] as List).cast<String>()),
      offPeakActionOnDisconnect: map['offPeakActionOnDisconnect'] == null ? null : pulumi.Output.create<String>(map['offPeakActionOnDisconnect'] as String),
      offPeakActionOnLogoff: map['offPeakActionOnLogoff'] == null ? null : pulumi.Output.create<String>(map['offPeakActionOnLogoff'] as String),
      offPeakMinutesToWaitOnDisconnect: map['offPeakMinutesToWaitOnDisconnect'] == null ? null : pulumi.Output.create<int>(map['offPeakMinutesToWaitOnDisconnect'] as int),
      offPeakMinutesToWaitOnLogoff: map['offPeakMinutesToWaitOnLogoff'] == null ? null : pulumi.Output.create<int>(map['offPeakMinutesToWaitOnLogoff'] as int),
      offPeakStartTime: map['offPeakStartTime'] == null ? null : pulumi.Output.create<Time>(Time.fromMap((map['offPeakStartTime'] as Map).cast<String, dynamic>())),
      offPeakStartVMOnConnect: map['offPeakStartVMOnConnect'] == null ? null : pulumi.Output.create<String>(map['offPeakStartVMOnConnect'] as String),
      peakActionOnDisconnect: map['peakActionOnDisconnect'] == null ? null : pulumi.Output.create<String>(map['peakActionOnDisconnect'] as String),
      peakActionOnLogoff: map['peakActionOnLogoff'] == null ? null : pulumi.Output.create<String>(map['peakActionOnLogoff'] as String),
      peakMinutesToWaitOnDisconnect: map['peakMinutesToWaitOnDisconnect'] == null ? null : pulumi.Output.create<int>(map['peakMinutesToWaitOnDisconnect'] as int),
      peakMinutesToWaitOnLogoff: map['peakMinutesToWaitOnLogoff'] == null ? null : pulumi.Output.create<int>(map['peakMinutesToWaitOnLogoff'] as int),
      peakStartTime: map['peakStartTime'] == null ? null : pulumi.Output.create<Time>(Time.fromMap((map['peakStartTime'] as Map).cast<String, dynamic>())),
      peakStartVMOnConnect: map['peakStartVMOnConnect'] == null ? null : pulumi.Output.create<String>(map['peakStartVMOnConnect'] as String),
      rampDownActionOnDisconnect: map['rampDownActionOnDisconnect'] == null ? null : pulumi.Output.create<String>(map['rampDownActionOnDisconnect'] as String),
      rampDownActionOnLogoff: map['rampDownActionOnLogoff'] == null ? null : pulumi.Output.create<String>(map['rampDownActionOnLogoff'] as String),
      rampDownMinutesToWaitOnDisconnect: map['rampDownMinutesToWaitOnDisconnect'] == null ? null : pulumi.Output.create<int>(map['rampDownMinutesToWaitOnDisconnect'] as int),
      rampDownMinutesToWaitOnLogoff: map['rampDownMinutesToWaitOnLogoff'] == null ? null : pulumi.Output.create<int>(map['rampDownMinutesToWaitOnLogoff'] as int),
      rampDownStartTime: map['rampDownStartTime'] == null ? null : pulumi.Output.create<Time>(Time.fromMap((map['rampDownStartTime'] as Map).cast<String, dynamic>())),
      rampDownStartVMOnConnect: map['rampDownStartVMOnConnect'] == null ? null : pulumi.Output.create<String>(map['rampDownStartVMOnConnect'] as String),
      rampUpActionOnDisconnect: map['rampUpActionOnDisconnect'] == null ? null : pulumi.Output.create<String>(map['rampUpActionOnDisconnect'] as String),
      rampUpActionOnLogoff: map['rampUpActionOnLogoff'] == null ? null : pulumi.Output.create<String>(map['rampUpActionOnLogoff'] as String),
      rampUpAutoStartHosts: map['rampUpAutoStartHosts'] == null ? null : pulumi.Output.create<String>(map['rampUpAutoStartHosts'] as String),
      rampUpMinutesToWaitOnDisconnect: map['rampUpMinutesToWaitOnDisconnect'] == null ? null : pulumi.Output.create<int>(map['rampUpMinutesToWaitOnDisconnect'] as int),
      rampUpMinutesToWaitOnLogoff: map['rampUpMinutesToWaitOnLogoff'] == null ? null : pulumi.Output.create<int>(map['rampUpMinutesToWaitOnLogoff'] as int),
      rampUpStartTime: map['rampUpStartTime'] == null ? null : pulumi.Output.create<Time>(Time.fromMap((map['rampUpStartTime'] as Map).cast<String, dynamic>())),
      rampUpStartVMOnConnect: map['rampUpStartVMOnConnect'] == null ? null : pulumi.Output.create<String>(map['rampUpStartVMOnConnect'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      scalingPlanName: pulumi.Output.create<String>(map['scalingPlanName'] as String),
      scalingPlanScheduleName: map['scalingPlanScheduleName'] == null ? null : pulumi.Output.create<String>(map['scalingPlanScheduleName'] as String),
    );
  }
}

