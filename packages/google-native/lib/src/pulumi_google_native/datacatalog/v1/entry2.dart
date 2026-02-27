import 'package:pulumi/pulumi.dart' hide Config;
import 'entry_args2.dart';
import 'google_cloud_datacatalog_v1_big_query_date_sharded_spec_response.dart';
import 'google_cloud_datacatalog_v1_big_query_table_spec_response.dart';
import 'google_cloud_datacatalog_v1_business_context_response.dart';
import 'google_cloud_datacatalog_v1_cloud_bigtable_system_spec_response.dart';
import 'google_cloud_datacatalog_v1_data_source_connection_spec_response.dart';
import 'google_cloud_datacatalog_v1_data_source_response.dart';
import 'google_cloud_datacatalog_v1_database_table_spec_response.dart';
import 'google_cloud_datacatalog_v1_dataset_spec_response.dart';
import 'google_cloud_datacatalog_v1_fileset_spec_response.dart';
import 'google_cloud_datacatalog_v1_gcs_fileset_spec_response.dart';
import 'google_cloud_datacatalog_v1_looker_system_spec_response.dart';
import 'google_cloud_datacatalog_v1_model_spec_response.dart';
import 'google_cloud_datacatalog_v1_personal_details_response.dart';
import 'google_cloud_datacatalog_v1_routine_spec_response.dart';
import 'google_cloud_datacatalog_v1_schema_response.dart';
import 'google_cloud_datacatalog_v1_service_spec_response.dart';
import 'google_cloud_datacatalog_v1_sql_database_system_spec_response.dart';
import 'google_cloud_datacatalog_v1_system_timestamps_response.dart';
import 'google_cloud_datacatalog_v1_usage_signal_response.dart';

/// Creates an entry. You can create entries only with 'FILESET', 'CLUSTER', 'DATA_STREAM', or custom types. Data Catalog automatically creates entries with other types during metadata ingestion from integrated systems. You must enable the Data Catalog API in the project identified by the `parent` parameter. For more information, see [Data Catalog resource project](https://cloud.google.com/data-catalog/docs/concepts/resource-project). An entry group can have a maximum of 100,000 entries.
/// Auto-naming is currently not supported for this resource.
class Entry2 extends CustomResource {
  /// Specification for a group of BigQuery tables with the `[prefix]YYYYMMDD` name pattern. For more information, see [Introduction to partitioned tables] (https://cloud.google.com/bigquery/docs/partitioned-tables#partitioning_versus_sharding).
  late final Output<GoogleCloudDatacatalogV1BigQueryDateShardedSpecResponse>
      bigqueryDateShardedSpec;

  /// Specification that applies to a BigQuery table. Valid only for entries with the `TABLE` type.
  late final Output<GoogleCloudDatacatalogV1BigQueryTableSpecResponse>
      bigqueryTableSpec;

  /// Business Context of the entry. Not supported for BigQuery datasets
  late final Output<GoogleCloudDatacatalogV1BusinessContextResponse>
      businessContext;

  /// Specification that applies to Cloud Bigtable system. Only settable when `integrated_system` is equal to `CLOUD_BIGTABLE`
  late final Output<GoogleCloudDatacatalogV1CloudBigtableSystemSpecResponse>
      cloudBigtableSystemSpec;

  /// Physical location of the entry.
  late final Output<GoogleCloudDatacatalogV1DataSourceResponse> dataSource;

  /// Specification that applies to a data source connection. Valid only for entries with the `DATA_SOURCE_CONNECTION` type.
  late final Output<GoogleCloudDatacatalogV1DataSourceConnectionSpecResponse>
      dataSourceConnectionSpec;

  /// Specification that applies to a table resource. Valid only for entries with the `TABLE` or `EXPLORE` type.
  late final Output<GoogleCloudDatacatalogV1DatabaseTableSpecResponse>
      databaseTableSpec;

  /// Specification that applies to a dataset.
  late final Output<GoogleCloudDatacatalogV1DatasetSpecResponse> datasetSpec;

  /// Entry description that can consist of several sentences or paragraphs that describe entry contents. The description must not contain Unicode non-characters as well as C0 and C1 control codes except tabs (HT), new lines (LF), carriage returns (CR), and page breaks (FF). The maximum size is 2000 bytes when encoded in UTF-8. Default value is an empty string.
  late final Output<String> description;

