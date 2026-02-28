// ignore_for_file: unused_element, unnecessary_cast

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
import 'table_constraints_response.dart';
import 'table_reference_response.dart';
import 'table_schema_response.dart';
import 'time_partitioning_response.dart';
import 'view_definition_response.dart';

/// Result data returned by getTable.
class GetTableResult {
  /// [Optional] Specifies the configuration of a BigLake managed table.
  final BigLakeConfigurationResponse biglakeConfiguration;

  /// Clone definition.
  final CloneDefinitionResponse cloneDefinition;

  /// [Beta] Clustering specification for the table. Must be specified with partitioning, data in the table will be first partitioned and subsequently clustered.
  final ClusteringResponse clustering;

  /// The time when this table was created, in milliseconds since the epoch.
  final String creationTime;

  /// The default collation of the table.
  final String defaultCollation;

  /// The default rounding mode of the table.
  final String defaultRoundingMode;

  /// [Optional] A user-friendly description of this table.
  final String description;

  /// Custom encryption configuration (e.g., Cloud KMS keys).
  final EncryptionConfigurationResponse encryptionConfiguration;

  /// A hash of the table metadata. Used to ensure there were no concurrent modifications to the resource when attempting an update. Not guaranteed to change when the table contents or the fields numRows, numBytes, numLongTermBytes or lastModifiedTime change.
  final String etag;

  /// [Optional] The time when this table expires, in milliseconds since the epoch. If not present, the table will persist indefinitely. Expired tables will be deleted and their storage reclaimed. The defaultTableExpirationMs property of the encapsulating dataset can be used to set a default expirationTime on newly created tables.
  final String expirationTime;

  /// [Optional] Describes the data format, location, and other properties of a table stored outside of BigQuery. By defining these properties, the data source can then be queried as if it were a standard BigQuery table.
  final ExternalDataConfigurationResponse externalDataConfiguration;

  /// [Optional] A descriptive name for this table.
  final String friendlyName;

  /// The type of the resource.
  final String kind;

  /// The labels associated with this table. You can use these to organize and group your tables. Label keys and values can be no longer than 63 characters, can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter and each label in the list must have a different key.
  final Map<String, String> labels;

  /// The time when this table was last modified, in milliseconds since the epoch.
  final String lastModifiedTime;

  /// The geographic location where the table resides. This value is inherited from the dataset.
  final String location;

  /// [Optional] Materialized view definition.
  final MaterializedViewDefinitionResponse materializedView;

  /// [Optional] Max staleness of data that could be returned when table or materialized view is queried (formatted as Google SQL Interval type).
  final String maxStaleness;

  /// [Output-only, Beta] Present iff this table represents a ML model. Describes the training information for the model, and it is required to run 'PREDICT' queries.
  final ModelDefinitionResponse model;

  /// Number of logical bytes that are less than 90 days old.
  final String numActiveLogicalBytes;

  /// Number of physical bytes less than 90 days old. This data is not kept in real time, and might be delayed by a few seconds to a few minutes.
  final String numActivePhysicalBytes;

  /// The size of this table in bytes, excluding any data in the streaming buffer.
  final String numBytes;

  /// The number of bytes in the table that are considered "long-term storage".
  final String numLongTermBytes;

  /// Number of logical bytes that are more than 90 days old.
  final String numLongTermLogicalBytes;

  /// Number of physical bytes more than 90 days old. This data is not kept in real time, and might be delayed by a few seconds to a few minutes.
  final String numLongTermPhysicalBytes;

  /// The number of partitions present in the table or materialized view. This data is not kept in real time, and might be delayed by a few seconds to a few minutes.
  final String numPartitions;

  /// [TrustedTester] The physical size of this table in bytes, excluding any data in the streaming buffer. This includes compression and storage used for time travel.
  final String numPhysicalBytes;

  /// The number of rows of data in this table, excluding any data in the streaming buffer.
  final String numRows;

  /// Number of physical bytes used by time travel storage (deleted or changed data). This data is not kept in real time, and might be delayed by a few seconds to a few minutes.
  final String numTimeTravelPhysicalBytes;

  /// Total number of logical bytes in the table or materialized view.
  final String numTotalLogicalBytes;

  /// The physical size of this table in bytes. This also includes storage used for time travel. This data is not kept in real time, and might be delayed by a few seconds to a few minutes.
  final String numTotalPhysicalBytes;

  /// [TrustedTester] Range partitioning specification for this table. Only one of timePartitioning and rangePartitioning should be specified.
  final RangePartitioningResponse rangePartitioning;

  /// [Optional] If set to true, queries over this table require a partition filter that can be used for partition elimination to be specified.
  final bool requirePartitionFilter;

