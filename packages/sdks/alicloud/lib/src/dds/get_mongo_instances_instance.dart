// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_mongo_instances_instance_mongo.dart';
import 'get_mongo_instances_instance_restore_range.dart';
import 'get_mongo_instances_instance_shard.dart';

class GetMongoInstancesInstance {
  final String availabilityZone;
  final String chargeType;
  final String creationTime;
  final String engine;
  final String engineVersion;
  final String expirationTime;
  final String id;
  final String instanceClass;
  final String instanceType;
  final String lockMode;
  final List<GetMongoInstancesInstanceMongo> mongos;
  final String name;
  final String networkType;
  final String regionId;
  final String replication;
  final List<GetMongoInstancesInstanceRestoreRange> restoreRanges;
  final List<GetMongoInstancesInstanceShard> shards;
  final String status;
  final int storage;
  final Map<String, String> tags;

  /// Creates a new [GetMongoInstancesInstance].
  /// [availabilityZone] Required.
  /// [chargeType] Required.
  /// [creationTime] Required.
  /// [engine] Required.
  /// [engineVersion] Required.
  /// [expirationTime] Required.
  /// [id] Required.
  /// [instanceClass] Required.
  /// [instanceType] Required.
  /// [lockMode] Required.
  /// [mongos] Required.
  /// [name] Required.
  /// [networkType] Required.
  /// [regionId] Required.
  /// [replication] Required.
  /// [restoreRanges] Required.
  /// [shards] Required.
  /// [status] Required.
  /// [storage] Required.
  /// [tags] Required.
  GetMongoInstancesInstance({
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
      'mongos': pulumi.Input.encodeList<GetMongoInstancesInstanceMongo, Map<String, dynamic>>(mongos, (value) => value.toMap()),
      'name': name,
      'networkType': networkType,
      'regionId': regionId,
      'replication': replication,
      'restoreRanges': pulumi.Input.encodeList<GetMongoInstancesInstanceRestoreRange, Map<String, dynamic>>(restoreRanges, (value) => value.toMap()),
      'shards': pulumi.Input.encodeList<GetMongoInstancesInstanceShard, Map<String, dynamic>>(shards, (value) => value.toMap()),
      'status': status,
      'storage': storage,
      'tags': tags,
    };
  }

  factory GetMongoInstancesInstance.fromMap(Map<String, dynamic> map) {
    return GetMongoInstancesInstance(
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
      mongos: pulumi.Input.decodeList<GetMongoInstancesInstanceMongo>(map['mongos'], (value) => GetMongoInstancesInstanceMongo.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      networkType: map['networkType'] as String,
      regionId: map['regionId'] as String,
      replication: map['replication'] as String,
      restoreRanges: pulumi.Input.decodeList<GetMongoInstancesInstanceRestoreRange>(map['restoreRanges'], (value) => GetMongoInstancesInstanceRestoreRange.fromMap((value as Map).cast<String, dynamic>())),
      shards: pulumi.Input.decodeList<GetMongoInstancesInstanceShard>(map['shards'], (value) => GetMongoInstancesInstanceShard.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] as String,
      storage: map['storage'] as int,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

