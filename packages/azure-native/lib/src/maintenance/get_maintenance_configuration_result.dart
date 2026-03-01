// ignore_for_file: unused_element, unnecessary_cast

import 'input_patch_configuration_response.dart';
import 'system_data_response.dart';

/// Result data returned by getMaintenanceConfiguration.
class GetMaintenanceConfigurationResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Duration of the maintenance window in HH:mm format. If not provided, default value will be used based on maintenance scope provided. Example: 05:00.
  final String? duration;
  /// Effective expiration date of the maintenance window in YYYY-MM-DD hh:mm format. The window will be created in the time zone provided and adjusted to daylight savings according to that time zone. Expiration date must be set to a future date. If not provided, it will be set to the maximum datetime 9999-12-31 23:59:59.
  final String? expirationDateTime;
  /// Gets or sets extensionProperties of the maintenanceConfiguration
  final Map<String, String>? extensionProperties;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The input parameters to be passed to the patch run operation.
  final InputPatchConfigurationResponse? installPatches;
  /// Gets or sets location of the resource
  final String? location;
  /// Gets or sets maintenanceScope of the configuration
  final String? maintenanceScope;
  /// The name of the resource
  final String name;
  /// Gets or sets namespace of the resource
  final String? namespace;
  /// Rate at which a Maintenance window is expected to recur. The rate can be expressed as daily, weekly, or monthly schedules. Daily schedule are formatted as recurEvery: [Frequency as integer]['Day(s)']. If no frequency is provided, the default frequency is 1. Daily schedule examples are recurEvery: Day, recurEvery: 3Days.  Weekly schedule are formatted as recurEvery: [Frequency as integer]['Week(s)'] [Optional comma separated list of weekdays Monday-Sunday]. Weekly schedule examples are recurEvery: 3Weeks, recurEvery: Week Saturday,Sunday. Monthly schedules are formatted as [Frequency as integer]['Month(s)'] [Comma separated list of month days] or [Frequency as integer]['Month(s)'] [Week of Month (First, Second, Third, Fourth, Last)] [Weekday Monday-Sunday] [Optional Offset(No. of days)]. Offset value must be between -6 to 6 inclusive. Monthly schedule examples are recurEvery: Month, recurEvery: 2Months, recurEvery: Month day23,day24, recurEvery: Month Last Sunday, recurEvery: Month Fourth Monday, recurEvery: Month Last Sunday Offset-3, recurEvery: Month Third Sunday Offset6.
  final String? recurEvery;
  /// Effective start date of the maintenance window in YYYY-MM-DD hh:mm format. The start date can be set to either the current date or future date. The window will be created in the time zone provided and adjusted to daylight savings according to that time zone.
  final String? startDateTime;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Gets or sets tags of the resource
  final Map<String, String>? tags;
  /// Name of the timezone. List of timezones can be obtained by executing [System.TimeZoneInfo]::GetSystemTimeZones() in PowerShell. Example: Pacific Standard Time, UTC, W. Europe Standard Time, Korea Standard Time, Cen. Australia Standard Time.
  final String? timeZone;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Gets or sets the visibility of the configuration. The default value is 'Custom'
  final String? visibility;

  /// Creates a new [GetMaintenanceConfigurationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [duration] Duration of the maintenance window in HH:mm format. If not provided, default value will be used based on maintenance scope provided. Example: 05:00.
  /// [expirationDateTime] Effective expiration date of the maintenance window in YYYY-MM-DD hh:mm format. The window will be created in the time zone provided and adjusted to daylight savings according to that time zone. Expiration date must be set to a future date. If not provided, it will be set to the maximum datetime 9999-12-31 23:59:59.
  /// [extensionProperties] Gets or sets extensionProperties of the maintenanceConfiguration
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [installPatches] The input parameters to be passed to the patch run operation.
  /// [location] Gets or sets location of the resource
  /// [maintenanceScope] Gets or sets maintenanceScope of the configuration
  /// [name] The name of the resource
  /// [namespace] Gets or sets namespace of the resource
  /// [recurEvery] Rate at which a Maintenance window is expected to recur. The rate can be expressed as daily, weekly, or monthly schedules. Daily schedule are formatted as recurEvery: [Frequency as integer]['Day(s)']. If no frequency is provided, the default frequency is 1. Daily schedule examples are recurEvery: Day, recurEvery: 3Days.  Weekly schedule are formatted as recurEvery: [Frequency as integer]['Week(s)'] [Optional comma separated list of weekdays Monday-Sunday]. Weekly schedule examples are recurEvery: 3Weeks, recurEvery: Week Saturday,Sunday. Monthly schedules are formatted as [Frequency as integer]['Month(s)'] [Comma separated list of month days] or [Frequency as integer]['Month(s)'] [Week of Month (First, Second, Third, Fourth, Last)] [Weekday Monday-Sunday] [Optional Offset(No. of days)]. Offset value must be between -6 to 6 inclusive. Monthly schedule examples are recurEvery: Month, recurEvery: 2Months, recurEvery: Month day23,day24, recurEvery: Month Last Sunday, recurEvery: Month Fourth Monday, recurEvery: Month Last Sunday Offset-3, recurEvery: Month Third Sunday Offset6.
  /// [startDateTime] Effective start date of the maintenance window in YYYY-MM-DD hh:mm format. The start date can be set to either the current date or future date. The window will be created in the time zone provided and adjusted to daylight savings according to that time zone.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Gets or sets tags of the resource
  /// [timeZone] Name of the timezone. List of timezones can be obtained by executing [System.TimeZoneInfo]::GetSystemTimeZones() in PowerShell. Example: Pacific Standard Time, UTC, W. Europe Standard Time, Korea Standard Time, Cen. Australia Standard Time.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [visibility] Gets or sets the visibility of the configuration. The default value is 'Custom'
  GetMaintenanceConfigurationResult({
    required this.azureApiVersion,
    this.duration,
    this.expirationDateTime,
    this.extensionProperties,
    required this.id,
    this.installPatches,
    this.location,
    this.maintenanceScope,
    required this.name,
    this.namespace,
    this.recurEvery,
    this.startDateTime,
    required this.systemData,
    this.tags,
    this.timeZone,
    required this.type,
    this.visibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'duration': ?duration,
      'expirationDateTime': ?expirationDateTime,
      'extensionProperties': ?extensionProperties,
      'id': id,
      'installPatches': ?installPatches == null ? null : installPatches!.toMap(),
      'location': ?location,
      'maintenanceScope': ?maintenanceScope,
      'name': name,
      'namespace': ?namespace,
      'recurEvery': ?recurEvery,
      'startDateTime': ?startDateTime,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'timeZone': ?timeZone,
      'type': type,
      'visibility': ?visibility,
    };
  }

  factory GetMaintenanceConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetMaintenanceConfigurationResult(
      azureApiVersion: map['azureApiVersion'] as String,
      duration: map['duration'] == null ? null : map['duration'] as String,
      expirationDateTime: map['expirationDateTime'] == null ? null : map['expirationDateTime'] as String,
      extensionProperties: map['extensionProperties'] == null ? null : (map['extensionProperties'] as Map).cast<String, String>(),
      id: map['id'] as String,
      installPatches: map['installPatches'] == null ? null : InputPatchConfigurationResponse.fromMap((map['installPatches'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      maintenanceScope: map['maintenanceScope'] == null ? null : map['maintenanceScope'] as String,
      name: map['name'] as String,
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
      recurEvery: map['recurEvery'] == null ? null : map['recurEvery'] as String,
      startDateTime: map['startDateTime'] == null ? null : map['startDateTime'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      timeZone: map['timeZone'] == null ? null : map['timeZone'] as String,
      type: map['type'] as String,
      visibility: map['visibility'] == null ? null : map['visibility'] as String,
    );
  }
}

