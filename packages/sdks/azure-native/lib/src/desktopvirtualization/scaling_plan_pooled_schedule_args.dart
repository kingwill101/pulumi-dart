// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'time.dart';

/// {@template pulumi_desktopvirtualization_scaling_plan_pooled_schedule_args_doc}
/// The set of arguments for ScalingPlanPooledSchedule.
/// {@endtemplate}
/// {@macro pulumi_desktopvirtualization_scaling_plan_pooled_schedule_args_doc}
class ScalingPlanPooledScheduleArgs {
  /// Set of days of the week on which this schedule is active.
  final pulumi.Input<List<String>>? daysOfWeek;
  /// Load balancing algorithm for off-peak period.
  final pulumi.Input<String>? offPeakLoadBalancingAlgorithm;
  /// Starting time for off-peak period.
  final pulumi.Input<Time>? offPeakStartTime;
  /// Load balancing algorithm for peak period.
  final pulumi.Input<String>? peakLoadBalancingAlgorithm;
  /// Starting time for peak period.
  final pulumi.Input<Time>? peakStartTime;
  /// Capacity threshold for ramp down period.
  final pulumi.Input<int>? rampDownCapacityThresholdPct;
  /// Should users be logged off forcefully from hosts.
  final pulumi.Input<bool>? rampDownForceLogoffUsers;
  /// Load balancing algorithm for ramp down period.
  final pulumi.Input<String>? rampDownLoadBalancingAlgorithm;
  /// Minimum host percentage for ramp down period.
  final pulumi.Input<int>? rampDownMinimumHostsPct;
  /// Notification message for users during ramp down period.
  final pulumi.Input<String>? rampDownNotificationMessage;
  /// Starting time for ramp down period.
  final pulumi.Input<Time>? rampDownStartTime;
  /// Specifies when to stop hosts during ramp down period.
  final pulumi.Input<String>? rampDownStopHostsWhen;
  /// Number of minutes to wait to stop hosts during ramp down period.
  final pulumi.Input<int>? rampDownWaitTimeMinutes;
  /// Capacity threshold for ramp up period.
  final pulumi.Input<int>? rampUpCapacityThresholdPct;
  /// Load balancing algorithm for ramp up period.
  final pulumi.Input<String>? rampUpLoadBalancingAlgorithm;
  /// Minimum host percentage for ramp up period.
  final pulumi.Input<int>? rampUpMinimumHostsPct;
  /// Starting time for ramp up period.
  final pulumi.Input<Time>? rampUpStartTime;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the scaling plan.
  final pulumi.Input<String> scalingPlanName;
  /// The name of the ScalingPlanSchedule
  final pulumi.Input<String>? scalingPlanScheduleName;