  /// Display name of an entry. The maximum size is 500 bytes when encoded in UTF-8. Default value is an empty string.
  late final Output<String> displayName;
  late final Output<String> entryGroupId;

  /// Required. The ID of the entry to create. The ID must contain only letters (a-z, A-Z), numbers (0-9), and underscores (_). The maximum size is 64 bytes when encoded in UTF-8.
  late final Output<String> entryId;

  /// Specification that applies to a fileset resource. Valid only for entries with the `FILESET` type.
  late final Output<GoogleCloudDatacatalogV1FilesetSpecResponse> filesetSpec;

  /// [Fully Qualified Name (FQN)](https://cloud.google.com//data-catalog/docs/fully-qualified-names) of the resource. Set automatically for entries representing resources from synced systems. Settable only during creation, and read-only later. Can be used for search and lookup of the entries.
  late final Output<String> fullyQualifiedName;

  /// Specification that applies to a Cloud Storage fileset. Valid only for entries with the `FILESET` type.
  late final Output<GoogleCloudDatacatalogV1GcsFilesetSpecResponse>
      gcsFilesetSpec;

  /// Indicates the entry's source system that Data Catalog integrates with, such as BigQuery, Pub/Sub, or Dataproc Metastore.
  late final Output<String> integratedSystem;

  /// Cloud labels attached to the entry. In Data Catalog, you can create and modify labels attached only to custom entries. Synced entries have unmodifiable labels that come from the source system.
  late final Output<Map<String, String>> labels;

  /// The resource this metadata entry refers to. For Google Cloud Platform resources, `linked_resource` is the [Full Resource Name] (https://cloud.google.com/apis/design/resource_names#full_resource_name). For example, the `linked_resource` for a table resource from BigQuery is: `//bigquery.googleapis.com/projects/{PROJECT_ID}/datasets/{DATASET_ID}/tables/{TABLE_ID}` Output only when the entry is one of the types in the `EntryType` enum. For entries with a `user_specified_type`, this field is optional and defaults to an empty string. The resource string must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), periods (.), colons (:), slashes (/), dashes (-), and hashes (#). The maximum size is 200 bytes when encoded in UTF-8.
  late final Output<String> linkedResource;
  late final Output<String> location;

  /// Specification that applies to Looker sysstem. Only settable when `user_specified_system` is equal to `LOOKER`
  late final Output<GoogleCloudDatacatalogV1LookerSystemSpecResponse>
      lookerSystemSpec;

  /// Model specification.
  late final Output<GoogleCloudDatacatalogV1ModelSpecResponse> modelSpec;

  /// The resource name of an entry in URL format. Note: The entry itself and its child resources might not be stored in the location specified in its name.
  late final Output<String> name;

  /// Additional information related to the entry. Private to the current user.
  late final Output<GoogleCloudDatacatalogV1PersonalDetailsResponse>
      personalDetails;
  late final Output<String> project;

  /// Specification that applies to a user-defined function or procedure. Valid only for entries with the `ROUTINE` type.
  late final Output<GoogleCloudDatacatalogV1RoutineSpecResponse> routineSpec;

  /// Schema of the entry. An entry might not have any schema attached to it.
  late final Output<GoogleCloudDatacatalogV1SchemaResponse> schema;

  /// Specification that applies to a Service resource.
  late final Output<GoogleCloudDatacatalogV1ServiceSpecResponse> serviceSpec;

  /// Timestamps from the underlying resource, not from the Data Catalog entry. Output only when the entry has a system listed in the `IntegratedSystem` enum. For entries with `user_specified_system`, this field is optional and defaults to an empty timestamp.
  late final Output<GoogleCloudDatacatalogV1SystemTimestampsResponse>
      sourceSystemTimestamps;

  /// Specification that applies to a relational database system. Only settable when `user_specified_system` is equal to `SQL_DATABASE`
  late final Output<GoogleCloudDatacatalogV1SqlDatabaseSystemSpecResponse>
      sqlDatabaseSystemSpec;

  /// The type of the entry. For details, see [`EntryType`](#entrytype).
  late final Output<String> type;

  /// Resource usage statistics.
  late final Output<GoogleCloudDatacatalogV1UsageSignalResponse> usageSignal;

