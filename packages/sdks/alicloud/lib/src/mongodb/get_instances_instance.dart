// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instances_instance_mongo.dart';
import 'get_instances_instance_restore_range.dart';
import 'get_instances_instance_shard.dart';

class GetInstancesInstance {
  /// The zone ID.
  final pulumi.Input<String> availabilityZone;
  /// The billing method of the instance.
  final pulumi.Input<String> chargeType;
  /// The time when the instance was created.
  final pulumi.Input<String> creationTime;
  /// The database engine.
  final pulumi.Input<String> engine;
  /// The database engine version.
  final pulumi.Input<String> engineVersion;
  /// The time when the instance expires.
  final pulumi.Input<String> expirationTime;
  /// The instance ID.
  final pulumi.Input<String> id;
  /// The instance type.
  final pulumi.Input<String> instanceClass;
  /// The instance architecture. Default value: `replicate`. Valid values: `replicate`, `sharding`.
  final pulumi.Input<String> instanceType;
  /// The lock status of the instance.
  final pulumi.Input<String> lockMode;
  /// The mongo nodes of the instance. **Note:** `mongos` takes effect only if `instance_type` is set to `sharding`.
  final pulumi.Input<List<GetInstancesInstanceMongo>> mongos;
  /// The name of the instance.
  final pulumi.Input<String> name;
  /// The network type of the instance.
  final pulumi.Input<String> networkType;
  /// The region ID of the instance.
  final pulumi.Input<String> regionId;
  /// The number of nodes in the instance.
  final pulumi.Input<String> replication;
  /// (Available since v1.271.0) A list of time ranges available for point-in-time recovery. **Note:** `restore_ranges` takes effect only if `enable_details` is set to `true`.
  final pulumi.Input<List<GetInstancesInstanceRestoreRange>> restoreRanges;
  /// The information of the shard node. **Note:** `shards` takes effect only if `instance_type` is set to `sharding`.
  final pulumi.Input<List<GetInstancesInstanceShard>> shards;
  /// The instance status.
  final pulumi.Input<String> status;
  /// The storage space of the shard node.
  final pulumi.Input<int> storage;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>> tags;

  /// Creates a new [GetInstancesInstance].
  /// [availabilityZone] The zone ID.
  /// [chargeType] The billing method of the instance.
  /// [creationTime] The time when the instance was created.
  /// [engine] The database engine.
  /// [engineVersion] The database engine version.
  /// [expirationTime] The time when the instance expires.
  /// [id] The instance ID.
  /// [instanceClass] The instance type.
  /// [instanceType] The instance architecture. Default value: `replicate`. Valid values: `replicate`, `sharding`.
  /// [lockMode] The lock status of the instance.
  /// [mongos] The mongo nodes of the instance. **Note:** `mongos` takes effect only if `instance_type` is set to `sharding`.
  /// [name] The name of the instance.
  /// [networkType] The network type of the instance.
  /// [regionId] The region ID of the instance.
  /// [replication] The number of nodes in the instance.
  /// [restoreRanges] (Available since v1.271.0) A list of time ranges available for point-in-time recovery. **Note:** `restore_ranges` takes effect only if `enable_details` is set to `true`.
  /// [shards] The information of the shard node. **Note:** `shards` takes effect only if `instance_type` is set to `sharding`.
  /// [status] The instance status.
  /// [storage] The storage space of the shard node.
  /// [tags] A mapping of tags to assign to the resource.
  const GetInstancesInstance({
    required this.availabilityZone,
    required this.chargeType,
    required this.creationTime,
    required this.engine,
    required this.engineVersion,
    required this.expirationTime,
    required this.id,
    required this.instanceClass,
    required this.instanceType,
    required this.lockMode,
    required this.mongos,
    required this.name,
    required this.networkType,
    required this.regionId,
    required this.replication,
    required this.restoreRanges,
    required this.shards,
    required this.status,
    required this.storage,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': availabilityZone,
      'chargeType': chargeType,
      'creationTime': creationTime,
      'engine': engine,
      'engineVersion': engineVersion,
      'expirationTime': expirationTime,
      'id': id,
      'instanceClass': instanceClass,
      'instanceType': instanceType,
      'lockMode': lockMode,
      'mongos': pulumi.Input.mapInputValue<List<GetInstancesInstanceMongo>, List<Map<String, dynamic>>>(mongos, (value) => pulumi.Input.encodeList<GetInstancesInstanceMongo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'networkType': networkType,
      'regionId': regionId,
      'replication': replication,
      'restoreRanges': pulumi.Input.mapInputValue<List<GetInstancesInstanceRestoreRange>, List<Map<String, dynamic>>>(restoreRanges, (value) => pulumi.Input.encodeList<GetInstancesInstanceRestoreRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'shards': pulumi.Input.mapInputValue<List<GetInstancesInstanceShard>, List<Map<String, dynamic>>>(shards, (value) => pulumi.Input.encodeList<GetInstancesInstanceShard, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': status,
      'storage': storage,
      'tags': tags,
    };
  }

  factory GetInstancesInstance.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstance(
      availabilityZone: pulumi.Input.fromValue(map['availabilityZone'] as String),
      chargeType: pulumi.Input.fromValue(map['chargeType'] as String),
      creationTime: pulumi.Input.fromValue(map['creationTime'] as String),
      engine: pulumi.Input.fromValue(map['engine'] as String),
      engineVersion: pulumi.Input.fromValue(map['engineVersion'] as String),
      expirationTime: pulumi.Input.fromValue(map['expirationTime'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceClass: pulumi.Input.fromValue(map['instanceClass'] as String),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      lockMode: pulumi.Input.fromValue(map['lockMode'] as String),
      mongos: pulumi.Input.fromValue(pulumi.Input.decodeList<GetInstancesInstanceMongo>(map['mongos']!, (value) => GetInstancesInstanceMongo.fromMap((value as Map).cast<String, dynamic>()))),
      name: pulumi.Input.fromValue(map['name'] as String),
      networkType: pulumi.Input.fromValue(map['networkType'] as String),
      regionId: pulumi.Input.fromValue(map['regionId'] as String),
      replication: pulumi.Input.fromValue(map['replication'] as String),
      restoreRanges: pulumi.Input.fromValue(pulumi.Input.decodeList<GetInstancesInstanceRestoreRange>(map['restoreRanges']!, (value) => GetInstancesInstanceRestoreRange.fromMap((value as Map).cast<String, dynamic>()))),
      shards: pulumi.Input.fromValue(pulumi.Input.decodeList<GetInstancesInstanceShard>(map['shards']!, (value) => GetInstancesInstanceShard.fromMap((value as Map).cast<String, dynamic>()))),
      status: pulumi.Input.fromValue(map['status'] as String),
      storage: pulumi.Input.fromValue(map['storage'] as int),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
    );
  }
}

