// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getPrivateZone.
class GetPrivateZoneResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The ETag of the zone.
  final String? etag;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Private zone internal Id
  final String internalId;
  /// The Azure Region where the resource lives
  final String? location;
  /// The maximum number of record sets that can be created in this Private DNS zone. This is a read-only property and any attempt to set this value will be ignored.
  final double maxNumberOfRecordSets;
  /// The maximum number of virtual networks that can be linked to this Private DNS zone. This is a read-only property and any attempt to set this value will be ignored.
  final double maxNumberOfVirtualNetworkLinks;
  /// The maximum number of virtual networks that can be linked to this Private DNS zone with registration enabled. This is a read-only property and any attempt to set this value will be ignored.
  final double maxNumberOfVirtualNetworkLinksWithRegistration;
  /// The name of the resource
  final String name;
  /// The current number of record sets in this Private DNS zone. This is a read-only property and any attempt to set this value will be ignored.
  final double numberOfRecordSets;
  /// The current number of virtual networks that are linked to this Private DNS zone. This is a read-only property and any attempt to set this value will be ignored.
  final double numberOfVirtualNetworkLinks;
  /// The current number of virtual networks that are linked to this Private DNS zone with registration enabled. This is a read-only property and any attempt to set this value will be ignored.
  final double numberOfVirtualNetworkLinksWithRegistration;
  /// The provisioning state of the resource. This is a read-only property and any attempt to set this value will be ignored.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetPrivateZoneResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] The ETag of the zone.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [internalId] Private zone internal Id
  /// [location] The Azure Region where the resource lives
  /// [maxNumberOfRecordSets] The maximum number of record sets that can be created in this Private DNS zone. This is a read-only property and any attempt to set this value will be ignored.
  /// [maxNumberOfVirtualNetworkLinks] The maximum number of virtual networks that can be linked to this Private DNS zone. This is a read-only property and any attempt to set this value will be ignored.
  /// [maxNumberOfVirtualNetworkLinksWithRegistration] The maximum number of virtual networks that can be linked to this Private DNS zone with registration enabled. This is a read-only property and any attempt to set this value will be ignored.
  /// [name] The name of the resource
  /// [numberOfRecordSets] The current number of record sets in this Private DNS zone. This is a read-only property and any attempt to set this value will be ignored.
  /// [numberOfVirtualNetworkLinks] The current number of virtual networks that are linked to this Private DNS zone. This is a read-only property and any attempt to set this value will be ignored.
  /// [numberOfVirtualNetworkLinksWithRegistration] The current number of virtual networks that are linked to this Private DNS zone with registration enabled. This is a read-only property and any attempt to set this value will be ignored.
  /// [provisioningState] The provisioning state of the resource. This is a read-only property and any attempt to set this value will be ignored.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetPrivateZoneResult({
    required this.azureApiVersion,
    this.etag,
    required this.id,
    required this.internalId,
    this.location,
    required this.maxNumberOfRecordSets,
    required this.maxNumberOfVirtualNetworkLinks,
    required this.maxNumberOfVirtualNetworkLinksWithRegistration,
    required this.name,
    required this.numberOfRecordSets,
    required this.numberOfVirtualNetworkLinks,
    required this.numberOfVirtualNetworkLinksWithRegistration,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'etag': ?etag,
      'id': id,
      'internalId': internalId,
      'location': ?location,
      'maxNumberOfRecordSets': maxNumberOfRecordSets,
      'maxNumberOfVirtualNetworkLinks': maxNumberOfVirtualNetworkLinks,
      'maxNumberOfVirtualNetworkLinksWithRegistration': maxNumberOfVirtualNetworkLinksWithRegistration,
      'name': name,
      'numberOfRecordSets': numberOfRecordSets,
      'numberOfVirtualNetworkLinks': numberOfVirtualNetworkLinks,
      'numberOfVirtualNetworkLinksWithRegistration': numberOfVirtualNetworkLinksWithRegistration,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetPrivateZoneResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateZoneResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      id: map['id'] as String,
      internalId: map['internalId'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      maxNumberOfRecordSets: map['maxNumberOfRecordSets'] as double,
      maxNumberOfVirtualNetworkLinks: map['maxNumberOfVirtualNetworkLinks'] as double,
      maxNumberOfVirtualNetworkLinksWithRegistration: map['maxNumberOfVirtualNetworkLinksWithRegistration'] as double,
      name: map['name'] as String,
      numberOfRecordSets: map['numberOfRecordSets'] as double,
      numberOfVirtualNetworkLinks: map['numberOfVirtualNetworkLinks'] as double,
      numberOfVirtualNetworkLinksWithRegistration: map['numberOfVirtualNetworkLinksWithRegistration'] as double,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

