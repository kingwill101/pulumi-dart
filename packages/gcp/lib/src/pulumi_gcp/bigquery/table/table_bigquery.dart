import 'package:pulumi/pulumi.dart' as pulumi;
import '../table_biglake_configuration/table_biglake_configuration.dart';
import '../table_encryption_configuration/table_encryption_configuration.dart';
import '../table_external_catalog_table_options/table_external_catalog_table_options.dart';
import '../table_external_data_configuration/table_external_data_configuration.dart';
import '../table_materialized_view/table_materialized_view.dart';
import '../table_range_partitioning/table_range_partitioning.dart';
import '../table_schema_foreign_type_info/table_schema_foreign_type_info.dart';
import '../table_table_constraints/table_table_constraints.dart';
import '../table_table_replication_info/table_table_replication_info.dart';
import '../table_time_partitioning/table_time_partitioning.dart';
import '../table_view/table_view.dart';
import 'table_bigquery_args.dart';

/// Creates a table resource in a dataset for Google BigQuery. For more information see
/// [the official documentation](https://cloud.google.com/bigquery/docs/) and
/// [API](https://cloud.google.com/bigquery/docs/reference/rest/v2/tables).
///
/// > **Note**: On newer versions of the provider, you must explicitly set `deletion_protection=false`
/// (and run `pulumi update` to write the field to state) in order to destroy an instance.
/// It is recommended to not set this field (or set it to true) until you're ready to destroy.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// BigQuery tables can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/datasets/{{dataset_id}}/tables/{{table_id}}`
///
/// * `{{project}}/{{dataset_id}}/{{table_id}}`
///
/// * `{{dataset_id}}/{{table_id}}`
///
/// When using the `pulumi import` command, BigQuery tables can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:bigquery/table:Table default projects/{{project}}/datasets/{{dataset_id}}/tables/{{table_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigquery/table:Table default {{project}}/{{dataset_id}}/{{table_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigquery/table:Table default {{dataset_id}}/{{table_id}}
/// ```
class TableBigquery extends pulumi.CustomResource {
  /// Specifies the configuration of a BigLake managed table. Structure is documented below
  late final pulumi.Output<TableBiglakeConfiguration?> biglakeConfiguration;

  /// Specifies column names to use for data clustering.
  /// Up to four top-level columns are allowed, and should be specified in
  /// descending priority order.
  late final pulumi.Output<List<String>?> clusterings;

  /// The time when this table was created, in milliseconds since the epoch.
  late final pulumi.Output<int> creationTime;

  /// The dataset ID to create the table in.
  /// Changing this forces a new resource to be created.
  late final pulumi.Output<String> datasetId;

  /// Whether or not to allow the provider to destroy the instance. Unless this field is set to false
  /// in state, a `=destroy` or `=update` that would delete the instance will fail.
  late final pulumi.Output<bool?> deletionProtection;

  /// The field description.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  ///
  /// * <a name="schema"></a>`schema` - (Optional) A JSON schema for the table.
  ///
  /// ~>**NOTE:** Because this field expects a JSON string, any changes to the
  /// string will create a diff, even if the JSON itself hasn't changed.
  /// If the API returns a different value for the same schema, e.g. it
  /// switched the order of values or replaced a field data type (`STRUCT` with
  /// `RECORD`, `DECIMAL` with `NUMERIC`, etc.), we currently cannot suppress
  /// the recurring diff this causes. As a workaround, we recommend using the
  /// schema as returned by the API.
  ///
  /// ~>**NOTE:**  If you use `external_data_configuration`
  /// documented below and do **not** set
  /// `external_data_configuration.connection_id`, schemas must be specified
  /// with `external_data_configuration.schema`. Otherwise, schemas must be
  /// specified with this top-level field.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Specifies how the table should be encrypted.
  /// If left blank, the table will be encrypted with a Google-managed key; that process
  /// is transparent to the user.  Structure is documented below.
  late final pulumi.Output<TableEncryptionConfiguration?>
      encryptionConfiguration;

  /// A hash of the resource.
  late final pulumi.Output<String> etag;

  /// The time when this table expires, in
  /// milliseconds since the epoch. If not present, the table will persist
  /// indefinitely. Expired tables will be deleted and their storage
  /// reclaimed.
  late final pulumi.Output<int> expirationTime;

  /// Options defining open source
  /// compatible table. Structure is documented below.
  late final pulumi.Output<TableExternalCatalogTableOptions?>
      externalCatalogTableOptions;

  /// Describes the data format,
  /// location, and other properties of a table stored outside of BigQuery.
  /// By defining these properties, the data source can then be queried as
  /// if it were a standard BigQuery table. Structure is documented below.
  late final pulumi.Output<TableExternalDataConfiguration?>
      externalDataConfiguration;

  /// A descriptive name for the table.
  late final pulumi.Output<String?> friendlyName;

  /// (Output-only) A list of autogenerated schema fields.
  late final pulumi.Output<String> generatedSchemaColumns;
  late final pulumi.Output<bool?> ignoreAutoGeneratedSchema;

  /// Mention which fields in schema are to be ignored
  late final pulumi.Output<List<String>?> ignoreSchemaChanges;

  /// A mapping of labels to assign to the resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The time when this table was last modified, in milliseconds since the epoch.
  late final pulumi.Output<int> lastModifiedTime;

  /// The geographic location where the table resides. This value is inherited from the dataset.
  late final pulumi.Output<String> location;

  /// If specified, configures this table as a materialized view.
  /// Structure is documented below.
  late final pulumi.Output<TableMaterializedView?> materializedView;

