// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_table_attribute.dart';
import 'get_table_global_secondary_index.dart';
import 'get_table_local_secondary_index.dart';
import 'get_table_on_demand_throughput.dart';
import 'get_table_point_in_time_recovery.dart';
import 'get_table_replica.dart';
import 'get_table_server_side_encryption.dart';
import 'get_table_ttl.dart';
import 'get_table_warm_throughput.dart';

/// Result data returned by getTable.
class GetTableResult {
  final String arn;
  final List<GetTableAttribute> attributes;
  final String billingMode;
  final bool deletionProtectionEnabled;
  final List<GetTableGlobalSecondaryIndex> globalSecondaryIndexes;
  final String hashKey;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetTableLocalSecondaryIndex> localSecondaryIndexes;
  final String name;
  final List<GetTableOnDemandThroughput> onDemandThroughputs;
  final GetTablePointInTimeRecovery pointInTimeRecovery;
  final String rangeKey;
  final int readCapacity;
  final String region;
  final List<GetTableReplica> replicas;
  final GetTableServerSideEncryption serverSideEncryption;
  final String streamArn;
  final bool streamEnabled;
  final String streamLabel;
  final String streamViewType;
  final String tableClass;
  final Map<String, String> tags;
  final GetTableTtl ttl;
  final List<GetTableWarmThroughput> warmThroughputs;
  final int writeCapacity;

  /// Creates a new [GetTableResult].
  /// [arn] Required.
  /// [attributes] Required.
  /// [billingMode] Required.
  /// [deletionProtectionEnabled] Required.
  /// [globalSecondaryIndexes] Required.
  /// [hashKey] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [localSecondaryIndexes] Required.
  /// [name] Required.
  /// [onDemandThroughputs] Required.
  /// [pointInTimeRecovery] Required.
  /// [rangeKey] Required.
  /// [readCapacity] Required.
  /// [region] Required.
  /// [replicas] Required.
  /// [serverSideEncryption] Required.
  /// [streamArn] Required.
  /// [streamEnabled] Required.
  /// [streamLabel] Required.
  /// [streamViewType] Required.
  /// [tableClass] Required.
  /// [tags] Required.
  /// [ttl] Required.
  /// [warmThroughputs] Required.
  /// [writeCapacity] Required.
  GetTableResult({
    required this.arn,
    required this.attributes,
    required this.billingMode,
    required this.deletionProtectionEnabled,
    required this.globalSecondaryIndexes,
    required this.hashKey,
    required this.id,
    required this.localSecondaryIndexes,
    required this.name,
    required this.onDemandThroughputs,
    required this.pointInTimeRecovery,
    required this.rangeKey,
    required this.readCapacity,
    required this.region,
    required this.replicas,
    required this.serverSideEncryption,
    required this.streamArn,
    required this.streamEnabled,
    required this.streamLabel,
    required this.streamViewType,
    required this.tableClass,
    required this.tags,
    required this.ttl,
    required this.warmThroughputs,
    required this.writeCapacity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['attributes'] =
        pulumi.Input.encodeList<GetTableAttribute, Map<String, dynamic>>(
            attributes, (value) => value.toMap());
    map['billingMode'] = billingMode;
    map['deletionProtectionEnabled'] = deletionProtectionEnabled;
    map['globalSecondaryIndexes'] = pulumi.Input.encodeList<
        GetTableGlobalSecondaryIndex,
        Map<String, dynamic>>(globalSecondaryIndexes, (value) => value.toMap());
    map['hashKey'] = hashKey;
    map['id'] = id;
    map['localSecondaryIndexes'] = pulumi.Input.encodeList<
        GetTableLocalSecondaryIndex,
        Map<String, dynamic>>(localSecondaryIndexes, (value) => value.toMap());
    map['name'] = name;
    map['onDemandThroughputs'] = pulumi.Input.encodeList<
        GetTableOnDemandThroughput,
        Map<String, dynamic>>(onDemandThroughputs, (value) => value.toMap());
    map['pointInTimeRecovery'] = pointInTimeRecovery.toMap();
    map['rangeKey'] = rangeKey;
    map['readCapacity'] = readCapacity;
    map['region'] = region;
    map['replicas'] =
        pulumi.Input.encodeList<GetTableReplica, Map<String, dynamic>>(
            replicas, (value) => value.toMap());
    map['serverSideEncryption'] = serverSideEncryption.toMap();
    map['streamArn'] = streamArn;
    map['streamEnabled'] = streamEnabled;
    map['streamLabel'] = streamLabel;
    map['streamViewType'] = streamViewType;
    map['tableClass'] = tableClass;
    map['tags'] = tags;
    map['ttl'] = ttl.toMap();
    map['warmThroughputs'] =
        pulumi.Input.encodeList<GetTableWarmThroughput, Map<String, dynamic>>(
            warmThroughputs, (value) => value.toMap());
    map['writeCapacity'] = writeCapacity;
    return map;
  }

  factory GetTableResult.fromMap(Map<String, dynamic> map) {
    return GetTableResult(
      arn: map['arn'] as String,
      attributes: pulumi.Input.decodeList<GetTableAttribute>(
          map['attributes'],
          (value) => GetTableAttribute.fromMap(
              (value as Map).cast<String, dynamic>())),
      billingMode: map['billingMode'] as String,
      deletionProtectionEnabled: map['deletionProtectionEnabled'] as bool,
      globalSecondaryIndexes:
          pulumi.Input.decodeList<GetTableGlobalSecondaryIndex>(
              map['globalSecondaryIndexes'],
              (value) => GetTableGlobalSecondaryIndex.fromMap(
                  (value as Map).cast<String, dynamic>())),
      hashKey: map['hashKey'] as String,
      id: map['id'] as String,
      localSecondaryIndexes:
          pulumi.Input.decodeList<GetTableLocalSecondaryIndex>(
              map['localSecondaryIndexes'],
              (value) => GetTableLocalSecondaryIndex.fromMap(
                  (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      onDemandThroughputs: pulumi.Input.decodeList<GetTableOnDemandThroughput>(
          map['onDemandThroughputs'],
          (value) => GetTableOnDemandThroughput.fromMap(
              (value as Map).cast<String, dynamic>())),
      pointInTimeRecovery: GetTablePointInTimeRecovery.fromMap(
          (map['pointInTimeRecovery'] as Map).cast<String, dynamic>()),
      rangeKey: map['rangeKey'] as String,
      readCapacity: map['readCapacity'] as int,
      region: map['region'] as String,
      replicas: pulumi.Input.decodeList<GetTableReplica>(
          map['replicas'],
          (value) =>
              GetTableReplica.fromMap((value as Map).cast<String, dynamic>())),
      serverSideEncryption: GetTableServerSideEncryption.fromMap(
          (map['serverSideEncryption'] as Map).cast<String, dynamic>()),
      streamArn: map['streamArn'] as String,
      streamEnabled: map['streamEnabled'] as bool,
      streamLabel: map['streamLabel'] as String,
      streamViewType: map['streamViewType'] as String,
      tableClass: map['tableClass'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      ttl: GetTableTtl.fromMap((map['ttl'] as Map).cast<String, dynamic>()),
      warmThroughputs: pulumi.Input.decodeList<GetTableWarmThroughput>(
          map['warmThroughputs'],
          (value) => GetTableWarmThroughput.fromMap(
              (value as Map).cast<String, dynamic>())),
      writeCapacity: map['writeCapacity'] as int,
    );
  }
}
