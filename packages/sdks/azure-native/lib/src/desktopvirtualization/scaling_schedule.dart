// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'time.dart';

/// A ScalingPlanPooledSchedule.
class ScalingSchedule {
  /// Set of days of the week on which this schedule is active.
  final pulumi.Input<List<String>>? daysOfWeek;
  /// Name of the ScalingPlanPooledSchedule.
  final pulumi.Input<String>? name;
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

  /// Creates a new [ScalingSchedule].
  /// [daysOfWeek] Set of days of the week on which this schedule is active.
  /// [name] Name of the ScalingPlanPooledSchedule.
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
  const ScalingSchedule({
    this.daysOfWeek,
    this.name,
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
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysOfWeek': ?daysOfWeek,
      'name': ?name,
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
    };
  }

  factory ScalingSchedule.fromMap(Map<String, dynamic> map) {
    return ScalingSchedule(
      daysOfWeek: (() { final guardedValue = map['daysOfWeek']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      offPeakLoadBalancingAlgorithm: (() { final guardedValue = map['offPeakLoadBalancingAlgorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      offPeakStartTime: (() { final guardedValue = map['offPeakStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Time.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      peakLoadBalancingAlgorithm: (() { final guardedValue = map['peakLoadBalancingAlgorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peakStartTime: (() { final guardedValue = map['peakStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Time.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rampDownCapacityThresholdPct: (() { final guardedValue = map['rampDownCapacityThresholdPct']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      rampDownForceLogoffUsers: (() { final guardedValue = map['rampDownForceLogoffUsers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      rampDownLoadBalancingAlgorithm: (() { final guardedValue = map['rampDownLoadBalancingAlgorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rampDownMinimumHostsPct: (() { final guardedValue = map['rampDownMinimumHostsPct']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      rampDownNotificationMessage: (() { final guardedValue = map['rampDownNotificationMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rampDownStartTime: (() { final guardedValue = map['rampDownStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Time.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rampDownStopHostsWhen: (() { final guardedValue = map['rampDownStopHostsWhen']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rampDownWaitTimeMinutes: (() { final guardedValue = map['rampDownWaitTimeMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      rampUpCapacityThresholdPct: (() { final guardedValue = map['rampUpCapacityThresholdPct']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      rampUpLoadBalancingAlgorithm: (() { final guardedValue = map['rampUpLoadBalancingAlgorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rampUpMinimumHostsPct: (() { final guardedValue = map['rampUpMinimumHostsPct']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      rampUpStartTime: (() { final guardedValue = map['rampUpStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Time.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
