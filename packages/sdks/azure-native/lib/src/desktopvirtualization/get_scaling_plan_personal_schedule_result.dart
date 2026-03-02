// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';
import 'time_response.dart';

/// Result data returned by getScalingPlanPersonalSchedule.
class GetScalingPlanPersonalScheduleResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Set of days of the week on which this schedule is active.
  final List<String>? daysOfWeek;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// Action to be taken after a user disconnect during the off-peak period.
  final String? offPeakActionOnDisconnect;
  /// Action to be taken after a logoff during the off-peak period.
  final String? offPeakActionOnLogoff;
  /// The time in minutes to wait before performing the desired session handling action when a user disconnects during the off-peak period.
  final int? offPeakMinutesToWaitOnDisconnect;
  /// The time in minutes to wait before performing the desired session handling action when a user logs off during the off-peak period.
  final int? offPeakMinutesToWaitOnLogoff;
  /// Starting time for off-peak period.
  final TimeResponse? offPeakStartTime;
  /// The desired configuration of Start VM On Connect for the hostpool during the off-peak phase.
  final String? offPeakStartVMOnConnect;
  /// Action to be taken after a user disconnect during the peak period.
  final String? peakActionOnDisconnect;
  /// Action to be taken after a logoff during the peak period.
  final String? peakActionOnLogoff;
  /// The time in minutes to wait before performing the desired session handling action when a user disconnects during the peak period.
  final int? peakMinutesToWaitOnDisconnect;
  /// The time in minutes to wait before performing the desired session handling action when a user logs off during the peak period.
  final int? peakMinutesToWaitOnLogoff;
  /// Starting time for peak period.
  final TimeResponse? peakStartTime;
  /// The desired configuration of Start VM On Connect for the hostpool during the peak phase.
  final String? peakStartVMOnConnect;
  /// Action to be taken after a user disconnect during the ramp down period.
  final String? rampDownActionOnDisconnect;
  /// Action to be taken after a logoff during the ramp down period.
  final String? rampDownActionOnLogoff;
  /// The time in minutes to wait before performing the desired session handling action when a user disconnects during the ramp down period.
  final int? rampDownMinutesToWaitOnDisconnect;
  /// The time in minutes to wait before performing the desired session handling action when a user logs off during the ramp down period.
  final int? rampDownMinutesToWaitOnLogoff;
  /// Starting time for ramp down period.
  final TimeResponse? rampDownStartTime;
  /// The desired configuration of Start VM On Connect for the hostpool during the ramp down phase.
  final String? rampDownStartVMOnConnect;
  /// Action to be taken after a user disconnect during the ramp up period.
  final String? rampUpActionOnDisconnect;
  /// Action to be taken after a logoff during the ramp up period.
  final String? rampUpActionOnLogoff;
  /// The desired startup behavior during the ramp up period for personal vms in the hostpool.
  final String? rampUpAutoStartHosts;
  /// The time in minutes to wait before performing the desired session handling action when a user disconnects during the ramp up period.
  final int? rampUpMinutesToWaitOnDisconnect;
  /// The time in minutes to wait before performing the desired session handling action when a user logs off during the ramp up period.
  final int? rampUpMinutesToWaitOnLogoff;
  /// Starting time for ramp up period.
  final TimeResponse? rampUpStartTime;
  /// The desired configuration of Start VM On Connect for the hostpool during the ramp up phase. If this is disabled, session hosts must be turned on using rampUpAutoStartHosts or by turning them on manually.
  final String? rampUpStartVMOnConnect;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetScalingPlanPersonalScheduleResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [daysOfWeek] Set of days of the week on which this schedule is active.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
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
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetScalingPlanPersonalScheduleResult({
    required this.azureApiVersion,
    this.daysOfWeek,
    required this.id,
    required this.name,
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
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'daysOfWeek': ?daysOfWeek,
      'id': id,
      'name': name,
      'offPeakActionOnDisconnect': ?offPeakActionOnDisconnect,
      'offPeakActionOnLogoff': ?offPeakActionOnLogoff,
      'offPeakMinutesToWaitOnDisconnect': ?offPeakMinutesToWaitOnDisconnect,
      'offPeakMinutesToWaitOnLogoff': ?offPeakMinutesToWaitOnLogoff,
      'offPeakStartTime': ?offPeakStartTime == null ? null : offPeakStartTime!.toMap(),
      'offPeakStartVMOnConnect': ?offPeakStartVMOnConnect,
      'peakActionOnDisconnect': ?peakActionOnDisconnect,
      'peakActionOnLogoff': ?peakActionOnLogoff,
      'peakMinutesToWaitOnDisconnect': ?peakMinutesToWaitOnDisconnect,
      'peakMinutesToWaitOnLogoff': ?peakMinutesToWaitOnLogoff,
      'peakStartTime': ?peakStartTime == null ? null : peakStartTime!.toMap(),
      'peakStartVMOnConnect': ?peakStartVMOnConnect,
      'rampDownActionOnDisconnect': ?rampDownActionOnDisconnect,
      'rampDownActionOnLogoff': ?rampDownActionOnLogoff,
      'rampDownMinutesToWaitOnDisconnect': ?rampDownMinutesToWaitOnDisconnect,
      'rampDownMinutesToWaitOnLogoff': ?rampDownMinutesToWaitOnLogoff,
      'rampDownStartTime': ?rampDownStartTime == null ? null : rampDownStartTime!.toMap(),
      'rampDownStartVMOnConnect': ?rampDownStartVMOnConnect,
      'rampUpActionOnDisconnect': ?rampUpActionOnDisconnect,
      'rampUpActionOnLogoff': ?rampUpActionOnLogoff,
      'rampUpAutoStartHosts': ?rampUpAutoStartHosts,
      'rampUpMinutesToWaitOnDisconnect': ?rampUpMinutesToWaitOnDisconnect,
      'rampUpMinutesToWaitOnLogoff': ?rampUpMinutesToWaitOnLogoff,
      'rampUpStartTime': ?rampUpStartTime == null ? null : rampUpStartTime!.toMap(),
      'rampUpStartVMOnConnect': ?rampUpStartVMOnConnect,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetScalingPlanPersonalScheduleResult.fromMap(Map<String, dynamic> map) {
    return GetScalingPlanPersonalScheduleResult(
      azureApiVersion: map['azureApiVersion'] as String,
      daysOfWeek: map['daysOfWeek'] == null ? null : (map['daysOfWeek']! as List).cast<String>(),
      id: map['id'] as String,
      name: map['name'] as String,
      offPeakActionOnDisconnect: map['offPeakActionOnDisconnect'] == null ? null : map['offPeakActionOnDisconnect']! as String,
      offPeakActionOnLogoff: map['offPeakActionOnLogoff'] == null ? null : map['offPeakActionOnLogoff']! as String,
      offPeakMinutesToWaitOnDisconnect: map['offPeakMinutesToWaitOnDisconnect'] == null ? null : map['offPeakMinutesToWaitOnDisconnect']! as int,
      offPeakMinutesToWaitOnLogoff: map['offPeakMinutesToWaitOnLogoff'] == null ? null : map['offPeakMinutesToWaitOnLogoff']! as int,
      offPeakStartTime: map['offPeakStartTime'] == null ? null : TimeResponse.fromMap((map['offPeakStartTime']! as Map).cast<String, dynamic>()),
      offPeakStartVMOnConnect: map['offPeakStartVMOnConnect'] == null ? null : map['offPeakStartVMOnConnect']! as String,
      peakActionOnDisconnect: map['peakActionOnDisconnect'] == null ? null : map['peakActionOnDisconnect']! as String,
      peakActionOnLogoff: map['peakActionOnLogoff'] == null ? null : map['peakActionOnLogoff']! as String,
      peakMinutesToWaitOnDisconnect: map['peakMinutesToWaitOnDisconnect'] == null ? null : map['peakMinutesToWaitOnDisconnect']! as int,
      peakMinutesToWaitOnLogoff: map['peakMinutesToWaitOnLogoff'] == null ? null : map['peakMinutesToWaitOnLogoff']! as int,
      peakStartTime: map['peakStartTime'] == null ? null : TimeResponse.fromMap((map['peakStartTime']! as Map).cast<String, dynamic>()),
      peakStartVMOnConnect: map['peakStartVMOnConnect'] == null ? null : map['peakStartVMOnConnect']! as String,
      rampDownActionOnDisconnect: map['rampDownActionOnDisconnect'] == null ? null : map['rampDownActionOnDisconnect']! as String,
      rampDownActionOnLogoff: map['rampDownActionOnLogoff'] == null ? null : map['rampDownActionOnLogoff']! as String,
      rampDownMinutesToWaitOnDisconnect: map['rampDownMinutesToWaitOnDisconnect'] == null ? null : map['rampDownMinutesToWaitOnDisconnect']! as int,
      rampDownMinutesToWaitOnLogoff: map['rampDownMinutesToWaitOnLogoff'] == null ? null : map['rampDownMinutesToWaitOnLogoff']! as int,
      rampDownStartTime: map['rampDownStartTime'] == null ? null : TimeResponse.fromMap((map['rampDownStartTime']! as Map).cast<String, dynamic>()),
      rampDownStartVMOnConnect: map['rampDownStartVMOnConnect'] == null ? null : map['rampDownStartVMOnConnect']! as String,
      rampUpActionOnDisconnect: map['rampUpActionOnDisconnect'] == null ? null : map['rampUpActionOnDisconnect']! as String,
      rampUpActionOnLogoff: map['rampUpActionOnLogoff'] == null ? null : map['rampUpActionOnLogoff']! as String,
      rampUpAutoStartHosts: map['rampUpAutoStartHosts'] == null ? null : map['rampUpAutoStartHosts']! as String,
      rampUpMinutesToWaitOnDisconnect: map['rampUpMinutesToWaitOnDisconnect'] == null ? null : map['rampUpMinutesToWaitOnDisconnect']! as int,
      rampUpMinutesToWaitOnLogoff: map['rampUpMinutesToWaitOnLogoff'] == null ? null : map['rampUpMinutesToWaitOnLogoff']! as int,
      rampUpStartTime: map['rampUpStartTime'] == null ? null : TimeResponse.fromMap((map['rampUpStartTime']! as Map).cast<String, dynamic>()),
      rampUpStartVMOnConnect: map['rampUpStartVMOnConnect'] == null ? null : map['rampUpStartVMOnConnect']! as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