  /// Indicates the entry's source system that Data Catalog doesn't automatically integrate with. The `user_specified_system` string has the following limitations: * Is case insensitive. * Must begin with a letter or underscore. * Can only contain letters, numbers, and underscores. * Must be at least 1 character and at most 64 characters long.
  late final Output<String> userSpecifiedSystem;

  /// Custom entry type that doesn't match any of the values allowed for input and listed in the `EntryType` enum. When creating an entry, first check the type values in the enum. If there are no appropriate types for the new entry, provide a custom value, for example, `my_special_type`. The `user_specified_type` string has the following limitations: * Is case insensitive. * Must begin with a letter or underscore. * Can only contain letters, numbers, and underscores. * Must be at least 1 character and at most 64 characters long.
  late final Output<String> userSpecifiedType;

  Entry2(
    String name, {
    EntryArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:datacatalog/v1:Entry',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bigqueryDateShardedSpec =
        registerOutput<GoogleCloudDatacatalogV1BigQueryDateShardedSpecResponse>(
            'bigqueryDateShardedSpec');
    this.bigqueryTableSpec =
        registerOutput<GoogleCloudDatacatalogV1BigQueryTableSpecResponse>(
            'bigqueryTableSpec');
    this.businessContext =
        registerOutput<GoogleCloudDatacatalogV1BusinessContextResponse>(
            'businessContext');
    this.cloudBigtableSystemSpec =
        registerOutput<GoogleCloudDatacatalogV1CloudBigtableSystemSpecResponse>(
            'cloudBigtableSystemSpec');
    this.dataSource =
        registerOutput<GoogleCloudDatacatalogV1DataSourceResponse>(
            'dataSource');
    this.dataSourceConnectionSpec = registerOutput<
            GoogleCloudDatacatalogV1DataSourceConnectionSpecResponse>(
        'dataSourceConnectionSpec');
    this.databaseTableSpec =
        registerOutput<GoogleCloudDatacatalogV1DatabaseTableSpecResponse>(
            'databaseTableSpec');
    this.datasetSpec =
        registerOutput<GoogleCloudDatacatalogV1DatasetSpecResponse>(
            'datasetSpec');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.entryGroupId = registerOutput<String>('entryGroupId');
    this.entryId = registerOutput<String>('entryId');
    this.filesetSpec =
        registerOutput<GoogleCloudDatacatalogV1FilesetSpecResponse>(
            'filesetSpec');
    this.fullyQualifiedName = registerOutput<String>('fullyQualifiedName');
    this.gcsFilesetSpec =
        registerOutput<GoogleCloudDatacatalogV1GcsFilesetSpecResponse>(
            'gcsFilesetSpec');
    this.integratedSystem = registerOutput<String>('integratedSystem');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.linkedResource = registerOutput<String>('linkedResource');
    this.location = registerOutput<String>('location');
    this.lookerSystemSpec =
        registerOutput<GoogleCloudDatacatalogV1LookerSystemSpecResponse>(
            'lookerSystemSpec');
    this.modelSpec =
        registerOutput<GoogleCloudDatacatalogV1ModelSpecResponse>('modelSpec');
    this.name = registerOutput<String>('name');
    this.personalDetails =
        registerOutput<GoogleCloudDatacatalogV1PersonalDetailsResponse>(
            'personalDetails');
    this.project = registerOutput<String>('project');
    this.routineSpec =
        registerOutput<GoogleCloudDatacatalogV1RoutineSpecResponse>(
            'routineSpec');
    this.schema =
        registerOutput<GoogleCloudDatacatalogV1SchemaResponse>('schema');
    this.serviceSpec =
        registerOutput<GoogleCloudDatacatalogV1ServiceSpecResponse>(
            'serviceSpec');
    this.sourceSystemTimestamps =
        registerOutput<GoogleCloudDatacatalogV1SystemTimestampsResponse>(
            'sourceSystemTimestamps');
    this.sqlDatabaseSystemSpec =
        registerOutput<GoogleCloudDatacatalogV1SqlDatabaseSystemSpecResponse>(
            'sqlDatabaseSystemSpec');
    this.type = registerOutput<String>('type');
    this.usageSignal =
        registerOutput<GoogleCloudDatacatalogV1UsageSignalResponse>(
            'usageSignal');
    this.userSpecifiedSystem = registerOutput<String>('userSpecifiedSystem');
    this.userSpecifiedType = registerOutput<String>('userSpecifiedType');
  }
}
