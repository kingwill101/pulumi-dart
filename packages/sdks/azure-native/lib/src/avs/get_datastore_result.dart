// ignore_for_file: unused_element, unnecessary_cast

import 'disk_pool_volume_response.dart';
import 'elastic_san_volume_response.dart';
import 'net_app_volume_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDatastore.
class GetDatastoreResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// An iSCSI volume
  final DiskPoolVolumeResponse? diskPoolVolume;
  /// An Elastic SAN volume
  final ElasticSanVolumeResponse? elasticSanVolume;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of the resource
  final String? name;
  /// An Azure NetApp Files volume
  final NetAppVolumeResponse? netAppVolume;
  /// The state of the datastore provisioning
  final String? provisioningState;
  /// The operational status of the datastore
  final String? status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetDatastoreResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [diskPoolVolume] An iSCSI volume
  /// [elasticSanVolume] An Elastic SAN volume
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [netAppVolume] An Azure NetApp Files volume
  /// [provisioningState] The state of the datastore provisioning
  /// [status] The operational status of the datastore
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetDatastoreResult({
    this.azureApiVersion,
    this.diskPoolVolume,
    this.elasticSanVolume,
    this.id,
    this.name,
    this.netAppVolume,
    this.provisioningState,
    this.status,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'diskPoolVolume': ?diskPoolVolume?.toMap(),
      'elasticSanVolume': ?elasticSanVolume?.toMap(),
      'id': ?id,
      'name': ?name,
      'netAppVolume': ?netAppVolume?.toMap(),
      'provisioningState': ?provisioningState,
      'status': ?status,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetDatastoreResult.fromMap(Map<String, dynamic> map) {
    return GetDatastoreResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      diskPoolVolume: (() { final guardedValue = map['diskPoolVolume']; if (guardedValue == null) return null; return DiskPoolVolumeResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      elasticSanVolume: (() { final guardedValue = map['elasticSanVolume']; if (guardedValue == null) return null; return ElasticSanVolumeResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      netAppVolume: (() { final guardedValue = map['netAppVolume']; if (guardedValue == null) return null; return NetAppVolumeResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
