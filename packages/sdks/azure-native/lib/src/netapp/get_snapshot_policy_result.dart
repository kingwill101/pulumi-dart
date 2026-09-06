// ignore_for_file: unused_element, unnecessary_cast

import 'daily_schedule_response.dart';
import 'hourly_schedule_response.dart';
import 'monthly_schedule_response.dart';
import 'system_data_response.dart';
import 'weekly_schedule_response.dart';

/// Result data returned by getSnapshotPolicy.
class GetSnapshotPolicyResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Schedule for daily snapshots
  final DailyScheduleResponse? dailySchedule;
  /// The property to decide policy is enabled or not
  final bool? enabled;
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// Schedule for hourly snapshots
  final HourlyScheduleResponse? hourlySchedule;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The geo-location where the resource lives
  final String? location;
  /// Schedule for monthly snapshots
  final MonthlyScheduleResponse? monthlySchedule;
  /// The name of the resource
  final String? name;
  /// Azure lifecycle management
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Schedule for weekly snapshots
  final WeeklyScheduleResponse? weeklySchedule;

  /// Creates a new [GetSnapshotPolicyResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dailySchedule] Schedule for daily snapshots
  /// [enabled] The property to decide policy is enabled or not
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [hourlySchedule] Schedule for hourly snapshots
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [monthlySchedule] Schedule for monthly snapshots
  /// [name] The name of the resource
  /// [provisioningState] Azure lifecycle management
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [weeklySchedule] Schedule for weekly snapshots
  const GetSnapshotPolicyResult({
    this.azureApiVersion,
    this.dailySchedule,
    this.enabled,
    this.etag,
    this.hourlySchedule,
    this.id,
    this.location,
    this.monthlySchedule,
    this.name,
    this.provisioningState,
    this.systemData,
    this.tags,
    this.type,
    this.weeklySchedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'dailySchedule': ?dailySchedule?.toMap(),
      'enabled': ?enabled,
      'etag': ?etag,
      'hourlySchedule': ?hourlySchedule?.toMap(),
      'id': ?id,
      'location': ?location,
      'monthlySchedule': ?monthlySchedule?.toMap(),
      'name': ?name,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'weeklySchedule': ?weeklySchedule?.toMap(),
    };
  }

  factory GetSnapshotPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetSnapshotPolicyResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dailySchedule: (() { final guardedValue = map['dailySchedule']; if (guardedValue == null) return null; return DailyScheduleResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hourlySchedule: (() { final guardedValue = map['hourlySchedule']; if (guardedValue == null) return null; return HourlyScheduleResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      monthlySchedule: (() { final guardedValue = map['monthlySchedule']; if (guardedValue == null) return null; return MonthlyScheduleResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      weeklySchedule: (() { final guardedValue = map['weeklySchedule']; if (guardedValue == null) return null; return WeeklyScheduleResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