  /// [Optional] The tags associated with this table. Tag keys are globally unique. See additional information on [tags](https://cloud.google.com/iam/docs/tags-access-control#definitions). An object containing a list of "key": value pairs. The key is the namespaced friendly name of the tag key, e.g. "12345/environment" where 12345 is parent id. The value is the friendly short name of the tag value, e.g. "production".
  final Map<String, String> resourceTags;

  /// [Optional] Describes the schema of this table.
  final TableSchemaResponse schema;

  /// A URL that can be used to access this resource again.
  final String selfLink;

  /// Snapshot definition.
  final SnapshotDefinitionResponse snapshotDefinition;

  /// Contains information regarding this table's streaming buffer, if one is present. This field will be absent if the table is not being streamed to or if there is no data in the streaming buffer.
  final StreamingbufferResponse streamingBuffer;

  /// [Optional] The table constraints on the table.
  final TableConstraintsResponse tableConstraints;

  /// [Required] Reference describing the ID of this table.
  final TableReferenceResponse tableReference;

  /// Time-based partitioning specification for this table. Only one of timePartitioning and rangePartitioning should be specified.
  final TimePartitioningResponse timePartitioning;

  /// Describes the table type. The following values are supported: TABLE: A normal BigQuery table. VIEW: A virtual table defined by a SQL query. SNAPSHOT: An immutable, read-only table that is a copy of another table. [TrustedTester] MATERIALIZED_VIEW: SQL query whose result is persisted. EXTERNAL: A table that references data stored in an external storage system, such as Google Cloud Storage. The default value is TABLE.
  final String type;

  /// [Optional] The view definition.
  final ViewDefinitionResponse view;

