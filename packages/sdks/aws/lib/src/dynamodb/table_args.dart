// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_attribute.dart';
import 'table_global_secondary_index.dart';
import 'table_global_table_witness.dart';
import 'table_import_table.dart';
import 'table_local_secondary_index.dart';
import 'table_on_demand_throughput.dart';
import 'table_point_in_time_recovery.dart';
import 'table_replica.dart';
import 'table_server_side_encryption.dart';
import 'table_ttl.dart';
import 'table_warm_throughput.dart';

/// {@template pulumi_dynamodb_table_table_args_doc}
/// The set of arguments for Table.
/// {@endtemplate}
/// {@macro pulumi_dynamodb_table_table_args_doc}
class TableArgs {
  /// Set of nested attribute definitions. Only required for `hash_key` and `range_key` attributes. See below.
  final pulumi.Input<List<TableAttribute>>? attributes;
  /// Controls how you are charged for read and write throughput and how you manage capacity. The valid values are `PROVISIONED` and `PAY_PER_REQUEST`. Defaults to `PROVISIONED`.
  final pulumi.Input<String>? billingMode;
  /// Enables deletion protection for table. Defaults to `false`.
  final pulumi.Input<bool>? deletionProtectionEnabled;
  /// Describe a GSI for the table; subject to the normal limits on the number of GSIs, projected attributes, etc. See below.
  final pulumi.Input<List<TableGlobalSecondaryIndex>>? globalSecondaryIndexes;
  /// Witness Region in a Multi-Region Strong Consistency deployment. **Note** This must be used alongside a single `replica` with `consistency_mode` set to `STRONG`. Other combinations will fail to provision. See below.
  final pulumi.Input<TableGlobalTableWitness>? globalTableWitness;
  /// Attribute to use as the hash (partition) key. Must also be defined as an `attribute`. See below.
  final pulumi.Input<String>? hashKey;
  /// Import Amazon S3 data into a new table. See below.
  final pulumi.Input<TableImportTable>? importTable;
  /// Describe an LSI on the table; these can only be allocated _at creation_ so you cannot change this definition after you have created the resource. See below.
  final pulumi.Input<List<TableLocalSecondaryIndex>>? localSecondaryIndexes;
  /// Unique within a region name of the table.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Sets the maximum number of read and write units for the specified on-demand table. See below.
  final pulumi.Input<TableOnDemandThroughput>? onDemandThroughput;
  /// Enable point-in-time recovery options. See below.
  final pulumi.Input<TablePointInTimeRecovery>? pointInTimeRecovery;
  /// Attribute to use as the range (sort) key. Must also be defined as an `attribute`, see below.
  final pulumi.Input<String>? rangeKey;
  /// Number of read units for this table. If the `billing_mode` is `PROVISIONED`, this field is required.
  final pulumi.Input<int>? readCapacity;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Configuration block(s) with [DynamoDB Global Tables V2 (version 2019.11.21)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html) replication configurations. See below.
  final pulumi.Input<List<TableReplica>>? replicas;
  /// Time of the point-in-time recovery point to restore.
  final pulumi.Input<String>? restoreDateTime;
  /// Name of the table to restore. Must match the name of an existing table.
  final pulumi.Input<String>? restoreSourceName;
  /// ARN of the source table to restore. Must be supplied for cross-region restores.
  final pulumi.Input<String>? restoreSourceTableArn;
  /// If set, restores table to the most recent point-in-time recovery point.
  final pulumi.Input<bool>? restoreToLatestTime;
  /// Encryption at rest options. AWS DynamoDB tables are automatically encrypted at rest with an AWS-owned Customer Master Key if this argument isn't specified. Must be supplied for cross-region restores. See below.
  final pulumi.Input<TableServerSideEncryption>? serverSideEncryption;
  /// Whether Streams are enabled.
  final pulumi.Input<bool>? streamEnabled;
  /// When an item in the table is modified, StreamViewType determines what information is written to the table's stream.
  /// Valid values are `KEYS_ONLY`, `NEW_IMAGE`, `OLD_IMAGE`, `NEW_AND_OLD_IMAGES`.
  /// Only valid when `stream_enabled` is true.
  final pulumi.Input<String>? streamViewType;
  /// Storage class of the table.
  /// Valid values are `STANDARD` and `STANDARD_INFREQUENT_ACCESS`.
  /// Default value is `STANDARD`.
  final pulumi.Input<String>? tableClass;
  /// A map of tags to populate on the created table. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Configuration block for TTL. See below.
  final pulumi.Input<TableTtl>? ttl;
  /// Sets the number of warm read and write units for the specified table. See below.
  final pulumi.Input<TableWarmThroughput>? warmThroughput;
  /// Number of write units for this table. If the `billing_mode` is `PROVISIONED`, this field is required.
  final pulumi.Input<int>? writeCapacity;

