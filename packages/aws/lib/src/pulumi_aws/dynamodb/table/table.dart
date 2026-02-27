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
import 'table_args.dart';

/// Provides a DynamoDB table resource.
///
/// > **Note:** It is recommended to use [`ignoreChanges`](https://www.pulumi.com/docs/intro/concepts/programming-model/#ignorechanges) for `read_capacity` and/or `write_capacity` if there's `autoscaling policy` attached to the table.
///
/// > **Note:** When using aws.dynamodb.TableReplica with this resource, use `lifecycle` `ignore_changes` for `replica`, _e.g._, `lifecycle { ignore_changes = [replica] }`.
///
/// > **Note:** If autoscaling creates drift for your `global_secondary_index` blocks and/or more granular `lifecycle` management for GSIs, we recommend using the new **experimental** resource `aws.dynamodb.GlobalSecondaryIndex`.
///
/// ## DynamoDB Table attributes
///
/// Only define attributes on the table object that are going to be used as:
///
/// * Table hash key or range key
/// * LSI or GSI hash key or range key
///
/// The DynamoDB API expects attribute structure (name and type) to be passed along when creating or updating GSI/LSIs or creating the initial table. In these cases it expects the Hash / Range keys to be provided. Because these get re-used in numerous places (i.e the table's range key could be a part of one or more GSIs), they are stored on the table object to prevent duplication and increase consistency. If you add attributes here that are not used in these scenarios it can cause an infinite loop in planning.
///
/// > **Note:** When using the `aws.dynamodb.GlobalSecondaryIndex` resource, you do not need to define the attributes for externally managed GSIs in the `aws.dynamodb.Table` resource.
///
/// ## Example Usage
///
/// ### Basic Example
///
/// The following dynamodb table description models the table and GSI shown in the [AWS SDK example documentation](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GSI.html)
///
///
///
/// ### Basic Example containing Global Secondary Indexes using Multi-attribute keys pattern
///
/// The following dynamodb table description models the table and GSIs shown in the [AWS SDK example documentation](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GSI.DesignPattern.MultiAttributeKeys.html)
///
/// > **Note:** Multi-attribute keys for GSIs use the `key_schema` block instead of `hash_key`/`range_key`. The `hash_key` and `range_key` arguments are deprecated in favor of `key_schema`.
///
///
///
/// ### Global Tables
///
/// This resource implements support for [DynamoDB Global Tables V2 (version 2019.11.21)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html) via `replica` configuration blocks. For working with [DynamoDB Global Tables V1 (version 2017.11.29)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V1.html), see the `aws.dynamodb.GlobalTable` resource.
///
/// > **Note:** aws.dynamodb.TableReplica is an alternate way of configuring Global Tables. Do not use `replica` configuration blocks of `aws.dynamodb.Table` together with aws_dynamodb_table_replica.
///
///
///
/// ### Global Tables with Multi-Region Strong Consistency
///
/// A global table configured for Multi-Region strong consistency (MRSC) provides the ability to perform a strongly consistent read with multi-Region scope. Performing a strongly consistent read on an MRSC table ensures you're always reading the latest version of an item, irrespective of the Region in which you're performing the read.
///
/// You can configure a MRSC global table with three replicas, or with two replicas and one witness. A witness is a component of a MRSC global table that contains data written to global table replicas, and provides an optional alternative to a full replica while supporting MRSC's availability architecture. You cannot perform read or write operations on a witness. A witness is located in a different Region than the two replicas.
///
/// **Note** Please see detailed information, restrictions, caveats etc on the [AWS Support Page](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/multi-region-strong-consistency-gt.html).
///
/// Consistency Mode (`consistency_mode`) on the embedded `replica` allows you to configure consistency mode for Global Tables.
///
/// ##### Consistency mode with 3 Replicas
///
///
///
/// ##### Consistency Mode with 2 Replicas and Witness Region
///
///
///
/// ### Replica Tagging
///
/// You can manage global table replicas' tags in various ways. This example shows using `replica.*.propagate_tags` for the first replica and the `aws.dynamodb.Tag` resource for the other.
///
///
///
/// ## Import
///
/// Using `pulumi import`, import DynamoDB tables using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:dynamodb/table:Table basic-dynamodb-table GameScores
/// ```
class Table extends CustomResource {
  /// ARN of the table
  late final Output<String> arn;

  /// Set of nested attribute definitions. Only required for `hash_key` and `range_key` attributes. See below.
  late final Output<List<TableAttribute>> attributes;

  /// Controls how you are charged for read and write throughput and how you manage capacity. The valid values are `PROVISIONED` and `PAY_PER_REQUEST`. Defaults to `PROVISIONED`.
  late final Output<String?> billingMode;

  /// Enables deletion protection for table. Defaults to `false`.
  late final Output<bool?> deletionProtectionEnabled;

  /// Describe a GSI for the table; subject to the normal limits on the number of GSIs, projected attributes, etc. See below.
  late final Output<List<TableGlobalSecondaryIndex>> globalSecondaryIndexes;

  /// Witness Region in a Multi-Region Strong Consistency deployment. **Note** This must be used alongside a single `replica` with `consistency_mode` set to `STRONG`. Other combinations will fail to provision. See below.
  late final Output<TableGlobalTableWitness> globalTableWitness;

  /// Attribute to use as the hash (partition) key. Must also be defined as an `attribute`. See below.
  late final Output<String> hashKey;

