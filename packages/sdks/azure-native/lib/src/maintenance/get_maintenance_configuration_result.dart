// ignore_for_file: unused_element, unnecessary_cast

import 'input_patch_configuration_response.dart';
import 'system_data_response.dart';

/// Result data returned by getMaintenanceConfiguration.
class GetMaintenanceConfigurationResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Duration of the maintenance window in HH:mm format. If not provided, default value will be used based on maintenance scope provided. Example: 05:00.
  final String? duration;
  /// Effective expiration date of the maintenance window in YYYY-MM-DD hh:mm format. The window will be created in the time zone provided and adjusted to daylight savings according to that time zone. Expiration date must be set to a future date. If not provided, it will be set to the maximum datetime 9999-12-31 23:59:59.
  final String? expirationDateTime;
  /// Gets or sets extensionProperties of the maintenanceConfiguration
  final Map<String, String>? extensionProperties;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The input parameters to be passed to the patch run operation.
  final InputPatchConfigurationResponse? installPatches;
  /// Gets or sets location of the resource
  final String? location;
  /// Gets or sets maintenanceScope of the configuration
  final String? maintenanceScope;
  /// The name of the resource
  final String? name;
  /// Gets or sets namespace of the resource
  final String? namespace;
  /// Rate at which a Maintenance window is expected to recur. The rate can be expressed as daily, weekly, or monthly schedules. Daily schedule are formatted as recurEvery: [Frequency as integer]['Day(s)']. If no frequency is provided, the default frequency is 1. Daily schedule examples are recurEvery: Day, recurEvery: 3Days.  Weekly schedule are formatted as recurEvery: [Frequency as integer]['Week(s)'] [Optional comma separated list of weekdays Monday-Sunday]. Weekly schedule examples are recurEvery: 3Weeks, recurEvery: Week Saturday,Sunday. Monthly schedules are formatted as [Frequency as integer]['Month(s)'] [Comma separated list of month days] or [Frequency as integer]['Month(s)'] [Week of Month (First, Second, Third, Fourth, Last)] [Weekday Monday-Sunday] [Optional Offset(No. of days)]. Offset value must be between -6 to 6 inclusive. Monthly schedule examples are recurEvery: Month, recurEvery: 2Months, recurEvery: Month day23,day24, recurEvery: Month Last Sunday, recurEvery: Month Fourth Monday, recurEvery: Month Last Sunday Offset-3, recurEvery: Month Third Sunday Offset6.
  final String? recurEvery;
  /// Effective start date of the maintenance window in YYYY-MM-DD hh:mm format. The start date can be set to either the current date or future date. The window will be created in the time zone provided and adjusted to daylight savings according to that time zone.
  final String? startDateTime;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Gets or sets tags of the resource
  final Map<String, String>? tags;
  /// Name of the timezone. List of timezones can be obtained by executing [System.TimeZoneInfo]::GetSystemTimeZones() in PowerShell. Example: Pacific Standard Time, UTC, W. Europe Standard Time, Korea Standard Time, Cen. Australia Standard Time.
  final String? timeZone;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
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
  const GetMaintenanceConfigurationResult({
    this.azureApiVersion,
    this.duration,
    this.expirationDateTime,
    this.extensionProperties,
    this.id,
    this.installPatches,
    this.location,
    this.maintenanceScope,
    this.name,
    this.namespace,
    this.recurEvery,
    this.startDateTime,
    this.systemData,
    this.tags,
    this.timeZone,
    this.type,
    this.visibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'duration': ?duration,
      'expirationDateTime': ?expirationDateTime,
      'extensionProperties': ?extensionProperties,
      'id': ?id,
      'installPatches': ?installPatches?.toMap(),
      'location': ?location,
      'maintenanceScope': ?maintenanceScope,
      'name': ?name,
      'namespace': ?namespace,
      'recurEvery': ?recurEvery,
      'startDateTime': ?startDateTime,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'timeZone': ?timeZone,
      'type': ?type,
      'visibility': ?visibility,
    };
  }

  factory GetMaintenanceConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetMaintenanceConfigurationResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expirationDateTime: (() { final guardedValue = map['expirationDateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      extensionProperties: (() { final guardedValue = map['extensionProperties']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      installPatches: (() { final guardedValue = map['installPatches']; if (guardedValue == null) return null; return InputPatchConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maintenanceScope: (() { final guardedValue = map['maintenanceScope']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return guardedValue as String; })(),
      recurEvery: (() { final guardedValue = map['recurEvery']; if (guardedValue == null) return null; return guardedValue as String; })(),
      startDateTime: (() { final guardedValue = map['startDateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      visibility: (() { final guardedValue = map['visibility']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