  /// Creates a new [TableArgs].
  /// [attributes] Set of nested attribute definitions. Only required for `hash_key` and `range_key` attributes. See below.
  /// [billingMode] Controls how you are charged for read and write throughput and how you manage capacity. The valid values are `PROVISIONED` and `PAY_PER_REQUEST`. Defaults to `PROVISIONED`.
  /// [deletionProtectionEnabled] Enables deletion protection for table. Defaults to `false`.
  /// [globalSecondaryIndexes] Describe a GSI for the table; subject to the normal limits on the number of GSIs, projected attributes, etc. See below.
  /// [globalTableWitness] Witness Region in a Multi-Region Strong Consistency deployment. **Note** This must be used alongside a single `replica` with `consistency_mode` set to `STRONG`. Other combinations will fail to provision. See below.
  /// [hashKey] Attribute to use as the hash (partition) key. Must also be defined as an `attribute`. See below.
  /// [importTable] Import Amazon S3 data into a new table. See below.
  /// [localSecondaryIndexes] Describe an LSI on the table; these can only be allocated _at creation_ so you cannot change this definition after you have created the resource. See below.
  /// [name] Unique within a region name of the table.
  /// [onDemandThroughput] Sets the maximum number of read and write units for the specified on-demand table. See below.
  /// [pointInTimeRecovery] Enable point-in-time recovery options. See below.
  /// [rangeKey] Attribute to use as the range (sort) key. Must also be defined as an `attribute`, see below.
  /// [readCapacity] Number of read units for this table. If the `billing_mode` is `PROVISIONED`, this field is required.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [replicas] Configuration block(s) with [DynamoDB Global Tables V2 (version 2019.11.21)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html) replication configurations. See below.
  /// [restoreDateTime] Time of the point-in-time recovery point to restore.
  /// [restoreSourceName] Name of the table to restore. Must match the name of an existing table.
  /// [restoreSourceTableArn] ARN of the source table to restore. Must be supplied for cross-region restores.
  /// [restoreToLatestTime] If set, restores table to the most recent point-in-time recovery point.
  /// [serverSideEncryption] Encryption at rest options. AWS DynamoDB tables are automatically encrypted at rest with an AWS-owned Customer Master Key if this argument isn't specified. Must be supplied for cross-region restores. See below.
  /// [streamEnabled] Whether Streams are enabled.
  /// [streamViewType] When an item in the table is modified, StreamViewType determines what information is written to the table's stream.
  /// [tableClass] Storage class of the table.
  /// [tags] A map of tags to populate on the created table. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [ttl] Configuration block for TTL. See below.
  /// [warmThroughput] Sets the number of warm read and write units for the specified table. See below.
  /// [writeCapacity] Number of write units for this table. If the `billing_mode` is `PROVISIONED`, this field is required.
  const TableArgs({
    this.attributes,
    this.billingMode,
    this.deletionProtectionEnabled,
    this.globalSecondaryIndexes,
    this.globalTableWitness,
    this.hashKey,
    this.importTable,
    this.localSecondaryIndexes,
    this.name,
    this.onDemandThroughput,
    this.pointInTimeRecovery,
    this.rangeKey,
    this.readCapacity,
    this.region,
    this.replicas,
    this.restoreDateTime,
    this.restoreSourceName,
    this.restoreSourceTableArn,
    this.restoreToLatestTime,
    this.serverSideEncryption,
    this.streamEnabled,
    this.streamViewType,
    this.tableClass,
    this.tags,
    this.ttl,
    this.warmThroughput,
    this.writeCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?pulumi.Input.mapOptionalInputValue<List<TableAttribute>, List<Map<String, dynamic>>>(attributes, (value) => pulumi.Input.encodeList<TableAttribute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'billingMode': ?billingMode,
      'deletionProtectionEnabled': ?deletionProtectionEnabled,
      'globalSecondaryIndexes': ?pulumi.Input.mapOptionalInputValue<List<TableGlobalSecondaryIndex>, List<Map<String, dynamic>>>(globalSecondaryIndexes, (value) => pulumi.Input.encodeList<TableGlobalSecondaryIndex, Map<String, dynamic>>(value, (value) => value.toMap())),
      'globalTableWitness': ?pulumi.Input.mapOptionalInputValue<TableGlobalTableWitness, Map<String, dynamic>>(globalTableWitness, (value) => value.toMap()),
      'hashKey': ?hashKey,
      'importTable': ?pulumi.Input.mapOptionalInputValue<TableImportTable, Map<String, dynamic>>(importTable, (value) => value.toMap()),
      'localSecondaryIndexes': ?pulumi.Input.mapOptionalInputValue<List<TableLocalSecondaryIndex>, List<Map<String, dynamic>>>(localSecondaryIndexes, (value) => pulumi.Input.encodeList<TableLocalSecondaryIndex, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'onDemandThroughput': ?pulumi.Input.mapOptionalInputValue<TableOnDemandThroughput, Map<String, dynamic>>(onDemandThroughput, (value) => value.toMap()),
      'pointInTimeRecovery': ?pulumi.Input.mapOptionalInputValue<TablePointInTimeRecovery, Map<String, dynamic>>(pointInTimeRecovery, (value) => value.toMap()),
      'rangeKey': ?rangeKey,
      'readCapacity': ?readCapacity,
      'region': ?region,
      'replicas': ?pulumi.Input.mapOptionalInputValue<List<TableReplica>, List<Map<String, dynamic>>>(replicas, (value) => pulumi.Input.encodeList<TableReplica, Map<String, dynamic>>(value, (value) => value.toMap())),
      'restoreDateTime': ?restoreDateTime,
      'restoreSourceName': ?restoreSourceName,
      'restoreSourceTableArn': ?restoreSourceTableArn,
      'restoreToLatestTime': ?restoreToLatestTime,
      'serverSideEncryption': ?pulumi.Input.mapOptionalInputValue<TableServerSideEncryption, Map<String, dynamic>>(serverSideEncryption, (value) => value.toMap()),
      'streamEnabled': ?streamEnabled,
      'streamViewType': ?streamViewType,
      'tableClass': ?tableClass,
      'tags': ?tags,
      'ttl': ?pulumi.Input.mapOptionalInputValue<TableTtl, Map<String, dynamic>>(ttl, (value) => value.toMap()),
      'warmThroughput': ?pulumi.Input.mapOptionalInputValue<TableWarmThroughput, Map<String, dynamic>>(warmThroughput, (value) => value.toMap()),
      'writeCapacity': ?writeCapacity,
    };
  }

  factory TableArgs.fromMap(Map<String, dynamic> map) {
    return TableArgs(
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TableAttribute>(guardedValue, (value) => TableAttribute.fromMap((value as Map).cast<String, dynamic>()))); })(),
      billingMode: (() { final guardedValue = map['billingMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionProtectionEnabled: (() { final guardedValue = map['deletionProtectionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      globalSecondaryIndexes: (() { final guardedValue = map['globalSecondaryIndexes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TableGlobalSecondaryIndex>(guardedValue, (value) => TableGlobalSecondaryIndex.fromMap((value as Map).cast<String, dynamic>()))); })(),
      globalTableWitness: (() { final guardedValue = map['globalTableWitness']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TableGlobalTableWitness.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hashKey: (() { final guardedValue = map['hashKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      importTable: (() { final guardedValue = map['importTable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TableImportTable.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      localSecondaryIndexes: (() { final guardedValue = map['localSecondaryIndexes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TableLocalSecondaryIndex>(guardedValue, (value) => TableLocalSecondaryIndex.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      onDemandThroughput: (() { final guardedValue = map['onDemandThroughput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TableOnDemandThroughput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pointInTimeRecovery: (() { final guardedValue = map['pointInTimeRecovery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TablePointInTimeRecovery.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rangeKey: (() { final guardedValue = map['rangeKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      readCapacity: (() { final guardedValue = map['readCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicas: (() { final guardedValue = map['replicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TableReplica>(guardedValue, (value) => TableReplica.fromMap((value as Map).cast<String, dynamic>()))); })(),
      restoreDateTime: (() { final guardedValue = map['restoreDateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restoreSourceName: (() { final guardedValue = map['restoreSourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restoreSourceTableArn: (() { final guardedValue = map['restoreSourceTableArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restoreToLatestTime: (() { final guardedValue = map['restoreToLatestTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      serverSideEncryption: (() { final guardedValue = map['serverSideEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TableServerSideEncryption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      streamEnabled: (() { final guardedValue = map['streamEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      streamViewType: (() { final guardedValue = map['streamViewType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tableClass: (() { final guardedValue = map['tableClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TableTtl.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      warmThroughput: (() { final guardedValue = map['warmThroughput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TableWarmThroughput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      writeCapacity: (() { final guardedValue = map['writeCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

