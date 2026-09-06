// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_view_status_response.dart';
import 'scheduled_events_policy_response.dart';
import 'sku_response.dart';
import 'sub_resource_response.dart';
import 'system_data_response.dart';
import 'virtual_machine_scale_set_migration_info_response.dart';

/// Result data returned by getAvailabilitySet.
class GetAvailabilitySetResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// Fault Domain count.
  final int? platformFaultDomainCount;
  /// Update Domain count.
  final int? platformUpdateDomainCount;
  /// Specifies information about the proximity placement group that the availability set should be assigned to. Minimum api-version: 2018-04-01.
  final SubResourceResponse? proximityPlacementGroup;
  /// Specifies Redeploy, Reboot and ScheduledEventsAdditionalPublishingTargets Scheduled Event related configurations for the availability set.
  final ScheduledEventsPolicyResponse? scheduledEventsPolicy;
  /// Sku of the availability set, only name is required to be set. See AvailabilitySetSkuTypes for possible set of values. Use 'Aligned' for virtual machines with managed disks and 'Classic' for virtual machines with unmanaged disks. Default value is 'Classic'.
  final SkuResponse? sku;
  /// The resource status information.
  final List<InstanceViewStatusResponse>? statuses;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Describes the migration properties on the Availability Set.
  final VirtualMachineScaleSetMigrationInfoResponse? virtualMachineScaleSetMigrationInfo;
  /// A list of references to all virtual machines in the availability set.
  final List<SubResourceResponse>? virtualMachines;

  /// Creates a new [GetAvailabilitySetResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [platformFaultDomainCount] Fault Domain count.
  /// [platformUpdateDomainCount] Update Domain count.
  /// [proximityPlacementGroup] Specifies information about the proximity placement group that the availability set should be assigned to. Minimum api-version: 2018-04-01.
  /// [scheduledEventsPolicy] Specifies Redeploy, Reboot and ScheduledEventsAdditionalPublishingTargets Scheduled Event related configurations for the availability set.
  /// [sku] Sku of the availability set, only name is required to be set. See AvailabilitySetSkuTypes for possible set of values. Use 'Aligned' for virtual machines with managed disks and 'Classic' for virtual machines with unmanaged disks. Default value is 'Classic'.
  /// [statuses] The resource status information.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [virtualMachineScaleSetMigrationInfo] Describes the migration properties on the Availability Set.
  /// [virtualMachines] A list of references to all virtual machines in the availability set.
  const GetAvailabilitySetResult({
    this.azureApiVersion,
    this.id,
    this.location,
    this.name,
    this.platformFaultDomainCount,
    this.platformUpdateDomainCount,
    this.proximityPlacementGroup,
    this.scheduledEventsPolicy,
    this.sku,
    this.statuses,
    this.systemData,
    this.tags,
    this.type,
    this.virtualMachineScaleSetMigrationInfo,
    this.virtualMachines,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'platformFaultDomainCount': ?platformFaultDomainCount,
      'platformUpdateDomainCount': ?platformUpdateDomainCount,
      'proximityPlacementGroup': ?proximityPlacementGroup?.toMap(),
      'scheduledEventsPolicy': ?scheduledEventsPolicy?.toMap(),
      'sku': ?sku?.toMap(),
      'statuses': ?(() { final guardedValue = statuses; if (guardedValue == null) return null; return pulumi.Input.encodeList<InstanceViewStatusResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'virtualMachineScaleSetMigrationInfo': ?virtualMachineScaleSetMigrationInfo?.toMap(),
      'virtualMachines': ?(() { final guardedValue = virtualMachines; if (guardedValue == null) return null; return pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetAvailabilitySetResult.fromMap(Map<String, dynamic> map) {
    return GetAvailabilitySetResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      platformFaultDomainCount: (() { final guardedValue = map['platformFaultDomainCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      platformUpdateDomainCount: (() { final guardedValue = map['platformUpdateDomainCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      proximityPlacementGroup: (() { final guardedValue = map['proximityPlacementGroup']; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      scheduledEventsPolicy: (() { final guardedValue = map['scheduledEventsPolicy']; if (guardedValue == null) return null; return ScheduledEventsPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      statuses: (() { final guardedValue = map['statuses']; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceViewStatusResponse>(guardedValue, (value) => InstanceViewStatusResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      virtualMachineScaleSetMigrationInfo: (() { final guardedValue = map['virtualMachineScaleSetMigrationInfo']; if (guardedValue == null) return null; return VirtualMachineScaleSetMigrationInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      virtualMachines: (() { final guardedValue = map['virtualMachines']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
