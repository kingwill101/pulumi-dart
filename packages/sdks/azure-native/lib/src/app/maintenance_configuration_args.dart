// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_entry.dart';

/// {@template pulumi_app_maintenance_configuration_args_doc}
/// The set of arguments for MaintenanceConfiguration.
/// {@endtemplate}
/// {@macro pulumi_app_maintenance_configuration_args_doc}
class MaintenanceConfigurationArgs {
  /// The name of the maintenance configuration.
  final pulumi.Input<String>? configName;
  /// The name of the Managed Environment.
  final pulumi.Input<String> environmentName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// List of maintenance schedules for a managed environment.
  final pulumi.Input<List<ScheduledEntry>> scheduledEntries;

  /// Creates a new [MaintenanceConfigurationArgs].
  /// [configName] The name of the maintenance configuration.
  /// [environmentName] The name of the Managed Environment.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scheduledEntries] List of maintenance schedules for a managed environment.
  MaintenanceConfigurationArgs({
    this.configName,
    required this.environmentName,
    required this.resourceGroupName,
    required this.scheduledEntries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configName': ?configName,
      'environmentName': environmentName,
      'resourceGroupName': resourceGroupName,
      'scheduledEntries': pulumi.Input.mapInputValue<List<ScheduledEntry>, List<Map<String, dynamic>>>(scheduledEntries, (value) => pulumi.Input.encodeList<ScheduledEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MaintenanceConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return MaintenanceConfigurationArgs(
      configName: map['configName'] == null ? null : (map['configName'] as String).input(),
      environmentName: (map['environmentName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      scheduledEntries: (pulumi.Input.decodeList<ScheduledEntry>(map['scheduledEntries'], (value) => ScheduledEntry.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

