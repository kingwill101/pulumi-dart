// ignore_for_file: unused_element, unnecessary_cast

import 'schedule_response.dart';
import 'system_data_response.dart';

/// Result data returned by listVirtualMachineApplicableSchedules.
class ListVirtualMachineApplicableSchedulesResult {
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The auto-shutdown schedule, if one has been set at the lab or lab resource level.
  final ScheduleResponse? labVmsShutdown;
  /// The auto-startup schedule, if one has been set at the lab or lab resource level.
  final ScheduleResponse? labVmsStartup;
  /// The location of the resource.
  final String? location;
  /// The name of the resource
  final String name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The tags of the resource.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [ListVirtualMachineApplicableSchedulesResult].
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [labVmsShutdown] The auto-shutdown schedule, if one has been set at the lab or lab resource level.
  /// [labVmsStartup] The auto-startup schedule, if one has been set at the lab or lab resource level.
  /// [location] The location of the resource.
  /// [name] The name of the resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] The tags of the resource.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const ListVirtualMachineApplicableSchedulesResult({
    required this.id,
    this.labVmsShutdown,
    this.labVmsStartup,
    this.location,
    required this.name,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'labVmsShutdown': ?labVmsShutdown?.toMap(),
      'labVmsStartup': ?labVmsStartup?.toMap(),
      'location': ?location,
      'name': name,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory ListVirtualMachineApplicableSchedulesResult.fromMap(Map<String, dynamic> map) {
    return ListVirtualMachineApplicableSchedulesResult(
      id: map['id'] as String,
      labVmsShutdown: (() { final guardedValue = map['labVmsShutdown']; if (guardedValue == null) return null; return ScheduleResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      labVmsStartup: (() { final guardedValue = map['labVmsStartup']; if (guardedValue == null) return null; return ScheduleResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}