  /// The maximum staleness of data that could be
  /// returned when the table (or stale MV) is queried. Staleness encoded as a
  /// string encoding of [SQL IntervalValue
  /// type](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-types#interval_type).
  late final pulumi.Output<String> maxStaleness;

  /// The size of this table in bytes, excluding any data in the streaming buffer.
  late final pulumi.Output<int> numBytes;

  /// The number of bytes in the table that are considered "long-term storage".
  late final pulumi.Output<int> numLongTermBytes;

  /// The number of rows of data in this table, excluding any data in the streaming buffer.
  late final pulumi.Output<int> numRows;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// If specified, configures range-based
  /// partitioning for this table. Structure is documented below.
  late final pulumi.Output<TableRangePartitioning?> rangePartitioning;

  /// If set to true, queries over this table
  /// require a partition filter that can be used for partition elimination to be
  /// specified.
  late final pulumi.Output<bool?> requirePartitionFilter;

  /// The tags attached to this table. Tag keys are
  /// globally unique. Tag key is expected to be in the namespaced format, for
  /// example "123456789012/environment" where 123456789012 is the ID of the
  /// parent organization or project resource for this tag key. Tag value is
  /// expected to be the short name, for example "Production". See [Tag definitions](https://cloud.google.com/iam/docs/tags-access-control#definitions)
  /// for more details.
  late final pulumi.Output<Map<String, String>?> resourceTags;

  /// A JSON schema for the table.
  late final pulumi.Output<String> schema;

  /// Specifies metadata of the foreign data
  /// type definition in field schema. Structure is documented below.
  late final pulumi.Output<TableSchemaForeignTypeInfo?> schemaForeignTypeInfo;

  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// Defines the primary key and foreign keys.
  /// Structure is documented below.
  late final pulumi.Output<TableTableConstraints?> tableConstraints;

  /// A unique ID for the resource.
  /// Changing this forces a new resource to be created.
  late final pulumi.Output<String> tableId;

  /// View sets the optional parameter "view": Specifies the view that determines which table information is returned. By default, basic table information and storage statistics (STORAGE_STATS) are returned. Possible values: TABLE_METADATA_VIEW_UNSPECIFIED, BASIC, STORAGE_STATS, FULL
  late final pulumi.Output<String?> tableMetadataView;

  /// Replication info of a table created
  /// using "AS REPLICA" DDL like:
  /// `CREATE MATERIALIZED VIEW mv1 AS REPLICA OF src_mv`.
  /// Structure is documented below.
  late final pulumi.Output<TableTableReplicationInfo?> tableReplicationInfo;

  /// If specified, configures time-based
  /// partitioning for this table. Structure is documented below.
  late final pulumi.Output<TableTimePartitioning?> timePartitioning;

  /// Describes the table type.
  late final pulumi.Output<String> type;

  /// If specified, configures this table as a view.
  /// Structure is documented below.
  late final pulumi.Output<TableView?> view;

  TableBigquery(
    String name, {
    TableBigqueryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigquery/table:Table',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.biglakeConfiguration =
        registerOutput<TableBiglakeConfiguration?>('biglakeConfiguration');
    this.clusterings = registerOutput<List<String>?>('clusterings');
    this.creationTime = registerOutput<int>('creationTime');
    this.datasetId = registerOutput<String>('datasetId');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.encryptionConfiguration =
        registerOutput<TableEncryptionConfiguration?>(
            'encryptionConfiguration');
    this.etag = registerOutput<String>('etag');
    this.expirationTime = registerOutput<int>('expirationTime');
    this.externalCatalogTableOptions =
        registerOutput<TableExternalCatalogTableOptions?>(
            'externalCatalogTableOptions');
    this.externalDataConfiguration =
        registerOutput<TableExternalDataConfiguration?>(
            'externalDataConfiguration');
    this.friendlyName = registerOutput<String?>('friendlyName');
    this.generatedSchemaColumns =
        registerOutput<String>('generatedSchemaColumns');
    this.ignoreAutoGeneratedSchema =
        registerOutput<bool?>('ignoreAutoGeneratedSchema');
    this.ignoreSchemaChanges =
        registerOutput<List<String>?>('ignoreSchemaChanges');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.lastModifiedTime = registerOutput<int>('lastModifiedTime');
    this.location = registerOutput<String>('location');
    this.materializedView =
        registerOutput<TableMaterializedView?>('materializedView');
    this.maxStaleness = registerOutput<String>('maxStaleness');
    this.numBytes = registerOutput<int>('numBytes');
    this.numLongTermBytes = registerOutput<int>('numLongTermBytes');
    this.numRows = registerOutput<int>('numRows');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.rangePartitioning =
        registerOutput<TableRangePartitioning?>('rangePartitioning');
    this.requirePartitionFilter =
        registerOutput<bool?>('requirePartitionFilter');
    this.resourceTags = registerOutput<Map<String, String>?>('resourceTags');
    this.schema = registerOutput<String>('schema');
    this.schemaForeignTypeInfo =
        registerOutput<TableSchemaForeignTypeInfo?>('schemaForeignTypeInfo');
    this.selfLink = registerOutput<String>('selfLink');
    this.tableConstraints =
        registerOutput<TableTableConstraints?>('tableConstraints');
    this.tableId = registerOutput<String>('tableId');
    this.tableMetadataView = registerOutput<String?>('tableMetadataView');
    this.tableReplicationInfo =
        registerOutput<TableTableReplicationInfo?>('tableReplicationInfo');
    this.timePartitioning =
        registerOutput<TableTimePartitioning?>('timePartitioning');
    this.type = registerOutput<String>('type');
    this.view = registerOutput<TableView?>('view');
  }
}
