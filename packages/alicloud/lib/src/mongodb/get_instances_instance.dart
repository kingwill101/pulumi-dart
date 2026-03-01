// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instances_instance_mongo.dart';
import 'get_instances_instance_restore_range.dart';
import 'get_instances_instance_shard.dart';

class GetInstancesInstance {
  /// The zone ID.
  final String availabilityZone;
  /// The billing method of the instance.
  final String chargeType;
  /// The time when the instance was created.
  final String creationTime;
  /// The database engine.
  final String engine;
  /// The database engine version.
  final String engineVersion;
  /// The time when the instance expires.
  final String expirationTime;
  /// The instance ID.
  final String id;
  /// The instance type.
  final String instanceClass;
  /// The instance architecture. Default value: `replicate`. Valid values: `replicate`, `sharding`.
  final String instanceType;
  /// The lock status of the instance.
  final String lockMode;
  /// The mongo nodes of the instance. **Note:** `mongos` takes effect only if `instance_type` is set to `sharding`.
  final List<GetInstancesInstanceMongo> mongos;
  /// The name of the instance.
  final String name;
  /// The network type of the instance.
  final String networkType;
  /// The region ID of the instance.
  final String regionId;
  /// The number of nodes in the instance.
  final String replication;
  /// (Available since v1.271.0) A list of time ranges available for point-in-time recovery. **Note:** `restore_ranges` takes effect only if `enable_details` is set to `true`.
  final List<GetInstancesInstanceRestoreRange> restoreRanges;
  /// The information of the shard node. **Note:** `shards` takes effect only if `instance_type` is set to `sharding`.
  final List<GetInstancesInstanceShard> shards;
  /// The instance status.
  final String status;
  /// The storage space of the shard node.
  final int storage;
  /// A mapping of tags to assign to the resource.
  final Map<String, String> tags;

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
  GetInstancesInstance({
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
      'mongos': pulumi.Input.encodeList<GetInstancesInstanceMongo, Map<String, dynamic>>(mongos, (value) => value.toMap()),
      'name': name,
      'networkType': networkType,
      'regionId': regionId,
      'replication': replication,
      'restoreRanges': pulumi.Input.encodeList<GetInstancesInstanceRestoreRange, Map<String, dynamic>>(restoreRanges, (value) => value.toMap()),
      'shards': pulumi.Input.encodeList<GetInstancesInstanceShard, Map<String, dynamic>>(shards, (value) => value.toMap()),
      'status': status,
      'storage': storage,
      'tags': tags,
    };
  }

  factory GetInstancesInstance.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstance(
      availabilityZone: map['availabilityZone'] as String,
      chargeType: map['chargeType'] as String,
      creationTime: map['creationTime'] as String,
      engine: map['engine'] as String,
      engineVersion: map['engineVersion'] as String,
      expirationTime: map['expirationTime'] as String,
      id: map['id'] as String,
      instanceClass: map['instanceClass'] as String,
      instanceType: map['instanceType'] as String,
      lockMode: map['lockMode'] as String,
      mongos: pulumi.Input.decodeList<GetInstancesInstanceMongo>(map['mongos'], (value) => GetInstancesInstanceMongo.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      networkType: map['networkType'] as String,
      regionId: map['regionId'] as String,
      replication: map['replication'] as String,
      restoreRanges: pulumi.Input.decodeList<GetInstancesInstanceRestoreRange>(map['restoreRanges'], (value) => GetInstancesInstanceRestoreRange.fromMap((value as Map).cast<String, dynamic>())),
      shards: pulumi.Input.decodeList<GetInstancesInstanceShard>(map['shards'], (value) => GetInstancesInstanceShard.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] as String,
      storage: map['storage'] as int,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

