// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getCapacityPool.
class GetCapacityPoolResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// If enabled (true) the pool can contain cool Access enabled volumes.
  final bool? coolAccess;
  /// Encryption type of the capacity pool, set encryption type for data at rest for this pool and all volumes in it. This value can only be set when creating new pool.
  final String? encryptionType;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// UUID v4 used to identify the Pool
  final String poolId;
  /// Azure lifecycle management
  final String provisioningState;
  /// The qos type of the pool
  final String? qosType;
  /// The service level of the file system
  final String serviceLevel;
  /// Provisioned size of the pool (in bytes). Allowed values are in 1TiB chunks (value must be multiple of 1099511627776).
  final double size;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Total throughput of pool in MiB/s
  final double totalThroughputMibps;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Utilized throughput of pool in MiB/s
  final double utilizedThroughputMibps;

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
  const GetCapacityPoolResult({
    required this.azureApiVersion,
    this.coolAccess,
    this.encryptionType,
    required this.etag,
    required this.id,
    required this.location,
    required this.name,
    required this.poolId,
    required this.provisioningState,
    this.qosType,
    required this.serviceLevel,
    required this.size,
    required this.systemData,
    this.tags,
    required this.totalThroughputMibps,
    required this.type,
    required this.utilizedThroughputMibps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'coolAccess': ?coolAccess,
      'encryptionType': ?encryptionType,
      'etag': etag,
      'id': id,
      'location': location,
      'name': name,
      'poolId': poolId,
      'provisioningState': provisioningState,
      'qosType': ?qosType,
      'serviceLevel': serviceLevel,
      'size': size,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'totalThroughputMibps': totalThroughputMibps,
      'type': type,
      'utilizedThroughputMibps': utilizedThroughputMibps,
    };
  }

  factory GetCapacityPoolResult.fromMap(Map<String, dynamic> map) {
    return GetCapacityPoolResult(
      azureApiVersion: map['azureApiVersion'] as String,
      coolAccess: (() { final guardedValue = map['coolAccess']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      encryptionType: (() { final guardedValue = map['encryptionType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: map['etag'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      poolId: map['poolId'] as String,
      provisioningState: map['provisioningState'] as String,
      qosType: (() { final guardedValue = map['qosType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceLevel: map['serviceLevel'] as String,
      size: map['size'] as double,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      totalThroughputMibps: map['totalThroughputMibps'] as double,
      type: map['type'] as String,
      utilizedThroughputMibps: map['utilizedThroughputMibps'] as double,
    );
  }
}

