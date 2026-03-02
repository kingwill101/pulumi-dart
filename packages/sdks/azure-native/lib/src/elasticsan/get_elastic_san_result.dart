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
  final String azureApiVersion;
  /// Base size of the Elastic San appliance in TiB.
  final double baseSizeTiB;
  /// Extended size of the Elastic San appliance in TiB.
  final double extendedCapacitySizeTiB;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// The list of Private Endpoint Connections.
  final List<PrivateEndpointConnectionResponse> privateEndpointConnections;
  /// State of the operation on the resource.
  final String provisioningState;
  /// Allow or disallow public network access to ElasticSan. Value is optional but if passed in, must be 'Enabled' or 'Disabled'.
  final String? publicNetworkAccess;
  /// resource sku
  final SkuResponse sku;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Total Provisioned IOPS of the Elastic San appliance.
  final double totalIops;
  /// Total Provisioned MBps Elastic San appliance.
  final double totalMBps;
  /// Total size of the Elastic San appliance in TB.
  final double totalSizeTiB;
  /// Total size of the provisioned Volumes in GiB.
  final double totalVolumeSizeGiB;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Total number of volume groups in this Elastic San appliance.
  final double volumeGroupCount;

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
  GetElasticSanResult({
    this.availabilityZones,
    required this.azureApiVersion,
    required this.baseSizeTiB,
    required this.extendedCapacitySizeTiB,
    required this.id,
    required this.location,
    required this.name,
    required this.privateEndpointConnections,
    required this.provisioningState,
    this.publicNetworkAccess,
    required this.sku,
    required this.systemData,
    this.tags,
    required this.totalIops,
    required this.totalMBps,
    required this.totalSizeTiB,
    required this.totalVolumeSizeGiB,
    required this.type,
    required this.volumeGroupCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZones': ?availabilityZones,
      'azureApiVersion': azureApiVersion,
      'baseSizeTiB': baseSizeTiB,
      'extendedCapacitySizeTiB': extendedCapacitySizeTiB,
      'id': id,
      'location': location,
      'name': name,
      'privateEndpointConnections': pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(privateEndpointConnections, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'sku': sku.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'totalIops': totalIops,
      'totalMBps': totalMBps,
      'totalSizeTiB': totalSizeTiB,
      'totalVolumeSizeGiB': totalVolumeSizeGiB,
      'type': type,
      'volumeGroupCount': volumeGroupCount,
    };
  }

  factory GetElasticSanResult.fromMap(Map<String, dynamic> map) {
    return GetElasticSanResult(
      availabilityZones: map['availabilityZones'] == null ? null : (map['availabilityZones']! as List).cast<String>(),
      azureApiVersion: map['azureApiVersion'] as String,
      baseSizeTiB: map['baseSizeTiB'] as double,
      extendedCapacitySizeTiB: map['extendedCapacitySizeTiB'] as double,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      privateEndpointConnections: pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(map['privateEndpointConnections'], (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess']! as String,
      sku: SkuResponse.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      totalIops: map['totalIops'] as double,
      totalMBps: map['totalMBps'] as double,
      totalSizeTiB: map['totalSizeTiB'] as double,
      totalVolumeSizeGiB: map['totalVolumeSizeGiB'] as double,
      type: map['type'] as String,
      volumeGroupCount: map['volumeGroupCount'] as double,
    );
  }
}