  /// Creates a new [ScalingPlanPooledScheduleArgs].
  /// [daysOfWeek] Set of days of the week on which this schedule is active.
  /// [offPeakLoadBalancingAlgorithm] Load balancing algorithm for off-peak period.
  /// [offPeakStartTime] Starting time for off-peak period.
  /// [peakLoadBalancingAlgorithm] Load balancing algorithm for peak period.
  /// [peakStartTime] Starting time for peak period.
  /// [rampDownCapacityThresholdPct] Capacity threshold for ramp down period.
  /// [rampDownForceLogoffUsers] Should users be logged off forcefully from hosts.
  /// [rampDownLoadBalancingAlgorithm] Load balancing algorithm for ramp down period.
  /// [rampDownMinimumHostsPct] Minimum host percentage for ramp down period.
  /// [rampDownNotificationMessage] Notification message for users during ramp down period.
  /// [rampDownStartTime] Starting time for ramp down period.
  /// [rampDownStopHostsWhen] Specifies when to stop hosts during ramp down period.
  /// [rampDownWaitTimeMinutes] Number of minutes to wait to stop hosts during ramp down period.
  /// [rampUpCapacityThresholdPct] Capacity threshold for ramp up period.
  /// [rampUpLoadBalancingAlgorithm] Load balancing algorithm for ramp up period.
  /// [rampUpMinimumHostsPct] Minimum host percentage for ramp up period.
  /// [rampUpStartTime] Starting time for ramp up period.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scalingPlanName] The name of the scaling plan.
  /// [scalingPlanScheduleName] The name of the ScalingPlanSchedule
  ScalingPlanPooledScheduleArgs({
    this.daysOfWeek,
    this.offPeakLoadBalancingAlgorithm,
    this.offPeakStartTime,
    this.peakLoadBalancingAlgorithm,
    this.peakStartTime,
    this.rampDownCapacityThresholdPct,
    this.rampDownForceLogoffUsers,
    this.rampDownLoadBalancingAlgorithm,
    this.rampDownMinimumHostsPct,
    this.rampDownNotificationMessage,
    this.rampDownStartTime,
    this.rampDownStopHostsWhen,
    this.rampDownWaitTimeMinutes,
    this.rampUpCapacityThresholdPct,
    this.rampUpLoadBalancingAlgorithm,
    this.rampUpMinimumHostsPct,
    this.rampUpStartTime,
    required this.resourceGroupName,
    required this.scalingPlanName,
    this.scalingPlanScheduleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysOfWeek': ?daysOfWeek,
      'offPeakLoadBalancingAlgorithm': ?offPeakLoadBalancingAlgorithm,
      'offPeakStartTime': ?pulumi.Input.mapOptionalInputValue<Time, Map<String, dynamic>>(offPeakStartTime, (value) => value.toMap()),
      'peakLoadBalancingAlgorithm': ?peakLoadBalancingAlgorithm,
      'peakStartTime': ?pulumi.Input.mapOptionalInputValue<Time, Map<String, dynamic>>(peakStartTime, (value) => value.toMap()),
      'rampDownCapacityThresholdPct': ?rampDownCapacityThresholdPct,
      'rampDownForceLogoffUsers': ?rampDownForceLogoffUsers,
      'rampDownLoadBalancingAlgorithm': ?rampDownLoadBalancingAlgorithm,
      'rampDownMinimumHostsPct': ?rampDownMinimumHostsPct,
      'rampDownNotificationMessage': ?rampDownNotificationMessage,
      'rampDownStartTime': ?pulumi.Input.mapOptionalInputValue<Time, Map<String, dynamic>>(rampDownStartTime, (value) => value.toMap()),
      'rampDownStopHostsWhen': ?rampDownStopHostsWhen,
      'rampDownWaitTimeMinutes': ?rampDownWaitTimeMinutes,
      'rampUpCapacityThresholdPct': ?rampUpCapacityThresholdPct,
      'rampUpLoadBalancingAlgorithm': ?rampUpLoadBalancingAlgorithm,
      'rampUpMinimumHostsPct': ?rampUpMinimumHostsPct,
      'rampUpStartTime': ?pulumi.Input.mapOptionalInputValue<Time, Map<String, dynamic>>(rampUpStartTime, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'scalingPlanName': scalingPlanName,
      'scalingPlanScheduleName': ?scalingPlanScheduleName,
    };
  }

  factory ScalingPlanPooledScheduleArgs.fromMap(Map<String, dynamic> map) {
    return ScalingPlanPooledScheduleArgs(
      daysOfWeek: map['daysOfWeek'] == null ? null : ((map['daysOfWeek']! as List).cast<String>()).input(),
      offPeakLoadBalancingAlgorithm: map['offPeakLoadBalancingAlgorithm'] == null ? null : (map['offPeakLoadBalancingAlgorithm']! as String).input(),
      offPeakStartTime: map['offPeakStartTime'] == null ? null : (Time.fromMap((map['offPeakStartTime']! as Map).cast<String, dynamic>())).input(),
      peakLoadBalancingAlgorithm: map['peakLoadBalancingAlgorithm'] == null ? null : (map['peakLoadBalancingAlgorithm']! as String).input(),
      peakStartTime: map['peakStartTime'] == null ? null : (Time.fromMap((map['peakStartTime']! as Map).cast<String, dynamic>())).input(),
      rampDownCapacityThresholdPct: map['rampDownCapacityThresholdPct'] == null ? null : (map['rampDownCapacityThresholdPct']! as int).input(),
      rampDownForceLogoffUsers: map['rampDownForceLogoffUsers'] == null ? null : (map['rampDownForceLogoffUsers']! as bool).input(),
      rampDownLoadBalancingAlgorithm: map['rampDownLoadBalancingAlgorithm'] == null ? null : (map['rampDownLoadBalancingAlgorithm']! as String).input(),
      rampDownMinimumHostsPct: map['rampDownMinimumHostsPct'] == null ? null : (map['rampDownMinimumHostsPct']! as int).input(),
      rampDownNotificationMessage: map['rampDownNotificationMessage'] == null ? null : (map['rampDownNotificationMessage']! as String).input(),
      rampDownStartTime: map['rampDownStartTime'] == null ? null : (Time.fromMap((map['rampDownStartTime']! as Map).cast<String, dynamic>())).input(),
      rampDownStopHostsWhen: map['rampDownStopHostsWhen'] == null ? null : (map['rampDownStopHostsWhen']! as String).input(),
      rampDownWaitTimeMinutes: map['rampDownWaitTimeMinutes'] == null ? null : (map['rampDownWaitTimeMinutes']! as int).input(),
      rampUpCapacityThresholdPct: map['rampUpCapacityThresholdPct'] == null ? null : (map['rampUpCapacityThresholdPct']! as int).input(),
      rampUpLoadBalancingAlgorithm: map['rampUpLoadBalancingAlgorithm'] == null ? null : (map['rampUpLoadBalancingAlgorithm']! as String).input(),
      rampUpMinimumHostsPct: map['rampUpMinimumHostsPct'] == null ? null : (map['rampUpMinimumHostsPct']! as int).input(),
      rampUpStartTime: map['rampUpStartTime'] == null ? null : (Time.fromMap((map['rampUpStartTime']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      scalingPlanName: (map['scalingPlanName'] as String).input(),
      scalingPlanScheduleName: map['scalingPlanScheduleName'] == null ? null : (map['scalingPlanScheduleName']! as String).input(),
    );
  }
}

