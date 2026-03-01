// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_address_pools_pool_address.dart';

class GetAddressPoolsPool {
  /// The first ID of the resource.
  final String addressPoolId;
  /// The name of the address pool.
  final String addressPoolName;
  /// The address lists of the Address Pool.
  final List<GetAddressPoolsPoolAddress> addresses;
  /// The time when the address pool was created.
  final String createTime;
  /// The timestamp that indicates when the address pool was created.
  final String createTimestamp;
  /// The ID of the Address Pool.
  final String id;
  /// The id of the instance.
  final String instanceId;
  /// The load balancing policy of the address pool.
  final String lbaStrategy;
  /// The ID of the health check task.
  final String monitorConfigId;
  /// Indicates whether health checks are configured.
  final String monitorStatus;
  /// The type of the address pool.
  final String type;
  /// The time when the address pool was updated.
  final String updateTime;
  /// The timestamp that indicates when the address pool was updated.
  final String updateTimestamp;

  /// Creates a new [GetAddressPoolsPool].
  /// [addressPoolId] The first ID of the resource.
  /// [addressPoolName] The name of the address pool.
  /// [addresses] The address lists of the Address Pool.
  /// [createTime] The time when the address pool was created.
  /// [createTimestamp] The timestamp that indicates when the address pool was created.
  /// [id] The ID of the Address Pool.
  /// [instanceId] The id of the instance.
  /// [lbaStrategy] The load balancing policy of the address pool.
  /// [monitorConfigId] The ID of the health check task.
  /// [monitorStatus] Indicates whether health checks are configured.
  /// [type] The type of the address pool.
  /// [updateTime] The time when the address pool was updated.
  /// [updateTimestamp] The timestamp that indicates when the address pool was updated.
  GetAddressPoolsPool({
    required this.addressPoolId,
    required this.addressPoolName,
    required this.addresses,
    required this.createTime,
    required this.createTimestamp,
    required this.id,
    required this.instanceId,
    required this.lbaStrategy,
    required this.monitorConfigId,
    required this.monitorStatus,
    required this.type,
    required this.updateTime,
    required this.updateTimestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPoolId': addressPoolId,
      'addressPoolName': addressPoolName,
      'addresses': pulumi.Input.encodeList<GetAddressPoolsPoolAddress, Map<String, dynamic>>(addresses, (value) => value.toMap()),
      'createTime': createTime,
      'createTimestamp': createTimestamp,
      'id': id,
      'instanceId': instanceId,
      'lbaStrategy': lbaStrategy,
      'monitorConfigId': monitorConfigId,
      'monitorStatus': monitorStatus,
      'type': type,
      'updateTime': updateTime,
      'updateTimestamp': updateTimestamp,
    };
  }

  factory GetAddressPoolsPool.fromMap(Map<String, dynamic> map) {
    return GetAddressPoolsPool(
      addressPoolId: map['addressPoolId'] as String,
      addressPoolName: map['addressPoolName'] as String,
      addresses: pulumi.Input.decodeList<GetAddressPoolsPoolAddress>(map['addresses'], (value) => GetAddressPoolsPoolAddress.fromMap((value as Map).cast<String, dynamic>())),
      createTime: map['createTime'] as String,
      createTimestamp: map['createTimestamp'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      lbaStrategy: map['lbaStrategy'] as String,
      monitorConfigId: map['monitorConfigId'] as String,
      monitorStatus: map['monitorStatus'] as String,
      type: map['type'] as String,
      updateTime: map['updateTime'] as String,
      updateTimestamp: map['updateTimestamp'] as String,
    );
  }
}

