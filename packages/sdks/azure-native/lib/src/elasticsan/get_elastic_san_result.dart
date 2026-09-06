// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Result data returned by getElasticSan.
class GetElasticSanResult {
  /// Logical zone for Elastic San resource; example: ["1"].
  final List<String>? availabilityZones;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Base size of the Elastic San appliance in TiB.
  final double? baseSizeTiB;
  /// Extended size of the Elastic San appliance in TiB.
  final double? extendedCapacitySizeTiB;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// The list of Private Endpoint Connections.
  final List<PrivateEndpointConnectionResponse>? privateEndpointConnections;
  /// State of the operation on the resource.
  final String? provisioningState;
  /// Allow or disallow public network access to ElasticSan. Value is optional but if passed in, must be 'Enabled' or 'Disabled'.
  final String? publicNetworkAccess;
  /// resource sku
  final SkuResponse? sku;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Total Provisioned IOPS of the Elastic San appliance.
  final double? totalIops;
  /// Total Provisioned MBps Elastic San appliance.
  final double? totalMBps;
  /// Total size of the Elastic San appliance in TB.
  final double? totalSizeTiB;
  /// Total size of the provisioned Volumes in GiB.
  final double? totalVolumeSizeGiB;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Total number of volume groups in this Elastic San appliance.
  final double? volumeGroupCount;

  /// Creates a new [GetElasticSanResult].
  /// [availabilityZones] Logical zone for Elastic San resource; example: ["1"].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [baseSizeTiB] Base size of the Elastic San appliance in TiB.
  /// [extendedCapacitySizeTiB] Extended size of the Elastic San appliance in TiB.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [privateEndpointConnections] The list of Private Endpoint Connections.
  /// [provisioningState] State of the operation on the resource.
  /// [publicNetworkAccess] Allow or disallow public network access to ElasticSan. Value is optional but if passed in, must be 'Enabled' or 'Disabled'.
  /// [sku] resource sku
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [totalIops] Total Provisioned IOPS of the Elastic San appliance.
  /// [totalMBps] Total Provisioned MBps Elastic San appliance.
  /// [totalSizeTiB] Total size of the Elastic San appliance in TB.
  /// [totalVolumeSizeGiB] Total size of the provisioned Volumes in GiB.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [volumeGroupCount] Total number of volume groups in this Elastic San appliance.
  const GetElasticSanResult({
    this.availabilityZones,
    this.azureApiVersion,
    this.baseSizeTiB,
    this.extendedCapacitySizeTiB,
    this.id,
    this.location,
    this.name,
    this.privateEndpointConnections,
    this.provisioningState,
    this.publicNetworkAccess,
    this.sku,
    this.systemData,
    this.tags,
    this.totalIops,
    this.totalMBps,
    this.totalSizeTiB,
    this.totalVolumeSizeGiB,
    this.type,
    this.volumeGroupCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZones': ?availabilityZones,
      'azureApiVersion': ?azureApiVersion,
      'baseSizeTiB': ?baseSizeTiB,
      'extendedCapacitySizeTiB': ?extendedCapacitySizeTiB,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'privateEndpointConnections': ?(() { final guardedValue = privateEndpointConnections; if (guardedValue == null) return null; return pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'provisioningState': ?provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'sku': ?sku?.toMap(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'totalIops': ?totalIops,
      'totalMBps': ?totalMBps,
      'totalSizeTiB': ?totalSizeTiB,
      'totalVolumeSizeGiB': ?totalVolumeSizeGiB,
      'type': ?type,
      'volumeGroupCount': ?volumeGroupCount,
    };
  }

  factory GetElasticSanResult.fromMap(Map<String, dynamic> map) {
    return GetElasticSanResult(
      availabilityZones: (() { final guardedValue = map['availabilityZones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      baseSizeTiB: (() { final guardedValue = map['baseSizeTiB']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      extendedCapacitySizeTiB: (() { final guardedValue = map['extendedCapacitySizeTiB']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateEndpointConnections: (() { final guardedValue = map['privateEndpointConnections']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(guardedValue, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      totalIops: (() { final guardedValue = map['totalIops']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      totalMBps: (() { final guardedValue = map['totalMBps']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      totalSizeTiB: (() { final guardedValue = map['totalSizeTiB']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      totalVolumeSizeGiB: (() { final guardedValue = map['totalVolumeSizeGiB']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      volumeGroupCount: (() { final guardedValue = map['volumeGroupCount']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
    );
  }
}
