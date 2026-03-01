// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'maintenance_window_properties_response.dart';

/// The session host configuration for updating agent, monitoring agent, and stack component.
class AgentUpdatePropertiesResponse {
  /// Time zone for maintenance as defined in https://docs.microsoft.com/en-us/dotnet/api/system.timezoneinfo.findsystemtimezonebyid?view=net-5.0. Must be set if useLocalTime is true.
  final String? maintenanceWindowTimeZone;
  /// List of maintenance windows. Maintenance windows are 2 hours long.
  final List<MaintenanceWindowPropertiesResponse>? maintenanceWindows;
  /// The type of maintenance for session host components.
  final String? type;
  /// Whether to use localTime of the virtual machine.
  final bool? useSessionHostLocalTime;

  /// Creates a new [AgentUpdatePropertiesResponse].
  /// [maintenanceWindowTimeZone] Time zone for maintenance as defined in https://docs.microsoft.com/en-us/dotnet/api/system.timezoneinfo.findsystemtimezonebyid?view=net-5.0. Must be set if useLocalTime is true.
  /// [maintenanceWindows] List of maintenance windows. Maintenance windows are 2 hours long.
  /// [type] The type of maintenance for session host components.
  /// [useSessionHostLocalTime] Whether to use localTime of the virtual machine.
  AgentUpdatePropertiesResponse({
    this.maintenanceWindowTimeZone,
    this.maintenanceWindows,
    this.type,
    this.useSessionHostLocalTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maintenanceWindowTimeZone': ?maintenanceWindowTimeZone,
      'maintenanceWindows': ?maintenanceWindows == null ? null : pulumi.Input.encodeList<MaintenanceWindowPropertiesResponse, Map<String, dynamic>>(maintenanceWindows!, (value) => value.toMap()),
      'type': ?type,
      'useSessionHostLocalTime': ?useSessionHostLocalTime,
    };
  }

  factory AgentUpdatePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AgentUpdatePropertiesResponse(
      maintenanceWindowTimeZone: map['maintenanceWindowTimeZone'] == null ? null : map['maintenanceWindowTimeZone'] as String,
      maintenanceWindows: map['maintenanceWindows'] == null ? null : pulumi.Input.decodeList<MaintenanceWindowPropertiesResponse>(map['maintenanceWindows'], (value) => MaintenanceWindowPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : map['type'] as String,
      useSessionHostLocalTime: map['useSessionHostLocalTime'] == null ? null : map['useSessionHostLocalTime'] as bool,
    );
  }
}

