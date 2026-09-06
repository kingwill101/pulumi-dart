// ignore_for_file: unused_element, unnecessary_cast

import 'sku_response.dart';
import 'system_data_response.dart';

/// Result data returned by getCluster.
class GetClusterResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The identity
  final int? clusterId;
  /// The cluster size
  final int? clusterSize;
  /// The hosts
  final List<String>? hosts;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of the resource
  final String? name;
  /// The state of the cluster provisioning
  final String? provisioningState;
  /// The SKU (Stock Keeping Unit) assigned to this resource.
  final SkuResponse? sku;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
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
    this.azureApiVersion,
    this.clusterId,
    this.clusterSize,
    this.hosts,
    this.id,
    this.name,
    this.provisioningState,
    this.sku,
    this.systemData,
    this.type,
    this.vsanDatastoreName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'clusterId': ?clusterId,
      'clusterSize': ?clusterSize,
      'hosts': ?hosts,
      'id': ?id,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'sku': ?sku?.toMap(),
      'systemData': ?systemData?.toMap(),
      'type': ?type,
      'vsanDatastoreName': ?vsanDatastoreName,
    };
  }

  factory GetClusterResult.fromMap(Map<String, dynamic> map) {
    return GetClusterResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clusterId: (() { final guardedValue = map['clusterId']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      clusterSize: (() { final guardedValue = map['clusterSize']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      hosts: (() { final guardedValue = map['hosts']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vsanDatastoreName: (() { final guardedValue = map['vsanDatastoreName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
