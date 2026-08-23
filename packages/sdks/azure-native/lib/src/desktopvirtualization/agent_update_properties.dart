// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'maintenance_window_properties.dart';

/// The session host configuration for updating agent, monitoring agent, and stack component.
class AgentUpdateProperties {
  /// Time zone for maintenance as defined in https://docs.microsoft.com/en-us/dotnet/api/system.timezoneinfo.findsystemtimezonebyid?view=net-5.0. Must be set if useLocalTime is true.
  final pulumi.Input<String>? maintenanceWindowTimeZone;
  /// List of maintenance windows. Maintenance windows are 2 hours long.
  final pulumi.Input<List<MaintenanceWindowProperties>>? maintenanceWindows;
  /// The type of maintenance for session host components.
  final pulumi.Input<String>? type;
  /// Whether to use localTime of the virtual machine.
  final pulumi.Input<bool>? useSessionHostLocalTime;

  /// Creates a new [AgentUpdateProperties].
  /// [maintenanceWindowTimeZone] Time zone for maintenance as defined in https://docs.microsoft.com/en-us/dotnet/api/system.timezoneinfo.findsystemtimezonebyid?view=net-5.0. Must be set if useLocalTime is true.
  /// [maintenanceWindows] List of maintenance windows. Maintenance windows are 2 hours long.
  /// [type] The type of maintenance for session host components.
  /// [useSessionHostLocalTime] Whether to use localTime of the virtual machine.
  const AgentUpdateProperties({
    this.maintenanceWindowTimeZone,
    this.maintenanceWindows,
    this.type,
    this.useSessionHostLocalTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maintenanceWindowTimeZone': ?maintenanceWindowTimeZone,
      'maintenanceWindows': ?pulumi.Input.mapOptionalInputValue<List<MaintenanceWindowProperties>, List<Map<String, dynamic>>>(maintenanceWindows, (value) => pulumi.Input.encodeList<MaintenanceWindowProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': ?type,
      'useSessionHostLocalTime': ?useSessionHostLocalTime,
    };
  }

  factory AgentUpdateProperties.fromMap(Map<String, dynamic> map) {
    return AgentUpdateProperties(
      maintenanceWindowTimeZone: (() { final guardedValue = map['maintenanceWindowTimeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maintenanceWindows: (() { final guardedValue = map['maintenanceWindows']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MaintenanceWindowProperties>(guardedValue, (value) => MaintenanceWindowProperties.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      useSessionHostLocalTime: (() { final guardedValue = map['useSessionHostLocalTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
