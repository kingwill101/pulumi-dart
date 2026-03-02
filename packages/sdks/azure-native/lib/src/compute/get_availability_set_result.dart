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
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
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
  final List<InstanceViewStatusResponse> statuses;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Describes the migration properties on the Availability Set.
  final VirtualMachineScaleSetMigrationInfoResponse virtualMachineScaleSetMigrationInfo;
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
  GetAvailabilitySetResult({
    required this.azureApiVersion,
    required this.id,
    required this.location,
    required this.name,
    this.platformFaultDomainCount,
    this.platformUpdateDomainCount,
    this.proximityPlacementGroup,
    this.scheduledEventsPolicy,
    this.sku,
    required this.statuses,
    required this.systemData,
    this.tags,
    required this.type,
    required this.virtualMachineScaleSetMigrationInfo,
    this.virtualMachines,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'location': location,
      'name': name,
      'platformFaultDomainCount': ?platformFaultDomainCount,
      'platformUpdateDomainCount': ?platformUpdateDomainCount,
      'proximityPlacementGroup': ?proximityPlacementGroup == null ? null : proximityPlacementGroup!.toMap(),
      'scheduledEventsPolicy': ?scheduledEventsPolicy == null ? null : scheduledEventsPolicy!.toMap(),
      'sku': ?sku == null ? null : sku!.toMap(),
      'statuses': pulumi.Input.encodeList<InstanceViewStatusResponse, Map<String, dynamic>>(statuses, (value) => value.toMap()),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'virtualMachineScaleSetMigrationInfo': virtualMachineScaleSetMigrationInfo.toMap(),
      'virtualMachines': ?virtualMachines == null ? null : pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(virtualMachines!, (value) => value.toMap()),
    };
  }

  factory GetAvailabilitySetResult.fromMap(Map<String, dynamic> map) {
    return GetAvailabilitySetResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      platformFaultDomainCount: map['platformFaultDomainCount'] == null ? null : map['platformFaultDomainCount']! as int,
      platformUpdateDomainCount: map['platformUpdateDomainCount'] == null ? null : map['platformUpdateDomainCount']! as int,
      proximityPlacementGroup: map['proximityPlacementGroup'] == null ? null : SubResourceResponse.fromMap((map['proximityPlacementGroup']! as Map).cast<String, dynamic>()),
      scheduledEventsPolicy: map['scheduledEventsPolicy'] == null ? null : ScheduledEventsPolicyResponse.fromMap((map['scheduledEventsPolicy']! as Map).cast<String, dynamic>()),
      sku: map['sku'] == null ? null : SkuResponse.fromMap((map['sku']! as Map).cast<String, dynamic>()),
      statuses: pulumi.Input.decodeList<InstanceViewStatusResponse>(map['statuses'], (value) => InstanceViewStatusResponse.fromMap((value as Map).cast<String, dynamic>())),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
      virtualMachineScaleSetMigrationInfo: VirtualMachineScaleSetMigrationInfoResponse.fromMap((map['virtualMachineScaleSetMigrationInfo'] as Map).cast<String, dynamic>()),
      virtualMachines: map['virtualMachines'] == null ? null : pulumi.Input.decodeList<SubResourceResponse>(map['virtualMachines']!, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

