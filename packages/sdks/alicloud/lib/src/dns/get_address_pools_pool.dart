// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_address_pools_pool_address.dart';

class GetAddressPoolsPool {
  /// The first ID of the resource.
  final pulumi.Input<String> addressPoolId;
  /// The name of the address pool.
  final pulumi.Input<String> addressPoolName;
  /// The address lists of the Address Pool.
  final pulumi.Input<List<GetAddressPoolsPoolAddress>> addresses;
  /// The time when the address pool was created.
  final pulumi.Input<String> createTime;
  /// The timestamp that indicates when the address pool was created.
  final pulumi.Input<String> createTimestamp;
  /// The ID of the Address Pool.
  final pulumi.Input<String> id;
  /// The id of the instance.
  final pulumi.Input<String> instanceId;
  /// The load balancing policy of the address pool.
  final pulumi.Input<String> lbaStrategy;
  /// The ID of the health check task.
  final pulumi.Input<String> monitorConfigId;
  /// Indicates whether health checks are configured.
  final pulumi.Input<String> monitorStatus;
  /// The type of the address pool.
  final pulumi.Input<String> type;
  /// The time when the address pool was updated.
  final pulumi.Input<String> updateTime;
  /// The timestamp that indicates when the address pool was updated.
  final pulumi.Input<String> updateTimestamp;

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
  const GetAddressPoolsPool({
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
      'addresses': pulumi.Input.mapInputValue<List<GetAddressPoolsPoolAddress>, List<Map<String, dynamic>>>(addresses, (value) => pulumi.Input.encodeList<GetAddressPoolsPoolAddress, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      addressPoolId: pulumi.Input.fromValue(map['addressPoolId'] as String),
      addressPoolName: pulumi.Input.fromValue(map['addressPoolName'] as String),
      addresses: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAddressPoolsPoolAddress>(map['addresses']!, (value) => GetAddressPoolsPoolAddress.fromMap((value as Map).cast<String, dynamic>()))),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      createTimestamp: pulumi.Input.fromValue(map['createTimestamp'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      lbaStrategy: pulumi.Input.fromValue(map['lbaStrategy'] as String),
      monitorConfigId: pulumi.Input.fromValue(map['monitorConfigId'] as String),
      monitorStatus: pulumi.Input.fromValue(map['monitorStatus'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      updateTime: pulumi.Input.fromValue(map['updateTime'] as String),
      updateTimestamp: pulumi.Input.fromValue(map['updateTimestamp'] as String),
    );
  }
}

