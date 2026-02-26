// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
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
  /// Set of nested attribute definitions. Only required for <span pulumi-lang-nodejs="`hashKey`" pulumi-lang-dotnet="`HashKey`" pulumi-lang-go="`hashKey`" pulumi-lang-python="`hash_key`" pulumi-lang-yaml="`hashKey`" pulumi-lang-java="`hashKey`">`hash_key`</span> and <span pulumi-lang-nodejs="`rangeKey`" pulumi-lang-dotnet="`RangeKey`" pulumi-lang-go="`rangeKey`" pulumi-lang-python="`range_key`" pulumi-lang-yaml="`rangeKey`" pulumi-lang-java="`rangeKey`">`range_key`</span> attributes. See below.
  final Input<List<TableAttribute>>? attributes;

  /// Controls how you are charged for read and write throughput and how you manage capacity. The valid values are `PROVISIONED` and `PAY_PER_REQUEST`. Defaults to `PROVISIONED`.
  final Input<String>? billingMode;

  /// Enables deletion protection for table. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? deletionProtectionEnabled;

  /// Describe a GSI for the table; subject to the normal limits on the number of GSIs, projected attributes, etc. See below.
  final Input<List<TableGlobalSecondaryIndex>>? globalSecondaryIndexes;

  /// Witness Region in a Multi-Region Strong Consistency deployment. **Note** This must be used alongside a single <span pulumi-lang-nodejs="`replica`" pulumi-lang-dotnet="`Replica`" pulumi-lang-go="`replica`" pulumi-lang-python="`replica`" pulumi-lang-yaml="`replica`" pulumi-lang-java="`replica`">`replica`</span> with <span pulumi-lang-nodejs="`consistencyMode`" pulumi-lang-dotnet="`ConsistencyMode`" pulumi-lang-go="`consistencyMode`" pulumi-lang-python="`consistency_mode`" pulumi-lang-yaml="`consistencyMode`" pulumi-lang-java="`consistencyMode`">`consistency_mode`</span> set to `STRONG`. Other combinations will fail to provision. See below.
  final Input<TableGlobalTableWitness>? globalTableWitness;

  /// Attribute to use as the hash (partition) key. Must also be defined as an <span pulumi-lang-nodejs="`attribute`" pulumi-lang-dotnet="`Attribute`" pulumi-lang-go="`attribute`" pulumi-lang-python="`attribute`" pulumi-lang-yaml="`attribute`" pulumi-lang-java="`attribute`">`attribute`</span>. See below.
  final Input<String>? hashKey;

  /// Import Amazon S3 data into a new table. See below.
  final Input<TableImportTable>? importTable;

  /// Describe an LSI on the table; these can only be allocated _at creation_ so you cannot change this definition after you have created the resource. See below.
  final Input<List<TableLocalSecondaryIndex>>? localSecondaryIndexes;

  /// Unique within a region name of the table.
  ///
  /// The following arguments are optional:
  final Input<String>? name;

  /// Sets the maximum number of read and write units for the specified on-demand table. See below.
  final Input<TableOnDemandThroughput>? onDemandThroughput;

  /// Enable point-in-time recovery options. See below.
  final Input<TablePointInTimeRecovery>? pointInTimeRecovery;

  /// Attribute to use as the range (sort) key. Must also be defined as an <span pulumi-lang-nodejs="`attribute`" pulumi-lang-dotnet="`Attribute`" pulumi-lang-go="`attribute`" pulumi-lang-python="`attribute`" pulumi-lang-yaml="`attribute`" pulumi-lang-java="`attribute`">`attribute`</span>, see below.
  final Input<String>? rangeKey;

  /// Number of read units for this table. If the <span pulumi-lang-nodejs="`billingMode`" pulumi-lang-dotnet="`BillingMode`" pulumi-lang-go="`billingMode`" pulumi-lang-python="`billing_mode`" pulumi-lang-yaml="`billingMode`" pulumi-lang-java="`billingMode`">`billing_mode`</span> is `PROVISIONED`, this field is required.
  final Input<int>? readCapacity;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Configuration block(s) with [DynamoDB Global Tables V2 (version 2019.11.21)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html) replication configurations. See below.
  final Input<List<TableReplica>>? replicas;

  /// Time of the point-in-time recovery point to restore.
  final Input<String>? restoreDateTime;

  /// Name of the table to restore. Must match the name of an existing table.
  final Input<String>? restoreSourceName;

  /// ARN of the source table to restore. Must be supplied for cross-region restores.
  final Input<String>? restoreSourceTableArn;

  /// If set, restores table to the most recent point-in-time recovery point.
  final Input<bool>? restoreToLatestTime;

  /// Encryption at rest options. AWS DynamoDB tables are automatically encrypted at rest with an AWS-owned Customer Master Key if this argument isn't specified. Must be supplied for cross-region restores. See below.
  final Input<TableServerSideEncryption>? serverSideEncryption;

  /// Whether Streams are enabled.
  final Input<bool>? streamEnabled;

  /// When an item in the table is modified, StreamViewType determines what information is written to the table's stream.
  /// Valid values are `KEYS_ONLY`, `NEW_IMAGE`, `OLD_IMAGE`, `NEW_AND_OLD_IMAGES`.
  /// Only valid when <span pulumi-lang-nodejs="`streamEnabled`" pulumi-lang-dotnet="`StreamEnabled`" pulumi-lang-go="`streamEnabled`" pulumi-lang-python="`stream_enabled`" pulumi-lang-yaml="`streamEnabled`" pulumi-lang-java="`streamEnabled`">`stream_enabled`</span> is true.
  final Input<String>? streamViewType;

  /// Storage class of the table.
  /// Valid values are `STANDARD` and `STANDARD_INFREQUENT_ACCESS`.
  /// Default value is `STANDARD`.
  final Input<String>? tableClass;

  /// A map of tags to populate on the created table. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Configuration block for TTL. See below.
  final Input<TableTtl>? ttl;

  /// Sets the number of warm read and write units for the specified table. See below.
  final Input<TableWarmThroughput>? warmThroughput;

  /// Number of write units for this table. If the <span pulumi-lang-nodejs="`billingMode`" pulumi-lang-dotnet="`BillingMode`" pulumi-lang-go="`billingMode`" pulumi-lang-python="`billing_mode`" pulumi-lang-yaml="`billingMode`" pulumi-lang-java="`billingMode`">`billing_mode`</span> is `PROVISIONED`, this field is required.
  final Input<int>? writeCapacity;

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
      map['attributes'] = Input.mapOptionalInputValue<List<TableAttribute>,
              List<Map<String, dynamic>>>(
          attributesValue,
          (value) => Input.encodeList<TableAttribute, Map<String, dynamic>>(
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
      map['globalSecondaryIndexes'] = Input.mapOptionalInputValue<
              List<TableGlobalSecondaryIndex>, List<Map<String, dynamic>>>(
          globalSecondaryIndexesValue,
          (value) =>
              Input.encodeList<TableGlobalSecondaryIndex, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final globalTableWitnessValue = globalTableWitness;
    if (globalTableWitnessValue != null) {
      map['globalTableWitness'] = Input.mapOptionalInputValue<
              TableGlobalTableWitness, Map<String, dynamic>>(
          globalTableWitnessValue, (value) => value.toMap());
    }
    final hashKeyValue = hashKey;
    if (hashKeyValue != null) {
      map['hashKey'] = hashKeyValue;
    }
    final importTableValue = importTable;
    if (importTableValue != null) {
      map['importTable'] =
          Input.mapOptionalInputValue<TableImportTable, Map<String, dynamic>>(
              importTableValue, (value) => value.toMap());
    }
    final localSecondaryIndexesValue = localSecondaryIndexes;
    if (localSecondaryIndexesValue != null) {
      map['localSecondaryIndexes'] = Input.mapOptionalInputValue<
              List<TableLocalSecondaryIndex>, List<Map<String, dynamic>>>(
          localSecondaryIndexesValue,
          (value) =>
              Input.encodeList<TableLocalSecondaryIndex, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final onDemandThroughputValue = onDemandThroughput;
    if (onDemandThroughputValue != null) {
      map['onDemandThroughput'] = Input.mapOptionalInputValue<
              TableOnDemandThroughput, Map<String, dynamic>>(
          onDemandThroughputValue, (value) => value.toMap());
    }
    final pointInTimeRecoveryValue = pointInTimeRecovery;
    if (pointInTimeRecoveryValue != null) {
      map['pointInTimeRecovery'] = Input.mapOptionalInputValue<
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
      map['replicas'] = Input.mapOptionalInputValue<List<TableReplica>,
              List<Map<String, dynamic>>>(
          replicasValue,
          (value) => Input.encodeList<TableReplica, Map<String, dynamic>>(
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
      map['serverSideEncryption'] = Input.mapOptionalInputValue<
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
      map['ttl'] = Input.mapOptionalInputValue<TableTtl, Map<String, dynamic>>(
          ttlValue, (value) => value.toMap());
    }
    final warmThroughputValue = warmThroughput;
    if (warmThroughputValue != null) {
      map['warmThroughput'] = Input.mapOptionalInputValue<TableWarmThroughput,
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
          Input.asOptionalInput<List<TableAttribute>>(map['attributes']),
      billingMode: Input.asOptionalInput<String>(map['billingMode']),
      deletionProtectionEnabled:
          Input.asOptionalInput<bool>(map['deletionProtectionEnabled']),
      globalSecondaryIndexes:
          Input.asOptionalInput<List<TableGlobalSecondaryIndex>>(
              map['globalSecondaryIndexes']),
      globalTableWitness: Input.asOptionalInput<TableGlobalTableWitness>(
          map['globalTableWitness']),
      hashKey: Input.asOptionalInput<String>(map['hashKey']),
      importTable: Input.asOptionalInput<TableImportTable>(map['importTable']),
      localSecondaryIndexes:
          Input.asOptionalInput<List<TableLocalSecondaryIndex>>(
              map['localSecondaryIndexes']),
      name: Input.asOptionalInput<String>(map['name']),
      onDemandThroughput: Input.asOptionalInput<TableOnDemandThroughput>(
          map['onDemandThroughput']),
      pointInTimeRecovery: Input.asOptionalInput<TablePointInTimeRecovery>(
          map['pointInTimeRecovery']),
      rangeKey: Input.asOptionalInput<String>(map['rangeKey']),
      readCapacity: Input.asOptionalInput<int>(map['readCapacity']),
      region: Input.asOptionalInput<String>(map['region']),
      replicas: Input.asOptionalInput<List<TableReplica>>(map['replicas']),
      restoreDateTime: Input.asOptionalInput<String>(map['restoreDateTime']),
      restoreSourceName:
          Input.asOptionalInput<String>(map['restoreSourceName']),
      restoreSourceTableArn:
          Input.asOptionalInput<String>(map['restoreSourceTableArn']),
      restoreToLatestTime:
          Input.asOptionalInput<bool>(map['restoreToLatestTime']),
      serverSideEncryption: Input.asOptionalInput<TableServerSideEncryption>(
          map['serverSideEncryption']),
      streamEnabled: Input.asOptionalInput<bool>(map['streamEnabled']),
      streamViewType: Input.asOptionalInput<String>(map['streamViewType']),
      tableClass: Input.asOptionalInput<String>(map['tableClass']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      ttl: Input.asOptionalInput<TableTtl>(map['ttl']),
      warmThroughput:
          Input.asOptionalInput<TableWarmThroughput>(map['warmThroughput']),
      writeCapacity: Input.asOptionalInput<int>(map['writeCapacity']),
    );
  }
}
