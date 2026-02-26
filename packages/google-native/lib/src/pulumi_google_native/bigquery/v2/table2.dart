import 'package:pulumi/pulumi.dart';
import 'big_lake_configuration_response.dart';
import 'clone_definition_response.dart';
import 'clustering_response.dart';
import 'encryption_configuration_response.dart';
import 'external_data_configuration_response.dart';
import 'materialized_view_definition_response.dart';
import 'model_definition_response.dart';
import 'range_partitioning_response.dart';
import 'snapshot_definition_response.dart';
import 'streamingbuffer_response.dart';
import 'table_args2.dart';
import 'table_constraints_response.dart';
import 'table_reference_response.dart';
import 'table_schema_response.dart';
import 'time_partitioning_response.dart';
import 'view_definition_response.dart';

/// Creates a new, empty table in the dataset.
/// Auto-naming is currently not supported for this resource.
class Table2 extends CustomResource {
  /// [Optional] Specifies the configuration of a BigLake managed table.
  late final Output<BigLakeConfigurationResponse> biglakeConfiguration;

  /// Clone definition.
  late final Output<CloneDefinitionResponse> cloneDefinition;

  /// [Beta] Clustering specification for the table. Must be specified with partitioning, data in the table will be first partitioned and subsequently clustered.
  late final Output<ClusteringResponse> clustering;

  /// The time when this table was created, in milliseconds since the epoch.
  late final Output<String> creationTime;
  late final Output<String> datasetId;

  /// The default collation of the table.
  late final Output<String> defaultCollation;

  /// The default rounding mode of the table.
  late final Output<String> defaultRoundingMode;

  /// [Optional] A user-friendly description of this table.
  late final Output<String> description;

  /// Custom encryption configuration (e.g., Cloud KMS keys).
  late final Output<EncryptionConfigurationResponse> encryptionConfiguration;

  /// A hash of the table metadata. Used to ensure there were no concurrent modifications to the resource when attempting an update. Not guaranteed to change when the table contents or the fields numRows, numBytes, numLongTermBytes or lastModifiedTime change.
  late final Output<String> etag;

  /// [Optional] The time when this table expires, in milliseconds since the epoch. If not present, the table will persist indefinitely. Expired tables will be deleted and their storage reclaimed. The defaultTableExpirationMs property of the encapsulating dataset can be used to set a default expirationTime on newly created tables.
  late final Output<String> expirationTime;

  /// [Optional] Describes the data format, location, and other properties of a table stored outside of BigQuery. By defining these properties, the data source can then be queried as if it were a standard BigQuery table.
  late final Output<ExternalDataConfigurationResponse>
      externalDataConfiguration;

  /// [Optional] A descriptive name for this table.
  late final Output<String> friendlyName;

  /// The type of the resource.
  late final Output<String> kind;

  /// The labels associated with this table. You can use these to organize and group your tables. Label keys and values can be no longer than 63 characters, can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter and each label in the list must have a different key.
  late final Output<Map<String, String>> labels;

  /// The time when this table was last modified, in milliseconds since the epoch.
  late final Output<String> lastModifiedTime;

  /// The geographic location where the table resides. This value is inherited from the dataset.
  late final Output<String> location;

  /// [Optional] Materialized view definition.
  late final Output<MaterializedViewDefinitionResponse> materializedView;

  /// [Optional] Max staleness of data that could be returned when table or materialized view is queried (formatted as Google SQL Interval type).
  late final Output<String> maxStaleness;

  /// [Output-only, Beta] Present iff this table represents a ML model. Describes the training information for the model, and it is required to run 'PREDICT' queries.
  late final Output<ModelDefinitionResponse> model;

  /// Number of logical bytes that are less than 90 days old.
  late final Output<String> numActiveLogicalBytes;

  /// Number of physical bytes less than 90 days old. This data is not kept in real time, and might be delayed by a few seconds to a few minutes.
  late final Output<String> numActivePhysicalBytes;

  /// The size of this table in bytes, excluding any data in the streaming buffer.
  late final Output<String> numBytes;

  /// The number of bytes in the table that are considered "long-term storage".
  late final Output<String> numLongTermBytes;

  /// Number of logical bytes that are more than 90 days old.
  late final Output<String> numLongTermLogicalBytes;

  /// Number of physical bytes more than 90 days old. This data is not kept in real time, and might be delayed by a few seconds to a few minutes.
  late final Output<String> numLongTermPhysicalBytes;

  /// The number of partitions present in the table or materialized view. This data is not kept in real time, and might be delayed by a few seconds to a few minutes.
  late final Output<String> numPartitions;

  /// [TrustedTester] The physical size of this table in bytes, excluding any data in the streaming buffer. This includes compression and storage used for time travel.
  late final Output<String> numPhysicalBytes;

  /// The number of rows of data in this table, excluding any data in the streaming buffer.
  late final Output<String> numRows;

  /// Number of physical bytes used by time travel storage (deleted or changed data). This data is not kept in real time, and might be delayed by a few seconds to a few minutes.
  late final Output<String> numTimeTravelPhysicalBytes;

  /// Total number of logical bytes in the table or materialized view.
  late final Output<String> numTotalLogicalBytes;

