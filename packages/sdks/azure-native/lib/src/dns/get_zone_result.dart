// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'signing_key_response.dart';
import 'sub_resource_response.dart';
import 'system_data_response.dart';

/// Result data returned by getZone.
class GetZoneResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// The etag of the zone.
  final String? etag;

  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;

  /// The geo-location where the resource lives
  final String location;

  /// The maximum number of record sets that can be created in this DNS zone.  This is a read-only property and any attempt to set this value will be ignored.
  final double maxNumberOfRecordSets;

  /// The maximum number of records per record set that can be created in this DNS zone.  This is a read-only property and any attempt to set this value will be ignored.
  final double maxNumberOfRecordsPerRecordSet;

  /// The name of the resource
  final String name;

  /// The name servers for this DNS zone. This is a read-only property and any attempt to set this value will be ignored.
  final List<String> nameServers;

  /// The current number of record sets in this DNS zone.  This is a read-only property and any attempt to set this value will be ignored.
  final double numberOfRecordSets;

  /// A list of references to virtual networks that register hostnames in this DNS zone. This is a only when ZoneType is Private.
  final List<SubResourceResponse>? registrationVirtualNetworks;

  /// A list of references to virtual networks that resolve records in this DNS zone. This is a only when ZoneType is Private.
  final List<SubResourceResponse>? resolutionVirtualNetworks;

  /// The list of signing keys.
  final List<SigningKeyResponse> signingKeys;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// Resource tags.
  final Map<String, String>? tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// The type of this DNS zone (Public or Private).
  final String? zoneType;

  /// Creates a new [GetZoneResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] The etag of the zone.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [maxNumberOfRecordSets] The maximum number of record sets that can be created in this DNS zone.  This is a read-only property and any attempt to set this value will be ignored.
  /// [maxNumberOfRecordsPerRecordSet] The maximum number of records per record set that can be created in this DNS zone.  This is a read-only property and any attempt to set this value will be ignored.
  /// [name] The name of the resource
  /// [nameServers] The name servers for this DNS zone. This is a read-only property and any attempt to set this value will be ignored.
  /// [numberOfRecordSets] The current number of record sets in this DNS zone.  This is a read-only property and any attempt to set this value will be ignored.
  /// [registrationVirtualNetworks] A list of references to virtual networks that register hostnames in this DNS zone. This is a only when ZoneType is Private.
  /// [resolutionVirtualNetworks] A list of references to virtual networks that resolve records in this DNS zone. This is a only when ZoneType is Private.
  /// [signingKeys] The list of signing keys.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [zoneType] The type of this DNS zone (Public or Private).
  GetZoneResult({
    required this.azureApiVersion,
    this.etag,
    required this.id,
    required this.location,
    required this.maxNumberOfRecordSets,
    required this.maxNumberOfRecordsPerRecordSet,
    required this.name,
    required this.nameServers,
    required this.numberOfRecordSets,
    this.registrationVirtualNetworks,
    this.resolutionVirtualNetworks,
    required this.signingKeys,
    required this.systemData,
    this.tags,
    required this.type,
    this.zoneType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'etag': ?etag,
      'id': id,
      'location': location,
      'maxNumberOfRecordSets': maxNumberOfRecordSets,
      'maxNumberOfRecordsPerRecordSet': maxNumberOfRecordsPerRecordSet,
      'name': name,
      'nameServers': nameServers,
      'numberOfRecordSets': numberOfRecordSets,
      'registrationVirtualNetworks': ?(() {
        final guardedValue = registrationVirtualNetworks;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          SubResourceResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'resolutionVirtualNetworks': ?(() {
        final guardedValue = resolutionVirtualNetworks;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          SubResourceResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'signingKeys':
          pulumi.Input.encodeList<SigningKeyResponse, Map<String, dynamic>>(
            signingKeys,
            (value) => value.toMap(),
          ),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'zoneType': ?zoneType,
    };
  }

  factory GetZoneResult.fromMap(Map<String, dynamic> map) {
    return GetZoneResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: (() {
        final guardedValue = map['etag'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      location: map['location'] as String,
      maxNumberOfRecordSets: map['maxNumberOfRecordSets'] as double,
      maxNumberOfRecordsPerRecordSet:
          map['maxNumberOfRecordsPerRecordSet'] as double,
      name: map['name'] as String,
      nameServers: (map['nameServers'] as List).cast<String>(),
      numberOfRecordSets: map['numberOfRecordSets'] as double,
      registrationVirtualNetworks: (() {
        final guardedValue = map['registrationVirtualNetworks'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<SubResourceResponse>(
          guardedValue,
          (value) => SubResourceResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resolutionVirtualNetworks: (() {
        final guardedValue = map['resolutionVirtualNetworks'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<SubResourceResponse>(
          guardedValue,
          (value) => SubResourceResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      signingKeys: pulumi.Input.decodeList<SigningKeyResponse>(
        map['signingKeys']!,
        (value) =>
            SigningKeyResponse.fromMap((value as Map).cast<String, dynamic>()),
      ),
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      type: map['type'] as String,
      zoneType: (() {
        final guardedValue = map['zoneType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
