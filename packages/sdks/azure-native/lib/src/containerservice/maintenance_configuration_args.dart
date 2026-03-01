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
    pulumi.Output<String>? configName,
    pulumi.Output<MaintenanceWindow>? maintenanceWindow,
    pulumi.Output<List<TimeSpan>>? notAllowedTime,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceName,
    pulumi.Output<List<TimeInWeek>>? timeInWeek,
  }) :
      configName = pulumi.Input.asOptionalInput<String>(configName),
      maintenanceWindow = pulumi.Input.asOptionalInput<MaintenanceWindow>(maintenanceWindow),
      notAllowedTime = pulumi.Input.asOptionalInput<List<TimeSpan>>(notAllowedTime),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName),
      timeInWeek = pulumi.Input.asOptionalInput<List<TimeInWeek>>(timeInWeek);

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
      configName: map['configName'] == null ? null : pulumi.Output.create<String>(map['configName'] as String),
      maintenanceWindow: map['maintenanceWindow'] == null ? null : pulumi.Output.create<MaintenanceWindow>(MaintenanceWindow.fromMap((map['maintenanceWindow'] as Map).cast<String, dynamic>())),
      notAllowedTime: map['notAllowedTime'] == null ? null : pulumi.Output.create<List<TimeSpan>>(pulumi.Input.decodeList<TimeSpan>(map['notAllowedTime'], (value) => TimeSpan.fromMap((value as Map).cast<String, dynamic>()))),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
      timeInWeek: map['timeInWeek'] == null ? null : pulumi.Output.create<List<TimeInWeek>>(pulumi.Input.decodeList<TimeInWeek>(map['timeInWeek'], (value) => TimeInWeek.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

