// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'input_patch_configuration.dart';

/// {@template pulumi_maintenance_maintenance_configuration_args_doc}
/// The set of arguments for MaintenanceConfiguration.
/// {@endtemplate}
/// {@macro pulumi_maintenance_maintenance_configuration_args_doc}
class MaintenanceConfigurationArgs {
  /// Duration of the maintenance window in HH:mm format. If not provided, default value will be used based on maintenance scope provided. Example: 05:00.
  final pulumi.Input<String>? duration;
  /// Effective expiration date of the maintenance window in YYYY-MM-DD hh:mm format. The window will be created in the time zone provided and adjusted to daylight savings according to that time zone. Expiration date must be set to a future date. If not provided, it will be set to the maximum datetime 9999-12-31 23:59:59.
  final pulumi.Input<String>? expirationDateTime;
  /// Gets or sets extensionProperties of the maintenanceConfiguration
  final pulumi.Input<Map<String, String>>? extensionProperties;
  /// The input parameters to be passed to the patch run operation.
  final pulumi.Input<InputPatchConfiguration>? installPatches;
  /// Gets or sets location of the resource
  final pulumi.Input<String>? location;
  /// Gets or sets maintenanceScope of the configuration
  final pulumi.Input<String>? maintenanceScope;
  /// Gets or sets namespace of the resource
  final pulumi.Input<String>? namespace;
  /// Rate at which a Maintenance window is expected to recur. The rate can be expressed as daily, weekly, or monthly schedules. Daily schedule are formatted as recurEvery: [Frequency as integer]['Day(s)']. If no frequency is provided, the default frequency is 1. Daily schedule examples are recurEvery: Day, recurEvery: 3Days.  Weekly schedule are formatted as recurEvery: [Frequency as integer]['Week(s)'] [Optional comma separated list of weekdays Monday-Sunday]. Weekly schedule examples are recurEvery: 3Weeks, recurEvery: Week Saturday,Sunday. Monthly schedules are formatted as [Frequency as integer]['Month(s)'] [Comma separated list of month days] or [Frequency as integer]['Month(s)'] [Week of Month (First, Second, Third, Fourth, Last)] [Weekday Monday-Sunday] [Optional Offset(No. of days)]. Offset value must be between -6 to 6 inclusive. Monthly schedule examples are recurEvery: Month, recurEvery: 2Months, recurEvery: Month day23,day24, recurEvery: Month Last Sunday, recurEvery: Month Fourth Monday, recurEvery: Month Last Sunday Offset-3, recurEvery: Month Third Sunday Offset6.
  final pulumi.Input<String>? recurEvery;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the MaintenanceConfiguration
  final pulumi.Input<String>? resourceName;
  /// Effective start date of the maintenance window in YYYY-MM-DD hh:mm format. The start date can be set to either the current date or future date. The window will be created in the time zone provided and adjusted to daylight savings according to that time zone.
  final pulumi.Input<String>? startDateTime;
  /// Gets or sets tags of the resource
  final pulumi.Input<Map<String, String>>? tags;
  /// Name of the timezone. List of timezones can be obtained by executing [System.TimeZoneInfo]::GetSystemTimeZones() in PowerShell. Example: Pacific Standard Time, UTC, W. Europe Standard Time, Korea Standard Time, Cen. Australia Standard Time.
  final pulumi.Input<String>? timeZone;
  /// Gets or sets the visibility of the configuration. The default value is 'Custom'
  final pulumi.Input<String>? visibility;

