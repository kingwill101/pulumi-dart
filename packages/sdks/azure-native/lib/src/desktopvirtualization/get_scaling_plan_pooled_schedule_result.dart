// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';
import 'time_response.dart';

/// Result data returned by getScalingPlanPooledSchedule.
class GetScalingPlanPooledScheduleResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Set of days of the week on which this schedule is active.
  final List<String>? daysOfWeek;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// Load balancing algorithm for off-peak period.
  final String? offPeakLoadBalancingAlgorithm;
  /// Starting time for off-peak period.
  final TimeResponse? offPeakStartTime;
  /// Load balancing algorithm for peak period.
  final String? peakLoadBalancingAlgorithm;
  /// Starting time for peak period.
  final TimeResponse? peakStartTime;
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
  final TimeResponse? rampDownStartTime;
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
  final TimeResponse? rampUpStartTime;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetScalingPlanPooledScheduleResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [daysOfWeek] Set of days of the week on which this schedule is active.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
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
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetScalingPlanPooledScheduleResult({
    required this.azureApiVersion,
    this.daysOfWeek,
    required this.id,
    required this.name,
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
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'daysOfWeek': ?daysOfWeek,
      'id': id,
      'name': name,
      'offPeakLoadBalancingAlgorithm': ?offPeakLoadBalancingAlgorithm,
      'offPeakStartTime': ?offPeakStartTime?.toMap(),
      'peakLoadBalancingAlgorithm': ?peakLoadBalancingAlgorithm,
      'peakStartTime': ?peakStartTime?.toMap(),
      'rampDownCapacityThresholdPct': ?rampDownCapacityThresholdPct,
      'rampDownForceLogoffUsers': ?rampDownForceLogoffUsers,
      'rampDownLoadBalancingAlgorithm': ?rampDownLoadBalancingAlgorithm,
      'rampDownMinimumHostsPct': ?rampDownMinimumHostsPct,
      'rampDownNotificationMessage': ?rampDownNotificationMessage,
      'rampDownStartTime': ?rampDownStartTime?.toMap(),
      'rampDownStopHostsWhen': ?rampDownStopHostsWhen,
      'rampDownWaitTimeMinutes': ?rampDownWaitTimeMinutes,
      'rampUpCapacityThresholdPct': ?rampUpCapacityThresholdPct,
      'rampUpLoadBalancingAlgorithm': ?rampUpLoadBalancingAlgorithm,
      'rampUpMinimumHostsPct': ?rampUpMinimumHostsPct,
      'rampUpStartTime': ?rampUpStartTime?.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetScalingPlanPooledScheduleResult.fromMap(Map<String, dynamic> map) {
    return GetScalingPlanPooledScheduleResult(
      azureApiVersion: map['azureApiVersion'] as String,
      daysOfWeek: (() { final guardedValue = map['daysOfWeek']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: map['id'] as String,
      name: map['name'] as String,
      offPeakLoadBalancingAlgorithm: (() { final guardedValue = map['offPeakLoadBalancingAlgorithm']; if (guardedValue == null) return null; return guardedValue as String; })(),
      offPeakStartTime: (() { final guardedValue = map['offPeakStartTime']; if (guardedValue == null) return null; return TimeResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      peakLoadBalancingAlgorithm: (() { final guardedValue = map['peakLoadBalancingAlgorithm']; if (guardedValue == null) return null; return guardedValue as String; })(),
      peakStartTime: (() { final guardedValue = map['peakStartTime']; if (guardedValue == null) return null; return TimeResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      rampDownCapacityThresholdPct: (() { final guardedValue = map['rampDownCapacityThresholdPct']; if (guardedValue == null) return null; return guardedValue as int; })(),
      rampDownForceLogoffUsers: (() { final guardedValue = map['rampDownForceLogoffUsers']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      rampDownLoadBalancingAlgorithm: (() { final guardedValue = map['rampDownLoadBalancingAlgorithm']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rampDownMinimumHostsPct: (() { final guardedValue = map['rampDownMinimumHostsPct']; if (guardedValue == null) return null; return guardedValue as int; })(),
      rampDownNotificationMessage: (() { final guardedValue = map['rampDownNotificationMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rampDownStartTime: (() { final guardedValue = map['rampDownStartTime']; if (guardedValue == null) return null; return TimeResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      rampDownStopHostsWhen: (() { final guardedValue = map['rampDownStopHostsWhen']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rampDownWaitTimeMinutes: (() { final guardedValue = map['rampDownWaitTimeMinutes']; if (guardedValue == null) return null; return guardedValue as int; })(),
      rampUpCapacityThresholdPct: (() { final guardedValue = map['rampUpCapacityThresholdPct']; if (guardedValue == null) return null; return guardedValue as int; })(),
      rampUpLoadBalancingAlgorithm: (() { final guardedValue = map['rampUpLoadBalancingAlgorithm']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rampUpMinimumHostsPct: (() { final guardedValue = map['rampUpMinimumHostsPct']; if (guardedValue == null) return null; return guardedValue as int; })(),
      rampUpStartTime: (() { final guardedValue = map['rampUpStartTime']; if (guardedValue == null) return null; return TimeResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

