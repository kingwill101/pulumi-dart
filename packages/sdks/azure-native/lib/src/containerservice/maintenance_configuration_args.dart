// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'maintenance_window.dart';
import 'time_in_week.dart';
import 'time_span.dart';

/// {@template pulumi_containerservice_maintenance_configuration_args_doc}
/// The set of arguments for MaintenanceConfiguration.
/// {@endtemplate}
/// {@macro pulumi_containerservice_maintenance_configuration_args_doc}
class MaintenanceConfigurationArgs {
  /// The name of the maintenance configuration.
  final pulumi.Input<String?>? configName;
  /// Maintenance window for the maintenance configuration.
  final pulumi.Input<MaintenanceWindow?>? maintenanceWindow;
  /// Time slots on which upgrade is not allowed.
  final pulumi.Input<List<TimeSpan>?>? notAllowedTime;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the managed cluster resource.
  final pulumi.Input<String> resourceName;
  /// Time slots during the week when planned maintenance is allowed to proceed. If two array entries specify the same day of the week, the applied configuration is the union of times in both entries.
  final pulumi.Input<List<TimeInWeek>?>? timeInWeek;

  /// Creates a new [MaintenanceConfigurationArgs].
  /// [configName] The name of the maintenance configuration.
  /// [maintenanceWindow] Maintenance window for the maintenance configuration.
  /// [notAllowedTime] Time slots on which upgrade is not allowed.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the managed cluster resource.
  /// [timeInWeek] Time slots during the week when planned maintenance is allowed to proceed. If two array entries specify the same day of the week, the applied configuration is the union of times in both entries.
  const MaintenanceConfigurationArgs({
    this.configName,
    this.maintenanceWindow,
    this.notAllowedTime,
    required this.resourceGroupName,
    required this.resourceName,
    this.timeInWeek,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configName': ?configName,
      'maintenanceWindow': ?pulumi.Input.mapOptionalInputValue<MaintenanceWindow, Map<String, dynamic>>(maintenanceWindow, (value) => value.toMap()),
      'notAllowedTime': ?pulumi.Input.mapOptionalInputValue<List<TimeSpan>, List<Map<String, dynamic>>>(notAllowedTime, (value) => pulumi.Input.encodeList<TimeSpan, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
      'timeInWeek': ?pulumi.Input.mapOptionalInputValue<List<TimeInWeek>, List<Map<String, dynamic>>>(timeInWeek, (value) => pulumi.Input.encodeList<TimeInWeek, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MaintenanceConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return MaintenanceConfigurationArgs(
      configName: (() { final guardedValue = map['configName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maintenanceWindow: (() { final guardedValue = map['maintenanceWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MaintenanceWindow.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      notAllowedTime: (() { final guardedValue = map['notAllowedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TimeSpan>(guardedValue, (value) => TimeSpan.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
      timeInWeek: (() { final guardedValue = map['timeInWeek']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TimeInWeek>(guardedValue, (value) => TimeInWeek.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
