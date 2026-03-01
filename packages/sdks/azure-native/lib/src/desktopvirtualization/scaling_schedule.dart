// ignore_for_file: unused_element, unnecessary_cast

import 'time.dart';

/// A ScalingPlanPooledSchedule.
class ScalingSchedule {
  /// Set of days of the week on which this schedule is active.
  final List<String>? daysOfWeek;
  /// Name of the ScalingPlanPooledSchedule.
  final String? name;
  /// Load balancing algorithm for off-peak period.
  final String? offPeakLoadBalancingAlgorithm;
  /// Starting time for off-peak period.
  final Time? offPeakStartTime;
  /// Load balancing algorithm for peak period.
  final String? peakLoadBalancingAlgorithm;
  /// Starting time for peak period.
  final Time? peakStartTime;
  /// Capacity threshold for ramp down period.
  final int? rampDownCapacityThresholdPct;
  /// Should users be logged off forcefully from hosts.
  final bool? rampDownForceLogoffUsers;
  /// Load balancing algorithm for ramp down period.
  final String? rampDownLoadBalancingAlgorithm;
  /// Minimum host percentage for ramp down period.
  final int? rampDownMinimumHostsPct;
  /// Notification message for users during ramp down period.
  final String? rampDownNotificationMessage;
  /// Starting time for ramp down period.
  final Time? rampDownStartTime;
  /// Specifies when to stop hosts during ramp down period.
  final String? rampDownStopHostsWhen;
  /// Number of minutes to wait to stop hosts during ramp down period.
  final int? rampDownWaitTimeMinutes;
  /// Capacity threshold for ramp up period.
  final int? rampUpCapacityThresholdPct;
  /// Load balancing algorithm for ramp up period.
  final String? rampUpLoadBalancingAlgorithm;
  /// Minimum host percentage for ramp up period.
  final int? rampUpMinimumHostsPct;
  /// Starting time for ramp up period.
  final Time? rampUpStartTime;

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
  ScalingSchedule({
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
      'offPeakStartTime': ?offPeakStartTime == null ? null : offPeakStartTime!.toMap(),
      'peakLoadBalancingAlgorithm': ?peakLoadBalancingAlgorithm,
      'peakStartTime': ?peakStartTime == null ? null : peakStartTime!.toMap(),
      'rampDownCapacityThresholdPct': ?rampDownCapacityThresholdPct,
      'rampDownForceLogoffUsers': ?rampDownForceLogoffUsers,
      'rampDownLoadBalancingAlgorithm': ?rampDownLoadBalancingAlgorithm,
      'rampDownMinimumHostsPct': ?rampDownMinimumHostsPct,
      'rampDownNotificationMessage': ?rampDownNotificationMessage,
      'rampDownStartTime': ?rampDownStartTime == null ? null : rampDownStartTime!.toMap(),
      'rampDownStopHostsWhen': ?rampDownStopHostsWhen,
      'rampDownWaitTimeMinutes': ?rampDownWaitTimeMinutes,
      'rampUpCapacityThresholdPct': ?rampUpCapacityThresholdPct,
      'rampUpLoadBalancingAlgorithm': ?rampUpLoadBalancingAlgorithm,
      'rampUpMinimumHostsPct': ?rampUpMinimumHostsPct,
      'rampUpStartTime': ?rampUpStartTime == null ? null : rampUpStartTime!.toMap(),
    };
  }

  factory ScalingSchedule.fromMap(Map<String, dynamic> map) {
    return ScalingSchedule(
      daysOfWeek: map['daysOfWeek'] == null ? null : (map['daysOfWeek'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      offPeakLoadBalancingAlgorithm: map['offPeakLoadBalancingAlgorithm'] == null ? null : map['offPeakLoadBalancingAlgorithm'] as String,
      offPeakStartTime: map['offPeakStartTime'] == null ? null : Time.fromMap((map['offPeakStartTime'] as Map).cast<String, dynamic>()),
      peakLoadBalancingAlgorithm: map['peakLoadBalancingAlgorithm'] == null ? null : map['peakLoadBalancingAlgorithm'] as String,
      peakStartTime: map['peakStartTime'] == null ? null : Time.fromMap((map['peakStartTime'] as Map).cast<String, dynamic>()),
      rampDownCapacityThresholdPct: map['rampDownCapacityThresholdPct'] == null ? null : map['rampDownCapacityThresholdPct'] as int,
      rampDownForceLogoffUsers: map['rampDownForceLogoffUsers'] == null ? null : map['rampDownForceLogoffUsers'] as bool,
      rampDownLoadBalancingAlgorithm: map['rampDownLoadBalancingAlgorithm'] == null ? null : map['rampDownLoadBalancingAlgorithm'] as String,
      rampDownMinimumHostsPct: map['rampDownMinimumHostsPct'] == null ? null : map['rampDownMinimumHostsPct'] as int,
      rampDownNotificationMessage: map['rampDownNotificationMessage'] == null ? null : map['rampDownNotificationMessage'] as String,
      rampDownStartTime: map['rampDownStartTime'] == null ? null : Time.fromMap((map['rampDownStartTime'] as Map).cast<String, dynamic>()),
      rampDownStopHostsWhen: map['rampDownStopHostsWhen'] == null ? null : map['rampDownStopHostsWhen'] as String,
      rampDownWaitTimeMinutes: map['rampDownWaitTimeMinutes'] == null ? null : map['rampDownWaitTimeMinutes'] as int,
      rampUpCapacityThresholdPct: map['rampUpCapacityThresholdPct'] == null ? null : map['rampUpCapacityThresholdPct'] as int,
      rampUpLoadBalancingAlgorithm: map['rampUpLoadBalancingAlgorithm'] == null ? null : map['rampUpLoadBalancingAlgorithm'] as String,
      rampUpMinimumHostsPct: map['rampUpMinimumHostsPct'] == null ? null : map['rampUpMinimumHostsPct'] as int,
      rampUpStartTime: map['rampUpStartTime'] == null ? null : Time.fromMap((map['rampUpStartTime'] as Map).cast<String, dynamic>()),
    );
  }
}

