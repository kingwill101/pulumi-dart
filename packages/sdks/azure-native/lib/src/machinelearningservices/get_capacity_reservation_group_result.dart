// ignore_for_file: unused_element, unnecessary_cast

import 'capacity_reservation_group_response.dart';
import 'managed_service_identity_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Result data returned by getCapacityReservationGroup.
class GetCapacityReservationGroupResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// [Required] Additional attributes of the entity.
  final CapacityReservationGroupResponse capacityReservationGroupProperties;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Managed service identity (system assigned and/or user assigned identities)
  final ManagedServiceIdentityResponse? identity;
  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type.
  final String? kind;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Sku details required for ARM contract for Autoscaling.
  final SkuResponse? sku;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetCapacityReservationGroupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [capacityReservationGroupProperties] [Required] Additional attributes of the entity.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identity] Managed service identity (system assigned and/or user assigned identities)
  /// [kind] Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [sku] Sku details required for ARM contract for Autoscaling.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetCapacityReservationGroupResult({
    required this.azureApiVersion,
    required this.capacityReservationGroupProperties,
    required this.id,
    this.identity,
    this.kind,
    required this.location,
    required this.name,
    this.sku,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'capacityReservationGroupProperties': capacityReservationGroupProperties.toMap(),
      'id': id,
      'identity': ?identity?.toMap(),
      'kind': ?kind,
      'location': location,
      'name': name,
      'sku': ?sku?.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetCapacityReservationGroupResult.fromMap(Map<String, dynamic> map) {
    return GetCapacityReservationGroupResult(
      azureApiVersion: map['azureApiVersion'] as String,
      capacityReservationGroupProperties: CapacityReservationGroupResponse.fromMap((map['capacityReservationGroupProperties']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: map['location'] as String,
      name: map['name'] as String,
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}
