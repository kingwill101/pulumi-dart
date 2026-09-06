// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getCapacityPool.
class GetCapacityPoolResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// If enabled (true) the pool can contain cool Access enabled volumes.
  final bool? coolAccess;
  /// Encryption type of the capacity pool, set encryption type for data at rest for this pool and all volumes in it. This value can only be set when creating new pool.
  final String? encryptionType;
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// UUID v4 used to identify the Pool
  final String? poolId;
  /// Azure lifecycle management
  final String? provisioningState;
  /// The qos type of the pool
  final String? qosType;
  /// The service level of the file system
  final String? serviceLevel;
  /// Provisioned size of the pool (in bytes). Allowed values are in 1TiB chunks (value must be multiple of 1099511627776).
  final double? size;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Total throughput of pool in MiB/s
  final double? totalThroughputMibps;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Utilized throughput of pool in MiB/s
  final double? utilizedThroughputMibps;

  /// Creates a new [GetCapacityPoolResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [coolAccess] If enabled (true) the pool can contain cool Access enabled volumes.
  /// [encryptionType] Encryption type of the capacity pool, set encryption type for data at rest for this pool and all volumes in it. This value can only be set when creating new pool.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [poolId] UUID v4 used to identify the Pool
  /// [provisioningState] Azure lifecycle management
  /// [qosType] The qos type of the pool
  /// [serviceLevel] The service level of the file system
  /// [size] Provisioned size of the pool (in bytes). Allowed values are in 1TiB chunks (value must be multiple of 1099511627776).
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [totalThroughputMibps] Total throughput of pool in MiB/s
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [utilizedThroughputMibps] Utilized throughput of pool in MiB/s
  GetCapacityPoolResult({
    this.azureApiVersion,
    bool? coolAccess,
    String? encryptionType,
    this.etag,
    this.id,
    this.location,
    this.name,
    this.poolId,
    this.provisioningState,
    String? qosType,
    this.serviceLevel,
    double? size,
    this.systemData,
    this.tags,
    this.totalThroughputMibps,
    this.type,
    this.utilizedThroughputMibps,
  }) : coolAccess = coolAccess ?? false, encryptionType = encryptionType ?? 'Single', qosType = qosType ?? 'Auto', size = size ?? 4.398046511104e+12;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'coolAccess': ?coolAccess,
      'encryptionType': ?encryptionType,
      'etag': ?etag,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'poolId': ?poolId,
      'provisioningState': ?provisioningState,
      'qosType': ?qosType,
      'serviceLevel': ?serviceLevel,
      'size': ?size,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'totalThroughputMibps': ?totalThroughputMibps,
      'type': ?type,
      'utilizedThroughputMibps': ?utilizedThroughputMibps,
    };
  }

  factory GetCapacityPoolResult.fromMap(Map<String, dynamic> map) {
    return GetCapacityPoolResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      coolAccess: (() { final guardedValue = map['coolAccess']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      encryptionType: (() { final guardedValue = map['encryptionType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      poolId: (() { final guardedValue = map['poolId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      qosType: (() { final guardedValue = map['qosType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceLevel: (() { final guardedValue = map['serviceLevel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      totalThroughputMibps: (() { final guardedValue = map['totalThroughputMibps']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      utilizedThroughputMibps: (() { final guardedValue = map['utilizedThroughputMibps']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
    );
  }
}
