// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'maintenance_window_response.dart';
import 'system_data_response.dart';
import 'time_in_week_response.dart';
import 'time_span_response.dart';

/// Result data returned by getMaintenanceConfiguration.
class GetMaintenanceConfigurationResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Resource ID.
  final String id;
  /// Maintenance window for the maintenance configuration.
  final MaintenanceWindowResponse? maintenanceWindow;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String name;
  /// Time slots on which upgrade is not allowed.
  final List<TimeSpanResponse>? notAllowedTime;
  /// The system metadata relating to this resource.
  final SystemDataResponse systemData;
  /// Time slots during the week when planned maintenance is allowed to proceed. If two array entries specify the same day of the week, the applied configuration is the union of times in both entries.
  final List<TimeInWeekResponse>? timeInWeek;
  /// Resource type
  final String type;

  /// Creates a new [GetMaintenanceConfigurationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource ID.
  /// [maintenanceWindow] Maintenance window for the maintenance configuration.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [notAllowedTime] Time slots on which upgrade is not allowed.
  /// [systemData] The system metadata relating to this resource.
  /// [timeInWeek] Time slots during the week when planned maintenance is allowed to proceed. If two array entries specify the same day of the week, the applied configuration is the union of times in both entries.
  /// [type] Resource type
  GetMaintenanceConfigurationResult({
    required this.azureApiVersion,
    required this.id,
    this.maintenanceWindow,
    required this.name,
    this.notAllowedTime,
    required this.systemData,
    this.timeInWeek,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'maintenanceWindow': ?maintenanceWindow == null ? null : maintenanceWindow!.toMap(),
      'name': name,
      'notAllowedTime': ?notAllowedTime == null ? null : pulumi.Input.encodeList<TimeSpanResponse, Map<String, dynamic>>(notAllowedTime!, (value) => value.toMap()),
      'systemData': systemData.toMap(),
      'timeInWeek': ?timeInWeek == null ? null : pulumi.Input.encodeList<TimeInWeekResponse, Map<String, dynamic>>(timeInWeek!, (value) => value.toMap()),
      'type': type,
    };
  }

  factory GetMaintenanceConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetMaintenanceConfigurationResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      maintenanceWindow: map['maintenanceWindow'] == null ? null : MaintenanceWindowResponse.fromMap((map['maintenanceWindow']! as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      notAllowedTime: map['notAllowedTime'] == null ? null : pulumi.Input.decodeList<TimeSpanResponse>(map['notAllowedTime']!, (value) => TimeSpanResponse.fromMap((value as Map).cast<String, dynamic>())),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      timeInWeek: map['timeInWeek'] == null ? null : pulumi.Input.decodeList<TimeInWeekResponse>(map['timeInWeek']!, (value) => TimeInWeekResponse.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}

