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
      mongos: pulumi.Input.fromValue(pulumi.Input.decodeList<GetMongoInstancesInstanceMongo>(map['mongos']!, (value) => GetMongoInstancesInstanceMongo.fromMap((value as Map).cast<String, dynamic>()))),
      name: pulumi.Input.fromValue(map['name'] as String),
      networkType: pulumi.Input.fromValue(map['networkType'] as String),
      regionId: pulumi.Input.fromValue(map['regionId'] as String),
      replication: pulumi.Input.fromValue(map['replication'] as String),
      restoreRanges: pulumi.Input.fromValue(pulumi.Input.decodeList<GetMongoInstancesInstanceRestoreRange>(map['restoreRanges']!, (value) => GetMongoInstancesInstanceRestoreRange.fromMap((value as Map).cast<String, dynamic>()))),
      shards: pulumi.Input.fromValue(pulumi.Input.decodeList<GetMongoInstancesInstanceShard>(map['shards']!, (value) => GetMongoInstancesInstanceShard.fromMap((value as Map).cast<String, dynamic>()))),
      status: pulumi.Input.fromValue(map['status'] as String),
      storage: pulumi.Input.fromValue(map['storage'] as int),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
    );
  }
}

