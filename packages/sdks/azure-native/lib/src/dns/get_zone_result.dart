// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'signing_key_response.dart';
import 'sub_resource_response.dart';
import 'system_data_response.dart';

/// Result data returned by getZone.
class GetZoneResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The etag of the zone.
  final String? etag;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The geo-location where the resource lives
  final String? location;
  /// The maximum number of record sets that can be created in this DNS zone.  This is a read-only property and any attempt to set this value will be ignored.
  final double? maxNumberOfRecordSets;
  /// The maximum number of records per record set that can be created in this DNS zone.  This is a read-only property and any attempt to set this value will be ignored.
  final double? maxNumberOfRecordsPerRecordSet;
  /// The name of the resource
  final String? name;
  /// The name servers for this DNS zone. This is a read-only property and any attempt to set this value will be ignored.
  final List<String>? nameServers;
  /// The current number of record sets in this DNS zone.  This is a read-only property and any attempt to set this value will be ignored.
  final double? numberOfRecordSets;
  /// A list of references to virtual networks that register hostnames in this DNS zone. This is a only when ZoneType is Private.
  final List<SubResourceResponse>? registrationVirtualNetworks;
  /// A list of references to virtual networks that resolve records in this DNS zone. This is a only when ZoneType is Private.
  final List<SubResourceResponse>? resolutionVirtualNetworks;
  /// The list of signing keys.
  final List<SigningKeyResponse>? signingKeys;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
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
    this.azureApiVersion,
    this.etag,
    this.id,
    this.location,
    this.maxNumberOfRecordSets,
    this.maxNumberOfRecordsPerRecordSet,
    this.name,
    this.nameServers,
    this.numberOfRecordSets,
    this.registrationVirtualNetworks,
    this.resolutionVirtualNetworks,
    this.signingKeys,
    this.systemData,
    this.tags,
    this.type,
    String? zoneType,
  }) : zoneType = zoneType ?? 'Public';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'etag': ?etag,
      'id': ?id,
      'location': ?location,
      'maxNumberOfRecordSets': ?maxNumberOfRecordSets,
      'maxNumberOfRecordsPerRecordSet': ?maxNumberOfRecordsPerRecordSet,
      'name': ?name,
      'nameServers': ?nameServers,
      'numberOfRecordSets': ?numberOfRecordSets,
      'registrationVirtualNetworks': ?(() { final guardedValue = registrationVirtualNetworks; if (guardedValue == null) return null; return pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'resolutionVirtualNetworks': ?(() { final guardedValue = resolutionVirtualNetworks; if (guardedValue == null) return null; return pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'signingKeys': ?(() { final guardedValue = signingKeys; if (guardedValue == null) return null; return pulumi.Input.encodeList<SigningKeyResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'zoneType': ?zoneType,
    };
  }

  factory GetZoneResult.fromMap(Map<String, dynamic> map) {
    return GetZoneResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxNumberOfRecordSets: (() { final guardedValue = map['maxNumberOfRecordSets']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      maxNumberOfRecordsPerRecordSet: (() { final guardedValue = map['maxNumberOfRecordsPerRecordSet']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nameServers: (() { final guardedValue = map['nameServers']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      numberOfRecordSets: (() { final guardedValue = map['numberOfRecordSets']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      registrationVirtualNetworks: (() { final guardedValue = map['registrationVirtualNetworks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      resolutionVirtualNetworks: (() { final guardedValue = map['resolutionVirtualNetworks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      signingKeys: (() { final guardedValue = map['signingKeys']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SigningKeyResponse>(guardedValue, (value) => SigningKeyResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneType: (() { final guardedValue = map['zoneType']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