  /// Creates a new [MaintenanceConfigurationArgs].
  /// [duration] Duration of the maintenance window in HH:mm format. If not provided, default value will be used based on maintenance scope provided. Example: 05:00.
  /// [expirationDateTime] Effective expiration date of the maintenance window in YYYY-MM-DD hh:mm format. The window will be created in the time zone provided and adjusted to daylight savings according to that time zone. Expiration date must be set to a future date. If not provided, it will be set to the maximum datetime 9999-12-31 23:59:59.
  /// [extensionProperties] Gets or sets extensionProperties of the maintenanceConfiguration
  /// [installPatches] The input parameters to be passed to the patch run operation.
  /// [location] Gets or sets location of the resource
  /// [maintenanceScope] Gets or sets maintenanceScope of the configuration
  /// [namespace] Gets or sets namespace of the resource
  /// [recurEvery] Rate at which a Maintenance window is expected to recur. The rate can be expressed as daily, weekly, or monthly schedules. Daily schedule are formatted as recurEvery: [Frequency as integer]['Day(s)']. If no frequency is provided, the default frequency is 1. Daily schedule examples are recurEvery: Day, recurEvery: 3Days.  Weekly schedule are formatted as recurEvery: [Frequency as integer]['Week(s)'] [Optional comma separated list of weekdays Monday-Sunday]. Weekly schedule examples are recurEvery: 3Weeks, recurEvery: Week Saturday,Sunday. Monthly schedules are formatted as [Frequency as integer]['Month(s)'] [Comma separated list of month days] or [Frequency as integer]['Month(s)'] [Week of Month (First, Second, Third, Fourth, Last)] [Weekday Monday-Sunday] [Optional Offset(No. of days)]. Offset value must be between -6 to 6 inclusive. Monthly schedule examples are recurEvery: Month, recurEvery: 2Months, recurEvery: Month day23,day24, recurEvery: Month Last Sunday, recurEvery: Month Fourth Monday, recurEvery: Month Last Sunday Offset-3, recurEvery: Month Third Sunday Offset6.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the MaintenanceConfiguration
  /// [startDateTime] Effective start date of the maintenance window in YYYY-MM-DD hh:mm format. The start date can be set to either the current date or future date. The window will be created in the time zone provided and adjusted to daylight savings according to that time zone.
  /// [tags] Gets or sets tags of the resource
  /// [timeZone] Name of the timezone. List of timezones can be obtained by executing [System.TimeZoneInfo]::GetSystemTimeZones() in PowerShell. Example: Pacific Standard Time, UTC, W. Europe Standard Time, Korea Standard Time, Cen. Australia Standard Time.
  /// [visibility] Gets or sets the visibility of the configuration. The default value is 'Custom'
  MaintenanceConfigurationArgs({
    this.duration,
    this.expirationDateTime,
    this.extensionProperties,
    this.installPatches,
    this.location,
    this.maintenanceScope,
    this.namespace,
    this.recurEvery,
    required this.resourceGroupName,
    this.resourceName,
    this.startDateTime,
    this.tags,
    this.timeZone,
    this.visibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': ?duration,
      'expirationDateTime': ?expirationDateTime,
      'extensionProperties': ?extensionProperties,
      'installPatches': ?pulumi.Input.mapOptionalInputValue<InputPatchConfiguration, Map<String, dynamic>>(installPatches, (value) => value.toMap()),
      'location': ?location,
      'maintenanceScope': ?maintenanceScope,
      'namespace': ?namespace,
      'recurEvery': ?recurEvery,
      'resourceGroupName': resourceGroupName,
      'resourceName': ?resourceName,
      'startDateTime': ?startDateTime,
      'tags': ?tags,
      'timeZone': ?timeZone,
      'visibility': ?visibility,
    };
  }

  factory MaintenanceConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return MaintenanceConfigurationArgs(
      duration: map['duration'] == null ? null : (map['duration'] as String).input(),
      expirationDateTime: map['expirationDateTime'] == null ? null : (map['expirationDateTime'] as String).input(),
      extensionProperties: map['extensionProperties'] == null ? null : ((map['extensionProperties'] as Map).cast<String, String>()).input(),
      installPatches: map['installPatches'] == null ? null : (InputPatchConfiguration.fromMap((map['installPatches'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      maintenanceScope: map['maintenanceScope'] == null ? null : (map['maintenanceScope'] as String).input(),
      namespace: map['namespace'] == null ? null : (map['namespace'] as String).input(),
      recurEvery: map['recurEvery'] == null ? null : (map['recurEvery'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceName: map['resourceName'] == null ? null : (map['resourceName'] as String).input(),
      startDateTime: map['startDateTime'] == null ? null : (map['startDateTime'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      timeZone: map['timeZone'] == null ? null : (map['timeZone'] as String).input(),
      visibility: map['visibility'] == null ? null : (map['visibility'] as String).input(),
    );
  }
}

