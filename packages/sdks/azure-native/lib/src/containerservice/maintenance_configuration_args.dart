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
  final pulumi.Input<String>? configName;
  /// Maintenance window for the maintenance configuration.
  final pulumi.Input<MaintenanceWindow>? maintenanceWindow;
  /// Time slots on which upgrade is not allowed.
  final pulumi.Input<List<TimeSpan>>? notAllowedTime;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the managed cluster resource.
  final pulumi.Input<String> resourceName;
  /// Time slots during the week when planned maintenance is allowed to proceed. If two array entries specify the same day of the week, the applied configuration is the union of times in both entries.
  final pulumi.Input<List<TimeInWeek>>? timeInWeek;

  /// Creates a new [MaintenanceConfigurationArgs].
  /// [configName] The name of the maintenance configuration.
  /// [maintenanceWindow] Maintenance window for the maintenance configuration.
  /// [notAllowedTime] Time slots on which upgrade is not allowed.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the managed cluster resource.
  /// [timeInWeek] Time slots during the week when planned maintenance is allowed to proceed. If two array entries specify the same day of the week, the applied configuration is the union of times in both entries.
  MaintenanceConfigurationArgs({
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
      configName: map['configName'] == null ? null : (map['configName']! as String).input(),
      maintenanceWindow: map['maintenanceWindow'] == null ? null : (MaintenanceWindow.fromMap((map['maintenanceWindow']! as Map).cast<String, dynamic>())).input(),
      notAllowedTime: map['notAllowedTime'] == null ? null : (pulumi.Input.decodeList<TimeSpan>(map['notAllowedTime']!, (value) => TimeSpan.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceName: (map['resourceName'] as String).input(),
      timeInWeek: map['timeInWeek'] == null ? null : (pulumi.Input.decodeList<TimeInWeek>(map['timeInWeek']!, (value) => TimeInWeek.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