  /// Import Amazon S3 data into a new table. See below.
  late final Output<TableImportTable?> importTable;

  /// Describe an LSI on the table; these can only be allocated _at creation_ so you cannot change this definition after you have created the resource. See below.
  late final Output<List<TableLocalSecondaryIndex>?> localSecondaryIndexes;

  /// Unique within a region name of the table.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Sets the maximum number of read and write units for the specified on-demand table. See below.
  late final Output<TableOnDemandThroughput?> onDemandThroughput;

  /// Enable point-in-time recovery options. See below.
  late final Output<TablePointInTimeRecovery> pointInTimeRecovery;

  /// Attribute to use as the range (sort) key. Must also be defined as an `attribute`, see below.
  late final Output<String?> rangeKey;

  /// Number of read units for this table. If the `billing_mode` is `PROVISIONED`, this field is required.
  late final Output<int> readCapacity;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Configuration block(s) with [DynamoDB Global Tables V2 (version 2019.11.21)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html) replication configurations. See below.
  late final Output<List<TableReplica>?> replicas;

  /// Time of the point-in-time recovery point to restore.
  late final Output<String?> restoreDateTime;

  /// Name of the table to restore. Must match the name of an existing table.
  late final Output<String?> restoreSourceName;

  /// ARN of the source table to restore. Must be supplied for cross-region restores.
  late final Output<String?> restoreSourceTableArn;

  /// If set, restores table to the most recent point-in-time recovery point.
  late final Output<bool?> restoreToLatestTime;

  /// Encryption at rest options. AWS DynamoDB tables are automatically encrypted at rest with an AWS-owned Customer Master Key if this argument isn't specified. Must be supplied for cross-region restores. See below.
  late final Output<TableServerSideEncryption> serverSideEncryption;

  /// ARN of the Table Stream. Only available when `stream_enabled = true`
  late final Output<String> streamArn;

  /// Whether Streams are enabled.
  late final Output<bool?> streamEnabled;

  /// Timestamp, in ISO 8601 format, for this stream. Note that this timestamp is not a unique identifier for the stream on its own. However, the combination of AWS customer ID, table name and this field is guaranteed to be unique. It can be used for creating CloudWatch Alarms. Only available when `stream_enabled = true`.
  late final Output<String> streamLabel;

  /// When an item in the table is modified, StreamViewType determines what information is written to the table's stream.
  /// Valid values are `KEYS_ONLY`, `NEW_IMAGE`, `OLD_IMAGE`, `NEW_AND_OLD_IMAGES`.
  /// Only valid when `stream_enabled` is true.
  late final Output<String> streamViewType;

  /// Storage class of the table.
  /// Valid values are `STANDARD` and `STANDARD_INFREQUENT_ACCESS`.
  /// Default value is `STANDARD`.
  late final Output<String?> tableClass;

  /// A map of tags to populate on the created table. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Configuration block for TTL. See below.
  late final Output<TableTtl> ttl;

  /// Sets the number of warm read and write units for the specified table. See below.
  late final Output<TableWarmThroughput> warmThroughput;

  /// Number of write units for this table. If the `billing_mode` is `PROVISIONED`, this field is required.
  late final Output<int> writeCapacity;

  Table(
    String name, {
    TableArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:dynamodb/table:Table',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.attributes = registerOutput<List<TableAttribute>>('attributes');
    this.billingMode = registerOutput<String?>('billingMode');
    this.deletionProtectionEnabled =
        registerOutput<bool?>('deletionProtectionEnabled');
    this.globalSecondaryIndexes =
        registerOutput<List<TableGlobalSecondaryIndex>>(
            'globalSecondaryIndexes');
    this.globalTableWitness =
        registerOutput<TableGlobalTableWitness>('globalTableWitness');
    this.hashKey = registerOutput<String>('hashKey');
    this.importTable = registerOutput<TableImportTable?>('importTable');
    this.localSecondaryIndexes =
        registerOutput<List<TableLocalSecondaryIndex>?>(
            'localSecondaryIndexes');
    this.name = registerOutput<String>('name');
    this.onDemandThroughput =
        registerOutput<TableOnDemandThroughput?>('onDemandThroughput');
    this.pointInTimeRecovery =
        registerOutput<TablePointInTimeRecovery>('pointInTimeRecovery');
    this.rangeKey = registerOutput<String?>('rangeKey');
    this.readCapacity = registerOutput<int>('readCapacity');
    this.region = registerOutput<String>('region');
    this.replicas = registerOutput<List<TableReplica>?>('replicas');
    this.restoreDateTime = registerOutput<String?>('restoreDateTime');
    this.restoreSourceName = registerOutput<String?>('restoreSourceName');
    this.restoreSourceTableArn =
        registerOutput<String?>('restoreSourceTableArn');
    this.restoreToLatestTime = registerOutput<bool?>('restoreToLatestTime');
    this.serverSideEncryption =
        registerOutput<TableServerSideEncryption>('serverSideEncryption');
    this.streamArn = registerOutput<String>('streamArn');
    this.streamEnabled = registerOutput<bool?>('streamEnabled');
    this.streamLabel = registerOutput<String>('streamLabel');
    this.streamViewType = registerOutput<String>('streamViewType');
    this.tableClass = registerOutput<String?>('tableClass');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.ttl = registerOutput<TableTtl>('ttl');
    this.warmThroughput = registerOutput<TableWarmThroughput>('warmThroughput');
    this.writeCapacity = registerOutput<int>('writeCapacity');
  }
}
