// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'time.dart';

/// {@template pulumi_desktopvirtualization_scaling_plan_pooled_schedule_args_doc}
/// The set of arguments for ScalingPlanPooledSchedule.
/// {@endtemplate}
/// {@macro pulumi_desktopvirtualization_scaling_plan_pooled_schedule_args_doc}
class ScalingPlanPooledScheduleArgs {
  /// Set of days of the week on which this schedule is active.
  final pulumi.Input<List<dynamic>?>? daysOfWeek;
  /// Load balancing algorithm for off-peak period.
  final pulumi.Input<dynamic>? offPeakLoadBalancingAlgorithm;
  /// Starting time for off-peak period.
  final pulumi.Input<Time?>? offPeakStartTime;
  /// Load balancing algorithm for peak period.
  final pulumi.Input<dynamic>? peakLoadBalancingAlgorithm;
  /// Starting time for peak period.
  final pulumi.Input<Time?>? peakStartTime;
  /// Capacity threshold for ramp down period.
  final pulumi.Input<int?>? rampDownCapacityThresholdPct;
  /// Should users be logged off forcefully from hosts.
  final pulumi.Input<bool?>? rampDownForceLogoffUsers;
  /// Load balancing algorithm for ramp down period.
  final pulumi.Input<dynamic>? rampDownLoadBalancingAlgorithm;
  /// Minimum host percentage for ramp down period.
  final pulumi.Input<int?>? rampDownMinimumHostsPct;
  /// Notification message for users during ramp down period.
  final pulumi.Input<String?>? rampDownNotificationMessage;
  /// Starting time for ramp down period.
  final pulumi.Input<Time?>? rampDownStartTime;
  /// Specifies when to stop hosts during ramp down period.
  final pulumi.Input<dynamic>? rampDownStopHostsWhen;
  /// Number of minutes to wait to stop hosts during ramp down period.
  final pulumi.Input<int?>? rampDownWaitTimeMinutes;
  /// Capacity threshold for ramp up period.
  final pulumi.Input<int?>? rampUpCapacityThresholdPct;
  /// Load balancing algorithm for ramp up period.
  final pulumi.Input<dynamic>? rampUpLoadBalancingAlgorithm;
  /// Minimum host percentage for ramp up period.
  final pulumi.Input<int?>? rampUpMinimumHostsPct;
  /// Starting time for ramp up period.
  final pulumi.Input<Time?>? rampUpStartTime;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the scaling plan.
  final pulumi.Input<String> scalingPlanName;
  /// The name of the ScalingPlanSchedule
  final pulumi.Input<String?>? scalingPlanScheduleName;

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
  const ScalingPlanPooledScheduleArgs({
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
      daysOfWeek: (() { final guardedValue = map['daysOfWeek']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      offPeakLoadBalancingAlgorithm: (() { final guardedValue = map['offPeakLoadBalancingAlgorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      offPeakStartTime: (() { final guardedValue = map['offPeakStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Time.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      peakLoadBalancingAlgorithm: (() { final guardedValue = map['peakLoadBalancingAlgorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      peakStartTime: (() { final guardedValue = map['peakStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Time.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rampDownCapacityThresholdPct: (() { final guardedValue = map['rampDownCapacityThresholdPct']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      rampDownForceLogoffUsers: (() { final guardedValue = map['rampDownForceLogoffUsers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      rampDownLoadBalancingAlgorithm: (() { final guardedValue = map['rampDownLoadBalancingAlgorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      rampDownMinimumHostsPct: (() { final guardedValue = map['rampDownMinimumHostsPct']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      rampDownNotificationMessage: (() { final guardedValue = map['rampDownNotificationMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rampDownStartTime: (() { final guardedValue = map['rampDownStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Time.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rampDownStopHostsWhen: (() { final guardedValue = map['rampDownStopHostsWhen']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      rampDownWaitTimeMinutes: (() { final guardedValue = map['rampDownWaitTimeMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      rampUpCapacityThresholdPct: (() { final guardedValue = map['rampUpCapacityThresholdPct']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      rampUpLoadBalancingAlgorithm: (() { final guardedValue = map['rampUpLoadBalancingAlgorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      rampUpMinimumHostsPct: (() { final guardedValue = map['rampUpMinimumHostsPct']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      rampUpStartTime: (() { final guardedValue = map['rampUpStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Time.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      scalingPlanName: pulumi.Input.fromValue(map['scalingPlanName'] as String),
      scalingPlanScheduleName: (() { final guardedValue = map['scalingPlanScheduleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
