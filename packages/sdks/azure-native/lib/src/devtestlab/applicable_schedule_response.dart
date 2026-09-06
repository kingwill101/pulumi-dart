// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schedule_response.dart';
import 'system_data_response.dart';

/// Schedules applicable to a virtual machine. The schedules may have been defined on a VM or on lab level.
class ApplicableScheduleResponse {
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final pulumi.Input<String> id;
  /// The auto-shutdown schedule, if one has been set at the lab or lab resource level.
  final pulumi.Input<ScheduleResponse?>? labVmsShutdown;
  /// The auto-startup schedule, if one has been set at the lab or lab resource level.
  final pulumi.Input<ScheduleResponse?>? labVmsStartup;
  /// The location of the resource.
  final pulumi.Input<String?>? location;
  /// The name of the resource
  final pulumi.Input<String> name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final pulumi.Input<SystemDataResponse> systemData;
  /// The tags of the resource.
  final pulumi.Input<Map<String, String>?>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final pulumi.Input<String> type;

  /// Creates a new [ApplicableScheduleResponse].
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [labVmsShutdown] The auto-shutdown schedule, if one has been set at the lab or lab resource level.
  /// [labVmsStartup] The auto-startup schedule, if one has been set at the lab or lab resource level.
  /// [location] The location of the resource.
  /// [name] The name of the resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] The tags of the resource.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const ApplicableScheduleResponse({
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
      'labVmsShutdown': ?pulumi.Input.mapOptionalInputValue<ScheduleResponse, Map<String, dynamic>>(labVmsShutdown, (value) => value.toMap()),
      'labVmsStartup': ?pulumi.Input.mapOptionalInputValue<ScheduleResponse, Map<String, dynamic>>(labVmsStartup, (value) => value.toMap()),
      'location': ?location,
      'name': name,
      'systemData': pulumi.Input.mapInputValue<SystemDataResponse, Map<String, dynamic>>(systemData, (value) => value.toMap()),
      'tags': ?tags,
      'type': type,
    };
  }

  factory ApplicableScheduleResponse.fromMap(Map<String, dynamic> map) {
    return ApplicableScheduleResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
      labVmsShutdown: (() { final guardedValue = map['labVmsShutdown']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScheduleResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labVmsStartup: (() { final guardedValue = map['labVmsStartup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScheduleResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      systemData: pulumi.Input.fromValue(SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>())),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
