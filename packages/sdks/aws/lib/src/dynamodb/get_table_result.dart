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
  final String? arn;
  final List<GetTableAttribute>? attributes;
  final String? billingMode;
  final bool? deletionProtectionEnabled;
  final List<GetTableGlobalSecondaryIndex>? globalSecondaryIndexes;
  final String? hashKey;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final List<GetTableLocalSecondaryIndex>? localSecondaryIndexes;
  final String? name;
  final List<GetTableOnDemandThroughput>? onDemandThroughputs;
  final GetTablePointInTimeRecovery? pointInTimeRecovery;
  final String? rangeKey;
  final int? readCapacity;
  final String? region;
  final List<GetTableReplica>? replicas;
  final GetTableServerSideEncryption? serverSideEncryption;
  final String? streamArn;
  final bool? streamEnabled;
  final String? streamLabel;
  final String? streamViewType;
  final String? tableClass;
  final Map<String, String>? tags;
  final GetTableTtl? ttl;
  final List<GetTableWarmThroughput>? warmThroughputs;
  final int? writeCapacity;

  /// Creates a new [GetTableResult].
  /// [arn] Optional.
  /// [attributes] Optional.
  /// [billingMode] Optional.
  /// [deletionProtectionEnabled] Optional.
  /// [globalSecondaryIndexes] Optional.
  /// [hashKey] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [localSecondaryIndexes] Optional.
  /// [name] Optional.
  /// [onDemandThroughputs] Optional.
  /// [pointInTimeRecovery] Optional.
  /// [rangeKey] Optional.
  /// [readCapacity] Optional.
  /// [region] Optional.
  /// [replicas] Optional.
  /// [serverSideEncryption] Optional.
  /// [streamArn] Optional.
  /// [streamEnabled] Optional.
  /// [streamLabel] Optional.
  /// [streamViewType] Optional.
  /// [tableClass] Optional.
  /// [tags] Optional.
  /// [ttl] Optional.
  /// [warmThroughputs] Optional.
  /// [writeCapacity] Optional.
  const GetTableResult({
    this.arn,
    this.attributes,
    this.billingMode,
    this.deletionProtectionEnabled,
    this.globalSecondaryIndexes,
    this.hashKey,
    this.id,
    this.localSecondaryIndexes,
    this.name,
    this.onDemandThroughputs,
    this.pointInTimeRecovery,
    this.rangeKey,
    this.readCapacity,
    this.region,
    this.replicas,
    this.serverSideEncryption,
    this.streamArn,
    this.streamEnabled,
    this.streamLabel,
    this.streamViewType,
    this.tableClass,
    this.tags,
    this.ttl,
    this.warmThroughputs,
    this.writeCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'attributes': ?(() { final guardedValue = attributes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetTableAttribute, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'billingMode': ?billingMode,
      'deletionProtectionEnabled': ?deletionProtectionEnabled,
      'globalSecondaryIndexes': ?(() { final guardedValue = globalSecondaryIndexes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetTableGlobalSecondaryIndex, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'hashKey': ?hashKey,
      'id': ?id,
      'localSecondaryIndexes': ?(() { final guardedValue = localSecondaryIndexes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetTableLocalSecondaryIndex, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'onDemandThroughputs': ?(() { final guardedValue = onDemandThroughputs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetTableOnDemandThroughput, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'pointInTimeRecovery': ?pointInTimeRecovery?.toMap(),
      'rangeKey': ?rangeKey,
      'readCapacity': ?readCapacity,
      'region': ?region,
      'replicas': ?(() { final guardedValue = replicas; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetTableReplica, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'serverSideEncryption': ?serverSideEncryption?.toMap(),
      'streamArn': ?streamArn,
      'streamEnabled': ?streamEnabled,
      'streamLabel': ?streamLabel,
      'streamViewType': ?streamViewType,
      'tableClass': ?tableClass,
      'tags': ?tags,
      'ttl': ?ttl?.toMap(),
      'warmThroughputs': ?(() { final guardedValue = warmThroughputs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetTableWarmThroughput, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'writeCapacity': ?writeCapacity,
    };
  }

  factory GetTableResult.fromMap(Map<String, dynamic> map) {
    return GetTableResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetTableAttribute>(guardedValue, (value) => GetTableAttribute.fromMap((value as Map).cast<String, dynamic>())); })(),
      billingMode: (() { final guardedValue = map['billingMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionProtectionEnabled: (() { final guardedValue = map['deletionProtectionEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      globalSecondaryIndexes: (() { final guardedValue = map['globalSecondaryIndexes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetTableGlobalSecondaryIndex>(guardedValue, (value) => GetTableGlobalSecondaryIndex.fromMap((value as Map).cast<String, dynamic>())); })(),
      hashKey: (() { final guardedValue = map['hashKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      localSecondaryIndexes: (() { final guardedValue = map['localSecondaryIndexes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetTableLocalSecondaryIndex>(guardedValue, (value) => GetTableLocalSecondaryIndex.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      onDemandThroughputs: (() { final guardedValue = map['onDemandThroughputs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetTableOnDemandThroughput>(guardedValue, (value) => GetTableOnDemandThroughput.fromMap((value as Map).cast<String, dynamic>())); })(),
      pointInTimeRecovery: (() { final guardedValue = map['pointInTimeRecovery']; if (guardedValue == null) return null; return GetTablePointInTimeRecovery.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      rangeKey: (() { final guardedValue = map['rangeKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      readCapacity: (() { final guardedValue = map['readCapacity']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      replicas: (() { final guardedValue = map['replicas']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetTableReplica>(guardedValue, (value) => GetTableReplica.fromMap((value as Map).cast<String, dynamic>())); })(),
      serverSideEncryption: (() { final guardedValue = map['serverSideEncryption']; if (guardedValue == null) return null; return GetTableServerSideEncryption.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      streamArn: (() { final guardedValue = map['streamArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      streamEnabled: (() { final guardedValue = map['streamEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      streamLabel: (() { final guardedValue = map['streamLabel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      streamViewType: (() { final guardedValue = map['streamViewType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tableClass: (() { final guardedValue = map['tableClass']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return GetTableTtl.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      warmThroughputs: (() { final guardedValue = map['warmThroughputs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetTableWarmThroughput>(guardedValue, (value) => GetTableWarmThroughput.fromMap((value as Map).cast<String, dynamic>())); })(),
      writeCapacity: (() { final guardedValue = map['writeCapacity']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
    );
  }
}
