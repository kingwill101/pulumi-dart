// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_reservation_instance_view_response.dart';
import 'sku_response.dart';
import 'sub_resource_read_only_response.dart';
import 'system_data_response.dart';

/// Result data returned by getCapacityReservation.
class GetCapacityReservationResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The Capacity reservation instance view.
  final CapacityReservationInstanceViewResponse instanceView;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Specifies the value of fault domain count that Capacity Reservation supports for requested VM size. **Note:** The fault domain count specified for a resource (like virtual machines scale set) must be less than or equal to this value if it deploys using capacity reservation. Minimum api-version: 2022-08-01.
  final int platformFaultDomainCount;
  /// The provisioning state, which only appears in the response.
  final String provisioningState;
  /// The date time when the capacity reservation was last updated.
  final String provisioningTime;
  /// A unique id generated and assigned to the capacity reservation by the platform which does not change throughout the lifetime of the resource.
  final String reservationId;
  /// SKU of the resource for which capacity needs be reserved. The SKU name and capacity is required to be set.  For Block capacity reservations, sku.capacity can only accept values 1, 2, 4, 8, 16, 32, 64. Currently VM Skus with the capability called 'CapacityReservationSupported' set to true are supported. When 'CapacityReservationSupported' is true, the SKU capability also specifies the 'SupportedCapacityReservationTypes', which lists the types of capacity reservations (such as Targeted or Block) that the SKU supports. Refer to List Microsoft.Compute SKUs in a region (https://docs.microsoft.com/rest/api/compute/resourceskus/list) for supported values.
  final SkuResponse sku;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Specifies the time at which the Capacity Reservation resource was created. Minimum api-version: 2021-11-01.
  final String timeCreated;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// A list of all virtual machine resource ids that are associated with the capacity reservation.
  final List<SubResourceReadOnlyResponse> virtualMachinesAssociated;
  /// The availability zones.
  final List<String>? zones;

  /// Creates a new [GetCapacityReservationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [instanceView] The Capacity reservation instance view.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [platformFaultDomainCount] Specifies the value of fault domain count that Capacity Reservation supports for requested VM size. **Note:** The fault domain count specified for a resource (like virtual machines scale set) must be less than or equal to this value if it deploys using capacity reservation. Minimum api-version: 2022-08-01.
  /// [provisioningState] The provisioning state, which only appears in the response.
  /// [provisioningTime] The date time when the capacity reservation was last updated.
  /// [reservationId] A unique id generated and assigned to the capacity reservation by the platform which does not change throughout the lifetime of the resource.
  /// [sku] SKU of the resource for which capacity needs be reserved. The SKU name and capacity is required to be set.  For Block capacity reservations, sku.capacity can only accept values 1, 2, 4, 8, 16, 32, 64. Currently VM Skus with the capability called 'CapacityReservationSupported' set to true are supported. When 'CapacityReservationSupported' is true, the SKU capability also specifies the 'SupportedCapacityReservationTypes', which lists the types of capacity reservations (such as Targeted or Block) that the SKU supports. Refer to List Microsoft.Compute SKUs in a region (https://docs.microsoft.com/rest/api/compute/resourceskus/list) for supported values.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [timeCreated] Specifies the time at which the Capacity Reservation resource was created. Minimum api-version: 2021-11-01.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [virtualMachinesAssociated] A list of all virtual machine resource ids that are associated with the capacity reservation.
  /// [zones] The availability zones.
  const GetCapacityReservationResult({
    required this.azureApiVersion,
    required this.id,
    required this.instanceView,
    required this.location,
    required this.name,
    required this.platformFaultDomainCount,
    required this.provisioningState,
    required this.provisioningTime,
    required this.reservationId,
    required this.sku,
    required this.systemData,
    this.tags,
    required this.timeCreated,
    required this.type,
    required this.virtualMachinesAssociated,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'instanceView': instanceView.toMap(),
      'location': location,
      'name': name,
      'platformFaultDomainCount': platformFaultDomainCount,
      'provisioningState': provisioningState,
      'provisioningTime': provisioningTime,
      'reservationId': reservationId,
      'sku': sku.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'timeCreated': timeCreated,
      'type': type,
      'virtualMachinesAssociated': pulumi.Input.encodeList<SubResourceReadOnlyResponse, Map<String, dynamic>>(virtualMachinesAssociated, (value) => value.toMap()),
      'zones': ?zones,
    };
  }

  factory GetCapacityReservationResult.fromMap(Map<String, dynamic> map) {
    return GetCapacityReservationResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      instanceView: CapacityReservationInstanceViewResponse.fromMap((map['instanceView']! as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      name: map['name'] as String,
      platformFaultDomainCount: map['platformFaultDomainCount'] as int,
      provisioningState: map['provisioningState'] as String,
      provisioningTime: map['provisioningTime'] as String,
      reservationId: map['reservationId'] as String,
      sku: SkuResponse.fromMap((map['sku']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      timeCreated: map['timeCreated'] as String,
      type: map['type'] as String,
      virtualMachinesAssociated: pulumi.Input.decodeList<SubResourceReadOnlyResponse>(map['virtualMachinesAssociated']!, (value) => SubResourceReadOnlyResponse.fromMap((value as Map).cast<String, dynamic>())),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}

