// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';
import 'time_response.dart';

/// Result data returned by getScalingPlanPersonalSchedule.
class GetScalingPlanPersonalScheduleResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Set of days of the week on which this schedule is active.
  final List<String>? daysOfWeek;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of the resource
  final String? name;
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
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
    this.azureApiVersion,
    this.daysOfWeek,
    this.id,
    this.name,
    this.offPeakActionOnDisconnect,
    this.offPeakActionOnLogoff,
    this.offPeakMinutesToWaitOnDisconnect,
    this.offPeakMinutesToWaitOnLogoff,
    this.offPeakStartTime,
    String? offPeakStartVMOnConnect,
    this.peakActionOnDisconnect,
    this.peakActionOnLogoff,
    this.peakMinutesToWaitOnDisconnect,
    this.peakMinutesToWaitOnLogoff,
    this.peakStartTime,
    String? peakStartVMOnConnect,
    this.rampDownActionOnDisconnect,
    this.rampDownActionOnLogoff,
    this.rampDownMinutesToWaitOnDisconnect,
    this.rampDownMinutesToWaitOnLogoff,
    this.rampDownStartTime,
    String? rampDownStartVMOnConnect,
    this.rampUpActionOnDisconnect,
    this.rampUpActionOnLogoff,
    this.rampUpAutoStartHosts,
    this.rampUpMinutesToWaitOnDisconnect,
    this.rampUpMinutesToWaitOnLogoff,
    this.rampUpStartTime,
    String? rampUpStartVMOnConnect,
    this.systemData,
    this.type,
  }) : offPeakStartVMOnConnect = offPeakStartVMOnConnect ?? 'Enable', peakStartVMOnConnect = peakStartVMOnConnect ?? 'Enable', rampDownStartVMOnConnect = rampDownStartVMOnConnect ?? 'Enable', rampUpStartVMOnConnect = rampUpStartVMOnConnect ?? 'Enable';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'daysOfWeek': ?daysOfWeek,
      'id': ?id,
      'name': ?name,
      'offPeakActionOnDisconnect': ?offPeakActionOnDisconnect,
      'offPeakActionOnLogoff': ?offPeakActionOnLogoff,
      'offPeakMinutesToWaitOnDisconnect': ?offPeakMinutesToWaitOnDisconnect,
      'offPeakMinutesToWaitOnLogoff': ?offPeakMinutesToWaitOnLogoff,
      'offPeakStartTime': ?offPeakStartTime?.toMap(),
      'offPeakStartVMOnConnect': ?offPeakStartVMOnConnect,
      'peakActionOnDisconnect': ?peakActionOnDisconnect,
      'peakActionOnLogoff': ?peakActionOnLogoff,
      'peakMinutesToWaitOnDisconnect': ?peakMinutesToWaitOnDisconnect,
      'peakMinutesToWaitOnLogoff': ?peakMinutesToWaitOnLogoff,
      'peakStartTime': ?peakStartTime?.toMap(),
      'peakStartVMOnConnect': ?peakStartVMOnConnect,
      'rampDownActionOnDisconnect': ?rampDownActionOnDisconnect,
      'rampDownActionOnLogoff': ?rampDownActionOnLogoff,
      'rampDownMinutesToWaitOnDisconnect': ?rampDownMinutesToWaitOnDisconnect,
      'rampDownMinutesToWaitOnLogoff': ?rampDownMinutesToWaitOnLogoff,
      'rampDownStartTime': ?rampDownStartTime?.toMap(),
      'rampDownStartVMOnConnect': ?rampDownStartVMOnConnect,
      'rampUpActionOnDisconnect': ?rampUpActionOnDisconnect,
      'rampUpActionOnLogoff': ?rampUpActionOnLogoff,
      'rampUpAutoStartHosts': ?rampUpAutoStartHosts,
      'rampUpMinutesToWaitOnDisconnect': ?rampUpMinutesToWaitOnDisconnect,
      'rampUpMinutesToWaitOnLogoff': ?rampUpMinutesToWaitOnLogoff,
      'rampUpStartTime': ?rampUpStartTime?.toMap(),
      'rampUpStartVMOnConnect': ?rampUpStartVMOnConnect,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetScalingPlanPersonalScheduleResult.fromMap(Map<String, dynamic> map) {
    return GetScalingPlanPersonalScheduleResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      daysOfWeek: (() { final guardedValue = map['daysOfWeek']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      offPeakActionOnDisconnect: (() { final guardedValue = map['offPeakActionOnDisconnect']; if (guardedValue == null) return null; return guardedValue as String; })(),
      offPeakActionOnLogoff: (() { final guardedValue = map['offPeakActionOnLogoff']; if (guardedValue == null) return null; return guardedValue as String; })(),
      offPeakMinutesToWaitOnDisconnect: (() { final guardedValue = map['offPeakMinutesToWaitOnDisconnect']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      offPeakMinutesToWaitOnLogoff: (() { final guardedValue = map['offPeakMinutesToWaitOnLogoff']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      offPeakStartTime: (() { final guardedValue = map['offPeakStartTime']; if (guardedValue == null) return null; return TimeResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      offPeakStartVMOnConnect: (() { final guardedValue = map['offPeakStartVMOnConnect']; if (guardedValue == null) return null; return guardedValue as String; })(),
      peakActionOnDisconnect: (() { final guardedValue = map['peakActionOnDisconnect']; if (guardedValue == null) return null; return guardedValue as String; })(),
      peakActionOnLogoff: (() { final guardedValue = map['peakActionOnLogoff']; if (guardedValue == null) return null; return guardedValue as String; })(),
      peakMinutesToWaitOnDisconnect: (() { final guardedValue = map['peakMinutesToWaitOnDisconnect']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      peakMinutesToWaitOnLogoff: (() { final guardedValue = map['peakMinutesToWaitOnLogoff']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      peakStartTime: (() { final guardedValue = map['peakStartTime']; if (guardedValue == null) return null; return TimeResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      peakStartVMOnConnect: (() { final guardedValue = map['peakStartVMOnConnect']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rampDownActionOnDisconnect: (() { final guardedValue = map['rampDownActionOnDisconnect']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rampDownActionOnLogoff: (() { final guardedValue = map['rampDownActionOnLogoff']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rampDownMinutesToWaitOnDisconnect: (() { final guardedValue = map['rampDownMinutesToWaitOnDisconnect']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      rampDownMinutesToWaitOnLogoff: (() { final guardedValue = map['rampDownMinutesToWaitOnLogoff']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      rampDownStartTime: (() { final guardedValue = map['rampDownStartTime']; if (guardedValue == null) return null; return TimeResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      rampDownStartVMOnConnect: (() { final guardedValue = map['rampDownStartVMOnConnect']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rampUpActionOnDisconnect: (() { final guardedValue = map['rampUpActionOnDisconnect']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rampUpActionOnLogoff: (() { final guardedValue = map['rampUpActionOnLogoff']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rampUpAutoStartHosts: (() { final guardedValue = map['rampUpAutoStartHosts']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rampUpMinutesToWaitOnDisconnect: (() { final guardedValue = map['rampUpMinutesToWaitOnDisconnect']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      rampUpMinutesToWaitOnLogoff: (() { final guardedValue = map['rampUpMinutesToWaitOnLogoff']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      rampUpStartTime: (() { final guardedValue = map['rampUpStartTime']; if (guardedValue == null) return null; return TimeResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      rampUpStartVMOnConnect: (() { final guardedValue = map['rampUpStartVMOnConnect']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