  /// The physical size of this table in bytes. This also includes storage used for time travel. This data is not kept in real time, and might be delayed by a few seconds to a few minutes.
  late final Output<String> numTotalPhysicalBytes;
  late final Output<String> project;

  /// [TrustedTester] Range partitioning specification for this table. Only one of timePartitioning and rangePartitioning should be specified.
  late final Output<RangePartitioningResponse> rangePartitioning;

  /// [Optional] If set to true, queries over this table require a partition filter that can be used for partition elimination to be specified.
  late final Output<bool> requirePartitionFilter;

  /// [Optional] The tags associated with this table. Tag keys are globally unique. See additional information on [tags](https://cloud.google.com/iam/docs/tags-access-control#definitions). An object containing a list of "key": value pairs. The key is the namespaced friendly name of the tag key, e.g. "12345/environment" where 12345 is parent id. The value is the friendly short name of the tag value, e.g. "production".
  late final Output<Map<String, String>> resourceTags;

  /// [Optional] Describes the schema of this table.
  late final Output<TableSchemaResponse> schema;

  /// A URL that can be used to access this resource again.
  late final Output<String> selfLink;

  /// Snapshot definition.
  late final Output<SnapshotDefinitionResponse> snapshotDefinition;

  /// Contains information regarding this table's streaming buffer, if one is present. This field will be absent if the table is not being streamed to or if there is no data in the streaming buffer.
  late final Output<StreamingbufferResponse> streamingBuffer;

  /// [Optional] The table constraints on the table.
  late final Output<TableConstraintsResponse> tableConstraints;

  /// [Required] Reference describing the ID of this table.
  late final Output<TableReferenceResponse> tableReference;

  /// Time-based partitioning specification for this table. Only one of timePartitioning and rangePartitioning should be specified.
  late final Output<TimePartitioningResponse> timePartitioning;

  /// Describes the table type. The following values are supported: TABLE: A normal BigQuery table. VIEW: A virtual table defined by a SQL query. SNAPSHOT: An immutable, read-only table that is a copy of another table. [TrustedTester] MATERIALIZED_VIEW: SQL query whose result is persisted. EXTERNAL: A table that references data stored in an external storage system, such as Google Cloud Storage. The default value is TABLE.
  late final Output<String> type;

  /// [Optional] The view definition.
  late final Output<ViewDefinitionResponse> view;

  Table2(
    String name, {
    TableArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:bigquery/v2:Table',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.biglakeConfiguration =
        Output.createUnknown<BigLakeConfigurationResponse>();
    this.cloneDefinition = Output.createUnknown<CloneDefinitionResponse>();
    this.clustering = Output.createUnknown<ClusteringResponse>();
    this.creationTime = Output.createUnknown<String>();
    this.datasetId = Output.createUnknown<String>();
    this.defaultCollation = Output.createUnknown<String>();
    this.defaultRoundingMode = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.encryptionConfiguration =
        Output.createUnknown<EncryptionConfigurationResponse>();
    this.etag = Output.createUnknown<String>();
    this.expirationTime = Output.createUnknown<String>();
    this.externalDataConfiguration =
        Output.createUnknown<ExternalDataConfigurationResponse>();
    this.friendlyName = Output.createUnknown<String>();
    this.kind = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.lastModifiedTime = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.materializedView =
        Output.createUnknown<MaterializedViewDefinitionResponse>();
    this.maxStaleness = Output.createUnknown<String>();
    this.model = Output.createUnknown<ModelDefinitionResponse>();
    this.numActiveLogicalBytes = Output.createUnknown<String>();
    this.numActivePhysicalBytes = Output.createUnknown<String>();
    this.numBytes = Output.createUnknown<String>();
    this.numLongTermBytes = Output.createUnknown<String>();
    this.numLongTermLogicalBytes = Output.createUnknown<String>();
    this.numLongTermPhysicalBytes = Output.createUnknown<String>();
    this.numPartitions = Output.createUnknown<String>();
    this.numPhysicalBytes = Output.createUnknown<String>();
    this.numRows = Output.createUnknown<String>();
    this.numTimeTravelPhysicalBytes = Output.createUnknown<String>();
    this.numTotalLogicalBytes = Output.createUnknown<String>();
    this.numTotalPhysicalBytes = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.rangePartitioning = Output.createUnknown<RangePartitioningResponse>();
    this.requirePartitionFilter = Output.createUnknown<bool>();
    this.resourceTags = Output.createUnknown<Map<String, String>>();
    this.schema = Output.createUnknown<TableSchemaResponse>();
    this.selfLink = Output.createUnknown<String>();
    this.snapshotDefinition =
        Output.createUnknown<SnapshotDefinitionResponse>();
    this.streamingBuffer = Output.createUnknown<StreamingbufferResponse>();
    this.tableConstraints = Output.createUnknown<TableConstraintsResponse>();
    this.tableReference = Output.createUnknown<TableReferenceResponse>();
    this.timePartitioning = Output.createUnknown<TimePartitioningResponse>();
    this.type = Output.createUnknown<String>();
    this.view = Output.createUnknown<ViewDefinitionResponse>();
  }
}
