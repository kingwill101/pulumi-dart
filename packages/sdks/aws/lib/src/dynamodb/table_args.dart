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
  TableArgs({
    pulumi.Output<List<TableAttribute>>? attributes,
    pulumi.Output<String>? billingMode,
    pulumi.Output<bool>? deletionProtectionEnabled,
    pulumi.Output<List<TableGlobalSecondaryIndex>>? globalSecondaryIndexes,
    pulumi.Output<TableGlobalTableWitness>? globalTableWitness,
    pulumi.Output<String>? hashKey,
    pulumi.Output<TableImportTable>? importTable,
    pulumi.Output<List<TableLocalSecondaryIndex>>? localSecondaryIndexes,
    pulumi.Output<String>? name,
    pulumi.Output<TableOnDemandThroughput>? onDemandThroughput,
    pulumi.Output<TablePointInTimeRecovery>? pointInTimeRecovery,
    pulumi.Output<String>? rangeKey,
    pulumi.Output<int>? readCapacity,
    pulumi.Output<String>? region,
    pulumi.Output<List<TableReplica>>? replicas,
    pulumi.Output<String>? restoreDateTime,
    pulumi.Output<String>? restoreSourceName,
    pulumi.Output<String>? restoreSourceTableArn,
    pulumi.Output<bool>? restoreToLatestTime,
    pulumi.Output<TableServerSideEncryption>? serverSideEncryption,
    pulumi.Output<bool>? streamEnabled,
    pulumi.Output<String>? streamViewType,
    pulumi.Output<String>? tableClass,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<TableTtl>? ttl,
    pulumi.Output<TableWarmThroughput>? warmThroughput,
    pulumi.Output<int>? writeCapacity,
  }) :
      attributes = pulumi.Input.asOptionalInput<List<TableAttribute>>(attributes),
      billingMode = pulumi.Input.asOptionalInput<String>(billingMode),
      deletionProtectionEnabled = pulumi.Input.asOptionalInput<bool>(deletionProtectionEnabled),
      globalSecondaryIndexes = pulumi.Input.asOptionalInput<List<TableGlobalSecondaryIndex>>(globalSecondaryIndexes),
      globalTableWitness = pulumi.Input.asOptionalInput<TableGlobalTableWitness>(globalTableWitness),
      hashKey = pulumi.Input.asOptionalInput<String>(hashKey),
      importTable = pulumi.Input.asOptionalInput<TableImportTable>(importTable),
      localSecondaryIndexes = pulumi.Input.asOptionalInput<List<TableLocalSecondaryIndex>>(localSecondaryIndexes),
      name = pulumi.Input.asOptionalInput<String>(name),
      onDemandThroughput = pulumi.Input.asOptionalInput<TableOnDemandThroughput>(onDemandThroughput),
      pointInTimeRecovery = pulumi.Input.asOptionalInput<TablePointInTimeRecovery>(pointInTimeRecovery),
      rangeKey = pulumi.Input.asOptionalInput<String>(rangeKey),
      readCapacity = pulumi.Input.asOptionalInput<int>(readCapacity),
      region = pulumi.Input.asOptionalInput<String>(region),
      replicas = pulumi.Input.asOptionalInput<List<TableReplica>>(replicas),
      restoreDateTime = pulumi.Input.asOptionalInput<String>(restoreDateTime),
      restoreSourceName = pulumi.Input.asOptionalInput<String>(restoreSourceName),
      restoreSourceTableArn = pulumi.Input.asOptionalInput<String>(restoreSourceTableArn),
      restoreToLatestTime = pulumi.Input.asOptionalInput<bool>(restoreToLatestTime),
      serverSideEncryption = pulumi.Input.asOptionalInput<TableServerSideEncryption>(serverSideEncryption),
      streamEnabled = pulumi.Input.asOptionalInput<bool>(streamEnabled),
      streamViewType = pulumi.Input.asOptionalInput<String>(streamViewType),
      tableClass = pulumi.Input.asOptionalInput<String>(tableClass),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      ttl = pulumi.Input.asOptionalInput<TableTtl>(ttl),
      warmThroughput = pulumi.Input.asOptionalInput<TableWarmThroughput>(warmThroughput),
      writeCapacity = pulumi.Input.asOptionalInput<int>(writeCapacity);

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
      attributes: map['attributes'] == null ? null : pulumi.Output.create<List<TableAttribute>>(pulumi.Input.decodeList<TableAttribute>(map['attributes'], (value) => TableAttribute.fromMap((value as Map).cast<String, dynamic>()))),
      billingMode: map['billingMode'] == null ? null : pulumi.Output.create<String>(map['billingMode'] as String),
      deletionProtectionEnabled: map['deletionProtectionEnabled'] == null ? null : pulumi.Output.create<bool>(map['deletionProtectionEnabled'] as bool),
      globalSecondaryIndexes: map['globalSecondaryIndexes'] == null ? null : pulumi.Output.create<List<TableGlobalSecondaryIndex>>(pulumi.Input.decodeList<TableGlobalSecondaryIndex>(map['globalSecondaryIndexes'], (value) => TableGlobalSecondaryIndex.fromMap((value as Map).cast<String, dynamic>()))),
      globalTableWitness: map['globalTableWitness'] == null ? null : pulumi.Output.create<TableGlobalTableWitness>(TableGlobalTableWitness.fromMap((map['globalTableWitness'] as Map).cast<String, dynamic>())),
      hashKey: map['hashKey'] == null ? null : pulumi.Output.create<String>(map['hashKey'] as String),
      importTable: map['importTable'] == null ? null : pulumi.Output.create<TableImportTable>(TableImportTable.fromMap((map['importTable'] as Map).cast<String, dynamic>())),
      localSecondaryIndexes: map['localSecondaryIndexes'] == null ? null : pulumi.Output.create<List<TableLocalSecondaryIndex>>(pulumi.Input.decodeList<TableLocalSecondaryIndex>(map['localSecondaryIndexes'], (value) => TableLocalSecondaryIndex.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      onDemandThroughput: map['onDemandThroughput'] == null ? null : pulumi.Output.create<TableOnDemandThroughput>(TableOnDemandThroughput.fromMap((map['onDemandThroughput'] as Map).cast<String, dynamic>())),
      pointInTimeRecovery: map['pointInTimeRecovery'] == null ? null : pulumi.Output.create<TablePointInTimeRecovery>(TablePointInTimeRecovery.fromMap((map['pointInTimeRecovery'] as Map).cast<String, dynamic>())),
      rangeKey: map['rangeKey'] == null ? null : pulumi.Output.create<String>(map['rangeKey'] as String),
      readCapacity: map['readCapacity'] == null ? null : pulumi.Output.create<int>(map['readCapacity'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      replicas: map['replicas'] == null ? null : pulumi.Output.create<List<TableReplica>>(pulumi.Input.decodeList<TableReplica>(map['replicas'], (value) => TableReplica.fromMap((value as Map).cast<String, dynamic>()))),
      restoreDateTime: map['restoreDateTime'] == null ? null : pulumi.Output.create<String>(map['restoreDateTime'] as String),
      restoreSourceName: map['restoreSourceName'] == null ? null : pulumi.Output.create<String>(map['restoreSourceName'] as String),
      restoreSourceTableArn: map['restoreSourceTableArn'] == null ? null : pulumi.Output.create<String>(map['restoreSourceTableArn'] as String),
      restoreToLatestTime: map['restoreToLatestTime'] == null ? null : pulumi.Output.create<bool>(map['restoreToLatestTime'] as bool),
      serverSideEncryption: map['serverSideEncryption'] == null ? null : pulumi.Output.create<TableServerSideEncryption>(TableServerSideEncryption.fromMap((map['serverSideEncryption'] as Map).cast<String, dynamic>())),
      streamEnabled: map['streamEnabled'] == null ? null : pulumi.Output.create<bool>(map['streamEnabled'] as bool),
      streamViewType: map['streamViewType'] == null ? null : pulumi.Output.create<String>(map['streamViewType'] as String),
      tableClass: map['tableClass'] == null ? null : pulumi.Output.create<String>(map['tableClass'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      ttl: map['ttl'] == null ? null : pulumi.Output.create<TableTtl>(TableTtl.fromMap((map['ttl'] as Map).cast<String, dynamic>())),
      warmThroughput: map['warmThroughput'] == null ? null : pulumi.Output.create<TableWarmThroughput>(TableWarmThroughput.fromMap((map['warmThroughput'] as Map).cast<String, dynamic>())),
      writeCapacity: map['writeCapacity'] == null ? null : pulumi.Output.create<int>(map['writeCapacity'] as int),
    );
  }
}

