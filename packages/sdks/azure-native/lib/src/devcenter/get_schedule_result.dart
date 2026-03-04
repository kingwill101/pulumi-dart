// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getSchedule.
class GetScheduleResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// The frequency of this scheduled task.
  final String frequency;

  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;

  /// The geo-location where the resource lives
  final String? location;

  /// The name of the resource
  final String name;

  /// The provisioning state of the resource.
  final String provisioningState;

  /// Indicates whether or not this scheduled task is enabled.
  final String? state;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// Resource tags.
  final Map<String, String>? tags;

  /// The target time to trigger the action. The format is HH:MM.
  final String time;

  /// The IANA timezone id at which the schedule should execute.
  final String timeZone;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetScheduleResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [frequency] The frequency of this scheduled task.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state of the resource.
  /// [state] Indicates whether or not this scheduled task is enabled.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [time] The target time to trigger the action. The format is HH:MM.
  /// [timeZone] The IANA timezone id at which the schedule should execute.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetScheduleResult({
    required this.azureApiVersion,
    required this.frequency,
    required this.id,
    this.location,
    required this.name,
    required this.provisioningState,
    this.state,
    required this.systemData,
    this.tags,
    required this.time,
    required this.timeZone,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'frequency': frequency,
      'id': id,
      'location': ?location,
      'name': name,
      'provisioningState': provisioningState,
      'state': ?state,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'time': time,
      'timeZone': timeZone,
      'type': type,
    };
  }

  factory GetScheduleResult.fromMap(Map<String, dynamic> map) {
    return GetScheduleResult(
      azureApiVersion: map['azureApiVersion'] as String,
      frequency: map['frequency'] as String,
      id: map['id'] as String,
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      time: map['time'] as String,
      timeZone: map['timeZone'] as String,
      type: map['type'] as String,
    );
  }
}
