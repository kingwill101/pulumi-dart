// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_mongo_instances_instance_mongo.dart';
import 'get_mongo_instances_instance_restore_range.dart';
import 'get_mongo_instances_instance_shard.dart';

class GetMongoInstancesInstance {
  final pulumi.Input<String> availabilityZone;
  final pulumi.Input<String> chargeType;
  final pulumi.Input<String> creationTime;
  final pulumi.Input<String> engine;
  final pulumi.Input<String> engineVersion;
  final pulumi.Input<String> expirationTime;
  final pulumi.Input<String> id;
  final pulumi.Input<String> instanceClass;
  final pulumi.Input<String> instanceType;
  final pulumi.Input<String> lockMode;
  final pulumi.Input<List<GetMongoInstancesInstanceMongo>> mongos;
  final pulumi.Input<String> name;
  final pulumi.Input<String> networkType;
  final pulumi.Input<String> regionId;
  final pulumi.Input<String> replication;
  final pulumi.Input<List<GetMongoInstancesInstanceRestoreRange>> restoreRanges;
  final pulumi.Input<List<GetMongoInstancesInstanceShard>> shards;
  final pulumi.Input<String> status;
  final pulumi.Input<int> storage;
  final pulumi.Input<Map<String, String>> tags;

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
      'mongos': pulumi.Input.mapInputValue<List<GetMongoInstancesInstanceMongo>, List<Map<String, dynamic>>>(mongos, (value) => pulumi.Input.encodeList<GetMongoInstancesInstanceMongo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'networkType': networkType,
      'regionId': regionId,
      'replication': replication,
      'restoreRanges': pulumi.Input.mapInputValue<List<GetMongoInstancesInstanceRestoreRange>, List<Map<String, dynamic>>>(restoreRanges, (value) => pulumi.Input.encodeList<GetMongoInstancesInstanceRestoreRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'shards': pulumi.Input.mapInputValue<List<GetMongoInstancesInstanceShard>, List<Map<String, dynamic>>>(shards, (value) => pulumi.Input.encodeList<GetMongoInstancesInstanceShard, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': status,
      'storage': storage,
      'tags': tags,
    };
  }

  factory GetMongoInstancesInstance.fromMap(Map<String, dynamic> map) {
    return GetMongoInstancesInstance(
      availabilityZone: (map['availabilityZone'] as String).input(),
      chargeType: (map['chargeType'] as String).input(),
      creationTime: (map['creationTime'] as String).input(),
      engine: (map['engine'] as String).input(),
      engineVersion: (map['engineVersion'] as String).input(),
      expirationTime: (map['expirationTime'] as String).input(),
      id: (map['id'] as String).input(),
      instanceClass: (map['instanceClass'] as String).input(),
      instanceType: (map['instanceType'] as String).input(),
      lockMode: (map['lockMode'] as String).input(),
      mongos: (pulumi.Input.decodeList<GetMongoInstancesInstanceMongo>(map['mongos'], (value) => GetMongoInstancesInstanceMongo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: (map['name'] as String).input(),
      networkType: (map['networkType'] as String).input(),
      regionId: (map['regionId'] as String).input(),
      replication: (map['replication'] as String).input(),
      restoreRanges: (pulumi.Input.decodeList<GetMongoInstancesInstanceRestoreRange>(map['restoreRanges'], (value) => GetMongoInstancesInstanceRestoreRange.fromMap((value as Map).cast<String, dynamic>()))).input(),
      shards: (pulumi.Input.decodeList<GetMongoInstancesInstanceShard>(map['shards'], (value) => GetMongoInstancesInstanceShard.fromMap((value as Map).cast<String, dynamic>()))).input(),
      status: (map['status'] as String).input(),
      storage: (map['storage'] as int).input(),
      tags: ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