  /// Creates a new [GetTableResult].
  /// [biglakeConfiguration] [Optional] Specifies the configuration of a BigLake managed table.
  /// [cloneDefinition] Clone definition.
  /// [clustering] [Beta] Clustering specification for the table. Must be specified with partitioning, data in the table will be first partitioned and subsequently clustered.
  /// [creationTime] The time when this table was created, in milliseconds since the epoch.
  /// [defaultCollation] The default collation of the table.
  /// [defaultRoundingMode] The default rounding mode of the table.
  /// [description] [Optional] A user-friendly description of this table.
  /// [encryptionConfiguration] Custom encryption configuration (e.g., Cloud KMS keys).
  /// [etag] A hash of the table metadata. Used to ensure there were no concurrent modifications to the resource when attempting an update. Not guaranteed to change when the table contents or the fields numRows, numBytes, numLongTermBytes or lastModifiedTime change.
  /// [expirationTime] [Optional] The time when this table expires, in milliseconds since the epoch. If not present, the table will persist indefinitely. Expired tables will be deleted and their storage reclaimed. The defaultTableExpirationMs property of the encapsulating dataset can be used to set a default expirationTime on newly created tables.
  /// [externalDataConfiguration] [Optional] Describes the data format, location, and other properties of a table stored outside of BigQuery. By defining these properties, the data source can then be queried as if it were a standard BigQuery table.
  /// [friendlyName] [Optional] A descriptive name for this table.
  /// [kind] The type of the resource.
  /// [labels] The labels associated with this table. You can use these to organize and group your tables. Label keys and values can be no longer than 63 characters, can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter and each label in the list must have a different key.
  /// [lastModifiedTime] The time when this table was last modified, in milliseconds since the epoch.
  /// [location] The geographic location where the table resides. This value is inherited from the dataset.
  /// [materializedView] [Optional] Materialized view definition.
  /// [maxStaleness] [Optional] Max staleness of data that could be returned when table or materialized view is queried (formatted as Google SQL Interval type).
  /// [model] [Output-only, Beta] Present iff this table represents a ML model. Describes the training information for the model, and it is required to run 'PREDICT' queries.
  /// [numActiveLogicalBytes] Number of logical bytes that are less than 90 days old.
  /// [numActivePhysicalBytes] Number of physical bytes less than 90 days old. This data is not kept in real time, and might be delayed by a few seconds to a few minutes.
  /// [numBytes] The size of this table in bytes, excluding any data in the streaming buffer.
  /// [numLongTermBytes] The number of bytes in the table that are considered "long-term storage".
  /// [numLongTermLogicalBytes] Number of logical bytes that are more than 90 days old.
  /// [numLongTermPhysicalBytes] Number of physical bytes more than 90 days old. This data is not kept in real time, and might be delayed by a few seconds to a few minutes.
  /// [numPartitions] The number of partitions present in the table or materialized view. This data is not kept in real time, and might be delayed by a few seconds to a few minutes.
  /// [numPhysicalBytes] [TrustedTester] The physical size of this table in bytes, excluding any data in the streaming buffer. This includes compression and storage used for time travel.
  /// [numRows] The number of rows of data in this table, excluding any data in the streaming buffer.
  /// [numTimeTravelPhysicalBytes] Number of physical bytes used by time travel storage (deleted or changed data). This data is not kept in real time, and might be delayed by a few seconds to a few minutes.
  /// [numTotalLogicalBytes] Total number of logical bytes in the table or materialized view.
  /// [numTotalPhysicalBytes] The physical size of this table in bytes. This also includes storage used for time travel. This data is not kept in real time, and might be delayed by a few seconds to a few minutes.
  /// [rangePartitioning] [TrustedTester] Range partitioning specification for this table. Only one of timePartitioning and rangePartitioning should be specified.
  /// [requirePartitionFilter] [Optional] If set to true, queries over this table require a partition filter that can be used for partition elimination to be specified.
  /// [resourceTags] [Optional] The tags associated with this table. Tag keys are globally unique. See additional information on [tags](https://cloud.google.com/iam/docs/tags-access-control#definitions). An object containing a list of "key": value pairs. The key is the namespaced friendly name of the tag key, e.g. "12345/environment" where 12345 is parent id. The value is the friendly short name of the tag value, e.g. "production".
  /// [schema] [Optional] Describes the schema of this table.
  /// [selfLink] A URL that can be used to access this resource again.
  /// [snapshotDefinition] Snapshot definition.
  /// [streamingBuffer] Contains information regarding this table's streaming buffer, if one is present. This field will be absent if the table is not being streamed to or if there is no data in the streaming buffer.
  /// [tableConstraints] [Optional] The table constraints on the table.
  /// [tableReference] [Required] Reference describing the ID of this table.
  /// [timePartitioning] Time-based partitioning specification for this table. Only one of timePartitioning and rangePartitioning should be specified.
  /// [type] Describes the table type. The following values are supported: TABLE: A normal BigQuery table. VIEW: A virtual table defined by a SQL query. SNAPSHOT: An immutable, read-only table that is a copy of another table. [TrustedTester] MATERIALIZED_VIEW: SQL query whose result is persisted. EXTERNAL: A table that references data stored in an external storage system, such as Google Cloud Storage. The default value is TABLE.
  /// [view] [Optional] The view definition.
  GetTableResult({
    required this.biglakeConfiguration,
    required this.cloneDefinition,
    required this.clustering,
    required this.creationTime,
    required this.defaultCollation,
    required this.defaultRoundingMode,
    required this.description,
    required this.encryptionConfiguration,
    required this.etag,
    required this.expirationTime,
    required this.externalDataConfiguration,
    required this.friendlyName,
    required this.kind,
    required this.labels,
    required this.lastModifiedTime,
    required this.location,
    required this.materializedView,
    required this.maxStaleness,
    required this.model,
    required this.numActiveLogicalBytes,
    required this.numActivePhysicalBytes,
    required this.numBytes,
    required this.numLongTermBytes,
    required this.numLongTermLogicalBytes,
    required this.numLongTermPhysicalBytes,
    required this.numPartitions,
    required this.numPhysicalBytes,
    required this.numRows,
    required this.numTimeTravelPhysicalBytes,
    required this.numTotalLogicalBytes,
    required this.numTotalPhysicalBytes,
    required this.rangePartitioning,
    required this.requirePartitionFilter,
    required this.resourceTags,
    required this.schema,
    required this.selfLink,
    required this.snapshotDefinition,
    required this.streamingBuffer,
    required this.tableConstraints,
    required this.tableReference,
    required this.timePartitioning,
    required this.type,
    required this.view,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['biglakeConfiguration'] = biglakeConfiguration.toMap();
    map['cloneDefinition'] = cloneDefinition.toMap();
    map['clustering'] = clustering.toMap();
    map['creationTime'] = creationTime;
    map['defaultCollation'] = defaultCollation;
    map['defaultRoundingMode'] = defaultRoundingMode;
    map['description'] = description;
    map['encryptionConfiguration'] = encryptionConfiguration.toMap();
    map['etag'] = etag;
    map['expirationTime'] = expirationTime;
    map['externalDataConfiguration'] = externalDataConfiguration.toMap();
    map['friendlyName'] = friendlyName;
    map['kind'] = kind;
    map['labels'] = labels;
    map['lastModifiedTime'] = lastModifiedTime;
    map['location'] = location;
    map['materializedView'] = materializedView.toMap();
    map['maxStaleness'] = maxStaleness;
    map['model'] = model.toMap();
    map['numActiveLogicalBytes'] = numActiveLogicalBytes;
    map['numActivePhysicalBytes'] = numActivePhysicalBytes;
    map['numBytes'] = numBytes;
    map['numLongTermBytes'] = numLongTermBytes;
    map['numLongTermLogicalBytes'] = numLongTermLogicalBytes;
    map['numLongTermPhysicalBytes'] = numLongTermPhysicalBytes;
    map['numPartitions'] = numPartitions;
    map['numPhysicalBytes'] = numPhysicalBytes;
    map['numRows'] = numRows;
    map['numTimeTravelPhysicalBytes'] = numTimeTravelPhysicalBytes;
    map['numTotalLogicalBytes'] = numTotalLogicalBytes;
    map['numTotalPhysicalBytes'] = numTotalPhysicalBytes;
    map['rangePartitioning'] = rangePartitioning.toMap();
    map['requirePartitionFilter'] = requirePartitionFilter;
    map['resourceTags'] = resourceTags;
    map['schema'] = schema.toMap();
    map['selfLink'] = selfLink;
    map['snapshotDefinition'] = snapshotDefinition.toMap();
    map['streamingBuffer'] = streamingBuffer.toMap();
    map['tableConstraints'] = tableConstraints.toMap();
    map['tableReference'] = tableReference.toMap();
    map['timePartitioning'] = timePartitioning.toMap();
    map['type'] = type;
    map['view'] = view.toMap();
    return map;
  }

  factory GetTableResult.fromMap(Map<String, dynamic> map) {
    return GetTableResult(
      biglakeConfiguration: BigLakeConfigurationResponse.fromMap(
          (map['biglakeConfiguration'] as Map).cast<String, dynamic>()),
      cloneDefinition: CloneDefinitionResponse.fromMap(
          (map['cloneDefinition'] as Map).cast<String, dynamic>()),
      clustering: ClusteringResponse.fromMap(
          (map['clustering'] as Map).cast<String, dynamic>()),
      creationTime: map['creationTime'] as String,
      defaultCollation: map['defaultCollation'] as String,
      defaultRoundingMode: map['defaultRoundingMode'] as String,
      description: map['description'] as String,
      encryptionConfiguration: EncryptionConfigurationResponse.fromMap(
          (map['encryptionConfiguration'] as Map).cast<String, dynamic>()),
      etag: map['etag'] as String,
      expirationTime: map['expirationTime'] as String,
      externalDataConfiguration: ExternalDataConfigurationResponse.fromMap(
          (map['externalDataConfiguration'] as Map).cast<String, dynamic>()),
      friendlyName: map['friendlyName'] as String,
      kind: map['kind'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      lastModifiedTime: map['lastModifiedTime'] as String,
      location: map['location'] as String,
      materializedView: MaterializedViewDefinitionResponse.fromMap(
          (map['materializedView'] as Map).cast<String, dynamic>()),
      maxStaleness: map['maxStaleness'] as String,
      model: ModelDefinitionResponse.fromMap(
          (map['model'] as Map).cast<String, dynamic>()),
      numActiveLogicalBytes: map['numActiveLogicalBytes'] as String,
      numActivePhysicalBytes: map['numActivePhysicalBytes'] as String,
      numBytes: map['numBytes'] as String,
      numLongTermBytes: map['numLongTermBytes'] as String,
      numLongTermLogicalBytes: map['numLongTermLogicalBytes'] as String,
      numLongTermPhysicalBytes: map['numLongTermPhysicalBytes'] as String,
      numPartitions: map['numPartitions'] as String,
      numPhysicalBytes: map['numPhysicalBytes'] as String,
      numRows: map['numRows'] as String,
      numTimeTravelPhysicalBytes: map['numTimeTravelPhysicalBytes'] as String,
      numTotalLogicalBytes: map['numTotalLogicalBytes'] as String,
      numTotalPhysicalBytes: map['numTotalPhysicalBytes'] as String,
      rangePartitioning: RangePartitioningResponse.fromMap(
          (map['rangePartitioning'] as Map).cast<String, dynamic>()),
      requirePartitionFilter: map['requirePartitionFilter'] as bool,
      resourceTags: (map['resourceTags'] as Map).cast<String, String>(),
      schema: TableSchemaResponse.fromMap(
          (map['schema'] as Map).cast<String, dynamic>()),
      selfLink: map['selfLink'] as String,
      snapshotDefinition: SnapshotDefinitionResponse.fromMap(
          (map['snapshotDefinition'] as Map).cast<String, dynamic>()),
      streamingBuffer: StreamingbufferResponse.fromMap(
          (map['streamingBuffer'] as Map).cast<String, dynamic>()),
      tableConstraints: TableConstraintsResponse.fromMap(
          (map['tableConstraints'] as Map).cast<String, dynamic>()),
      tableReference: TableReferenceResponse.fromMap(
          (map['tableReference'] as Map).cast<String, dynamic>()),
      timePartitioning: TimePartitioningResponse.fromMap(
          (map['timePartitioning'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      view: ViewDefinitionResponse.fromMap(
          (map['view'] as Map).cast<String, dynamic>()),
    );
  }
}
