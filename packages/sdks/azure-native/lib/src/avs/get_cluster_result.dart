// ignore_for_file: unused_element, unnecessary_cast

import 'sku_response.dart';
import 'system_data_response.dart';

/// Result data returned by getCluster.
class GetClusterResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The identity
  final int clusterId;
  /// The cluster size
  final int? clusterSize;
  /// The hosts
  final List<String>? hosts;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// The state of the cluster provisioning
  final String provisioningState;
  /// The SKU (Stock Keeping Unit) assigned to this resource.
  final SkuResponse sku;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Name of the vsan datastore associated with the cluster
  final String? vsanDatastoreName;

  /// Creates a new [GetClusterResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [clusterId] The identity
  /// [clusterSize] The cluster size
  /// [hosts] The hosts
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [provisioningState] The state of the cluster provisioning
  /// [sku] The SKU (Stock Keeping Unit) assigned to this resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [vsanDatastoreName] Name of the vsan datastore associated with the cluster
  const GetClusterResult({
    required this.azureApiVersion,
    required this.clusterId,
    this.clusterSize,
    this.hosts,
    required this.id,
    required this.name,
    required this.provisioningState,
    required this.sku,
    required this.systemData,
    required this.type,
    this.vsanDatastoreName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'clusterId': clusterId,
      'clusterSize': ?clusterSize,
      'hosts': ?hosts,
      'id': id,
      'name': name,
      'provisioningState': provisioningState,
      'sku': sku.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
      'vsanDatastoreName': ?vsanDatastoreName,
    };
  }

  factory GetClusterResult.fromMap(Map<String, dynamic> map) {
    return GetClusterResult(
      azureApiVersion: map['azureApiVersion'] as String,
      clusterId: map['clusterId'] as int,
      clusterSize: (() { final guardedValue = map['clusterSize']; if (guardedValue == null) return null; return guardedValue as int; })(),
      hosts: (() { final guardedValue = map['hosts']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      sku: SkuResponse.fromMap((map['sku']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      vsanDatastoreName: (() { final guardedValue = map['vsanDatastoreName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
