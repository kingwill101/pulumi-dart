// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../table_attribute/table_attribute.dart';
import '../table_global_secondary_index/table_global_secondary_index.dart';
import '../table_global_table_witness/table_global_table_witness.dart';
import '../table_import_table/table_import_table.dart';
import '../table_local_secondary_index/table_local_secondary_index.dart';
import '../table_on_demand_throughput/table_on_demand_throughput.dart';
import '../table_point_in_time_recovery/table_point_in_time_recovery.dart';
import '../table_replica/table_replica.dart';
import '../table_server_side_encryption/table_server_side_encryption.dart';
import '../table_ttl/table_ttl.dart';
import '../table_warm_throughput/table_warm_throughput.dart';

/// The set of arguments for Table.
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

  TableArgs({
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
    final map = <String, dynamic>{};
    final attributesValue = attributes;
    if (attributesValue != null) {
      map['attributes'] = pulumi.Input.mapOptionalInputValue<
              List<TableAttribute>, List<Map<String, dynamic>>>(
          attributesValue,
          (value) =>
              pulumi.Input.encodeList<TableAttribute, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final billingModeValue = billingMode;
    if (billingModeValue != null) {
      map['billingMode'] = billingModeValue;
    }
    final deletionProtectionEnabledValue = deletionProtectionEnabled;
    if (deletionProtectionEnabledValue != null) {
      map['deletionProtectionEnabled'] = deletionProtectionEnabledValue;
    }
    final globalSecondaryIndexesValue = globalSecondaryIndexes;
    if (globalSecondaryIndexesValue != null) {
      map['globalSecondaryIndexes'] = pulumi.Input.mapOptionalInputValue<
              List<TableGlobalSecondaryIndex>, List<Map<String, dynamic>>>(
          globalSecondaryIndexesValue,
          (value) => pulumi.Input.encodeList<TableGlobalSecondaryIndex,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final globalTableWitnessValue = globalTableWitness;
    if (globalTableWitnessValue != null) {
      map['globalTableWitness'] = pulumi.Input.mapOptionalInputValue<
              TableGlobalTableWitness, Map<String, dynamic>>(
          globalTableWitnessValue, (value) => value.toMap());
    }
    final hashKeyValue = hashKey;
    if (hashKeyValue != null) {
      map['hashKey'] = hashKeyValue;
    }
    final importTableValue = importTable;
    if (importTableValue != null) {
      map['importTable'] = pulumi.Input.mapOptionalInputValue<TableImportTable,
          Map<String, dynamic>>(importTableValue, (value) => value.toMap());
    }
    final localSecondaryIndexesValue = localSecondaryIndexes;
    if (localSecondaryIndexesValue != null) {
      map['localSecondaryIndexes'] = pulumi.Input.mapOptionalInputValue<
              List<TableLocalSecondaryIndex>, List<Map<String, dynamic>>>(
          localSecondaryIndexesValue,
          (value) => pulumi.Input.encodeList<TableLocalSecondaryIndex,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final onDemandThroughputValue = onDemandThroughput;
    if (onDemandThroughputValue != null) {
      map['onDemandThroughput'] = pulumi.Input.mapOptionalInputValue<
              TableOnDemandThroughput, Map<String, dynamic>>(
          onDemandThroughputValue, (value) => value.toMap());
    }
    final pointInTimeRecoveryValue = pointInTimeRecovery;
    if (pointInTimeRecoveryValue != null) {
      map['pointInTimeRecovery'] = pulumi.Input.mapOptionalInputValue<
              TablePointInTimeRecovery, Map<String, dynamic>>(
          pointInTimeRecoveryValue, (value) => value.toMap());
    }
    final rangeKeyValue = rangeKey;
    if (rangeKeyValue != null) {
      map['rangeKey'] = rangeKeyValue;
    }
    final readCapacityValue = readCapacity;
    if (readCapacityValue != null) {
      map['readCapacity'] = readCapacityValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final replicasValue = replicas;
    if (replicasValue != null) {
      map['replicas'] = pulumi.Input.mapOptionalInputValue<List<TableReplica>,
              List<Map<String, dynamic>>>(
          replicasValue,
          (value) =>
              pulumi.Input.encodeList<TableReplica, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final restoreDateTimeValue = restoreDateTime;
    if (restoreDateTimeValue != null) {
      map['restoreDateTime'] = restoreDateTimeValue;
    }
    final restoreSourceNameValue = restoreSourceName;
    if (restoreSourceNameValue != null) {
      map['restoreSourceName'] = restoreSourceNameValue;
    }
    final restoreSourceTableArnValue = restoreSourceTableArn;
    if (restoreSourceTableArnValue != null) {
      map['restoreSourceTableArn'] = restoreSourceTableArnValue;
    }
    final restoreToLatestTimeValue = restoreToLatestTime;
    if (restoreToLatestTimeValue != null) {
      map['restoreToLatestTime'] = restoreToLatestTimeValue;
    }
    final serverSideEncryptionValue = serverSideEncryption;
    if (serverSideEncryptionValue != null) {
      map['serverSideEncryption'] = pulumi.Input.mapOptionalInputValue<
              TableServerSideEncryption, Map<String, dynamic>>(
          serverSideEncryptionValue, (value) => value.toMap());
    }
    final streamEnabledValue = streamEnabled;
    if (streamEnabledValue != null) {
      map['streamEnabled'] = streamEnabledValue;
    }
    final streamViewTypeValue = streamViewType;
    if (streamViewTypeValue != null) {
      map['streamViewType'] = streamViewTypeValue;
    }
    final tableClassValue = tableClass;
    if (tableClassValue != null) {
      map['tableClass'] = tableClassValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final ttlValue = ttl;
    if (ttlValue != null) {
      map['ttl'] =
          pulumi.Input.mapOptionalInputValue<TableTtl, Map<String, dynamic>>(
              ttlValue, (value) => value.toMap());
    }
    final warmThroughputValue = warmThroughput;
    if (warmThroughputValue != null) {
      map['warmThroughput'] = pulumi.Input.mapOptionalInputValue<
          TableWarmThroughput,
          Map<String, dynamic>>(warmThroughputValue, (value) => value.toMap());
    }
    final writeCapacityValue = writeCapacity;
    if (writeCapacityValue != null) {
      map['writeCapacity'] = writeCapacityValue;
    }
    return map;
  }

  factory TableArgs.fromMap(Map<String, dynamic> map) {
    return TableArgs(
      attributes:
          pulumi.Input.asOptionalInput<List<TableAttribute>>(map['attributes']),
      billingMode: pulumi.Input.asOptionalInput<String>(map['billingMode']),
      deletionProtectionEnabled:
          pulumi.Input.asOptionalInput<bool>(map['deletionProtectionEnabled']),
      globalSecondaryIndexes:
          pulumi.Input.asOptionalInput<List<TableGlobalSecondaryIndex>>(
              map['globalSecondaryIndexes']),
      globalTableWitness: pulumi.Input.asOptionalInput<TableGlobalTableWitness>(
          map['globalTableWitness']),
      hashKey: pulumi.Input.asOptionalInput<String>(map['hashKey']),
      importTable:
          pulumi.Input.asOptionalInput<TableImportTable>(map['importTable']),
      localSecondaryIndexes:
          pulumi.Input.asOptionalInput<List<TableLocalSecondaryIndex>>(
              map['localSecondaryIndexes']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      onDemandThroughput: pulumi.Input.asOptionalInput<TableOnDemandThroughput>(
          map['onDemandThroughput']),
      pointInTimeRecovery:
          pulumi.Input.asOptionalInput<TablePointInTimeRecovery>(
              map['pointInTimeRecovery']),
      rangeKey: pulumi.Input.asOptionalInput<String>(map['rangeKey']),
      readCapacity: pulumi.Input.asOptionalInput<int>(map['readCapacity']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      replicas:
          pulumi.Input.asOptionalInput<List<TableReplica>>(map['replicas']),
      restoreDateTime:
          pulumi.Input.asOptionalInput<String>(map['restoreDateTime']),
      restoreSourceName:
          pulumi.Input.asOptionalInput<String>(map['restoreSourceName']),
      restoreSourceTableArn:
          pulumi.Input.asOptionalInput<String>(map['restoreSourceTableArn']),
      restoreToLatestTime:
          pulumi.Input.asOptionalInput<bool>(map['restoreToLatestTime']),
      serverSideEncryption:
          pulumi.Input.asOptionalInput<TableServerSideEncryption>(
              map['serverSideEncryption']),
      streamEnabled: pulumi.Input.asOptionalInput<bool>(map['streamEnabled']),
      streamViewType:
          pulumi.Input.asOptionalInput<String>(map['streamViewType']),
      tableClass: pulumi.Input.asOptionalInput<String>(map['tableClass']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      ttl: pulumi.Input.asOptionalInput<TableTtl>(map['ttl']),
      warmThroughput: pulumi.Input.asOptionalInput<TableWarmThroughput>(
          map['warmThroughput']),
      writeCapacity: pulumi.Input.asOptionalInput<int>(map['writeCapacity']),
    );
  }
}
