// ignore_for_file: unused_element, unnecessary_cast

import 'daily_schedule_response.dart';
import 'hourly_schedule_response.dart';
import 'monthly_schedule_response.dart';
import 'system_data_response.dart';
import 'weekly_schedule_response.dart';

/// Result data returned by getSnapshotPolicy.
class GetSnapshotPolicyResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Schedule for daily snapshots
  final DailyScheduleResponse? dailySchedule;
  /// The property to decide policy is enabled or not
  final bool? enabled;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Schedule for hourly snapshots
  final HourlyScheduleResponse? hourlySchedule;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// Schedule for monthly snapshots
  final MonthlyScheduleResponse? monthlySchedule;
  /// The name of the resource
  final String name;
  /// Azure lifecycle management
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
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
  GetSnapshotPolicyResult({
    required this.azureApiVersion,
    this.dailySchedule,
    this.enabled,
    required this.etag,
    this.hourlySchedule,
    required this.id,
    required this.location,
    this.monthlySchedule,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
    this.weeklySchedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'dailySchedule': ?dailySchedule == null ? null : dailySchedule!.toMap(),
      'enabled': ?enabled,
      'etag': etag,
      'hourlySchedule': ?hourlySchedule == null ? null : hourlySchedule!.toMap(),
      'id': id,
      'location': location,
      'monthlySchedule': ?monthlySchedule == null ? null : monthlySchedule!.toMap(),
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'weeklySchedule': ?weeklySchedule == null ? null : weeklySchedule!.toMap(),
    };
  }

  factory GetSnapshotPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetSnapshotPolicyResult(
      azureApiVersion: map['azureApiVersion'] as String,
      dailySchedule: map['dailySchedule'] == null ? null : DailyScheduleResponse.fromMap((map['dailySchedule'] as Map).cast<String, dynamic>()),
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      etag: map['etag'] as String,
      hourlySchedule: map['hourlySchedule'] == null ? null : HourlyScheduleResponse.fromMap((map['hourlySchedule'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      location: map['location'] as String,
      monthlySchedule: map['monthlySchedule'] == null ? null : MonthlyScheduleResponse.fromMap((map['monthlySchedule'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      weeklySchedule: map['weeklySchedule'] == null ? null : WeeklyScheduleResponse.fromMap((map['weeklySchedule'] as Map).cast<String, dynamic>()),
    );
  }
}

