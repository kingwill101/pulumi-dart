// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'maintenance_window_response.dart';
import 'system_data_response.dart';
import 'time_in_week_response.dart';
import 'time_span_response.dart';

/// Result data returned by getMaintenanceConfiguration.
class GetMaintenanceConfigurationResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Resource ID.
  final String? id;
  /// Maintenance window for the maintenance configuration.
  final MaintenanceWindowResponse? maintenanceWindow;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// Time slots on which upgrade is not allowed.
  final List<TimeSpanResponse>? notAllowedTime;
  /// The system metadata relating to this resource.
  final SystemDataResponse? systemData;
  /// Time slots during the week when planned maintenance is allowed to proceed. If two array entries specify the same day of the week, the applied configuration is the union of times in both entries.
  final List<TimeInWeekResponse>? timeInWeek;
  /// Resource type
  final String? type;

  /// Creates a new [GetMaintenanceConfigurationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource ID.
  /// [maintenanceWindow] Maintenance window for the maintenance configuration.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [notAllowedTime] Time slots on which upgrade is not allowed.
  /// [systemData] The system metadata relating to this resource.
  /// [timeInWeek] Time slots during the week when planned maintenance is allowed to proceed. If two array entries specify the same day of the week, the applied configuration is the union of times in both entries.
  /// [type] Resource type
  const GetMaintenanceConfigurationResult({
    this.azureApiVersion,
    this.id,
    this.maintenanceWindow,
    this.name,
    this.notAllowedTime,
    this.systemData,
    this.timeInWeek,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'maintenanceWindow': ?maintenanceWindow?.toMap(),
      'name': ?name,
      'notAllowedTime': ?(() { final guardedValue = notAllowedTime; if (guardedValue == null) return null; return pulumi.Input.encodeList<TimeSpanResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'systemData': ?systemData?.toMap(),
      'timeInWeek': ?(() { final guardedValue = timeInWeek; if (guardedValue == null) return null; return pulumi.Input.encodeList<TimeInWeekResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'type': ?type,
    };
  }

  factory GetMaintenanceConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetMaintenanceConfigurationResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maintenanceWindow: (() { final guardedValue = map['maintenanceWindow']; if (guardedValue == null) return null; return MaintenanceWindowResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      notAllowedTime: (() { final guardedValue = map['notAllowedTime']; if (guardedValue == null) return null; return pulumi.Input.decodeList<TimeSpanResponse>(guardedValue, (value) => TimeSpanResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      timeInWeek: (() { final guardedValue = map['timeInWeek']; if (guardedValue == null) return null; return pulumi.Input.decodeList<TimeInWeekResponse>(guardedValue, (value) => TimeInWeekResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
