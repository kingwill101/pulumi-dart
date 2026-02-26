// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'entry_type.dart';
import 'google_cloud_datacatalog_v1_business_context.dart';
import 'google_cloud_datacatalog_v1_cloud_bigtable_system_spec.dart';
import 'google_cloud_datacatalog_v1_database_table_spec.dart';
import 'google_cloud_datacatalog_v1_dataset_spec.dart';
import 'google_cloud_datacatalog_v1_fileset_spec.dart';
import 'google_cloud_datacatalog_v1_gcs_fileset_spec.dart';
import 'google_cloud_datacatalog_v1_looker_system_spec.dart';
import 'google_cloud_datacatalog_v1_model_spec.dart';
import 'google_cloud_datacatalog_v1_routine_spec.dart';
import 'google_cloud_datacatalog_v1_schema.dart';
import 'google_cloud_datacatalog_v1_service_spec.dart';
import 'google_cloud_datacatalog_v1_sql_database_system_spec.dart';
import 'google_cloud_datacatalog_v1_system_timestamps.dart';
import 'google_cloud_datacatalog_v1_usage_signal.dart';

/// The set of arguments for Entry.
class EntryArgs2 {
  /// Business Context of the entry. Not supported for BigQuery datasets
  final Input<GoogleCloudDatacatalogV1BusinessContext>? businessContext;

  /// Specification that applies to Cloud Bigtable system. Only settable when `integrated_system` is equal to `CLOUD_BIGTABLE`
  final Input<GoogleCloudDatacatalogV1CloudBigtableSystemSpec>?
      cloudBigtableSystemSpec;

  /// Specification that applies to a data source connection. Valid only for entries with the `DATA_SOURCE_CONNECTION` type.
  final Input<Map<String, dynamic>>? dataSourceConnectionSpec;

  /// Specification that applies to a table resource. Valid only for entries with the `TABLE` or `EXPLORE` type.
  final Input<GoogleCloudDatacatalogV1DatabaseTableSpec>? databaseTableSpec;

  /// Specification that applies to a dataset.
  final Input<GoogleCloudDatacatalogV1DatasetSpec>? datasetSpec;

  /// Entry description that can consist of several sentences or paragraphs that describe entry contents. The description must not contain Unicode non-characters as well as C0 and C1 control codes except tabs (HT), new lines (LF), carriage returns (CR), and page breaks (FF). The maximum size is 2000 bytes when encoded in UTF-8. Default value is an empty string.
  final Input<String>? description;

  /// Display name of an entry. The maximum size is 500 bytes when encoded in UTF-8. Default value is an empty string.
  final Input<String>? displayName;
  final Input<String> entryGroupId;

  /// Required. The ID of the entry to create. The ID must contain only letters (a-z, A-Z), numbers (0-9), and underscores (_). The maximum size is 64 bytes when encoded in UTF-8.
  final Input<String> entryId;

  /// Specification that applies to a fileset resource. Valid only for entries with the `FILESET` type.
  final Input<GoogleCloudDatacatalogV1FilesetSpec>? filesetSpec;

  /// [Fully Qualified Name (FQN)](https://cloud.google.com//data-catalog/docs/fully-qualified-names) of the resource. Set automatically for entries representing resources from synced systems. Settable only during creation, and read-only later. Can be used for search and lookup of the entries.
  final Input<String>? fullyQualifiedName;

  /// Specification that applies to a Cloud Storage fileset. Valid only for entries with the `FILESET` type.
  final Input<GoogleCloudDatacatalogV1GcsFilesetSpec>? gcsFilesetSpec;

  /// Cloud labels attached to the entry. In Data Catalog, you can create and modify labels attached only to custom entries. Synced entries have unmodifiable labels that come from the source system.
  final Input<Map<String, String>>? labels;

  /// The resource this metadata entry refers to. For Google Cloud Platform resources, `linked_resource` is the [Full Resource Name] (https://cloud.google.com/apis/design/resource_names#full_resource_name). For example, the `linked_resource` for a table resource from BigQuery is: `//bigquery.googleapis.com/projects/{PROJECT_ID}/datasets/{DATASET_ID}/tables/{TABLE_ID}` Output only when the entry is one of the types in the `EntryType` enum. For entries with a `user_specified_type`, this field is optional and defaults to an empty string. The resource string must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), periods (.), colons (:), slashes (/), dashes (-), and hashes (#). The maximum size is 200 bytes when encoded in UTF-8.
  final Input<String>? linkedResource;
  final Input<String>? location;

  /// Specification that applies to Looker sysstem. Only settable when `user_specified_system` is equal to `LOOKER`
  final Input<GoogleCloudDatacatalogV1LookerSystemSpec>? lookerSystemSpec;

  /// Model specification.
  final Input<GoogleCloudDatacatalogV1ModelSpec>? modelSpec;
  final Input<String>? project;

  /// Specification that applies to a user-defined function or procedure. Valid only for entries with the `ROUTINE` type.
  final Input<GoogleCloudDatacatalogV1RoutineSpec>? routineSpec;

  /// Schema of the entry. An entry might not have any schema attached to it.
  final Input<GoogleCloudDatacatalogV1Schema>? schema;

  /// Specification that applies to a Service resource.
  final Input<GoogleCloudDatacatalogV1ServiceSpec>? serviceSpec;

  /// Timestamps from the underlying resource, not from the Data Catalog entry. Output only when the entry has a system listed in the `IntegratedSystem` enum. For entries with `user_specified_system`, this field is optional and defaults to an empty timestamp.
  final Input<GoogleCloudDatacatalogV1SystemTimestamps>? sourceSystemTimestamps;

  /// Specification that applies to a relational database system. Only settable when `user_specified_system` is equal to `SQL_DATABASE`
  final Input<GoogleCloudDatacatalogV1SqlDatabaseSystemSpec>?
      sqlDatabaseSystemSpec;

  /// The type of the entry. For details, see [`EntryType`](#entrytype).
  final Input<EntryType>? type;

  /// Resource usage statistics.
  final Input<GoogleCloudDatacatalogV1UsageSignal>? usageSignal;

  /// Indicates the entry's source system that Data Catalog doesn't automatically integrate with. The `user_specified_system` string has the following limitations: * Is case insensitive. * Must begin with a letter or underscore. * Can only contain letters, numbers, and underscores. * Must be at least 1 character and at most 64 characters long.
  final Input<String>? userSpecifiedSystem;

  /// Custom entry type that doesn't match any of the values allowed for input and listed in the `EntryType` enum. When creating an entry, first check the type values in the enum. If there are no appropriate types for the new entry, provide a custom value, for example, `my_special_type`. The `user_specified_type` string has the following limitations: * Is case insensitive. * Must begin with a letter or underscore. * Can only contain letters, numbers, and underscores. * Must be at least 1 character and at most 64 characters long.
  final Input<String>? userSpecifiedType;

  EntryArgs2({
    this.businessContext,
    this.cloudBigtableSystemSpec,
    this.dataSourceConnectionSpec,
    this.databaseTableSpec,
    this.datasetSpec,
    this.description,
    this.displayName,
    required this.entryGroupId,
    required this.entryId,
    this.filesetSpec,
    this.fullyQualifiedName,
    this.gcsFilesetSpec,
    this.labels,
    this.linkedResource,
    this.location,
    this.lookerSystemSpec,
    this.modelSpec,
    this.project,
    this.routineSpec,
    this.schema,
    this.serviceSpec,
    this.sourceSystemTimestamps,
    this.sqlDatabaseSystemSpec,
    this.type,
    this.usageSignal,
    this.userSpecifiedSystem,
    this.userSpecifiedType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final businessContextValue = businessContext;
    if (businessContextValue != null) {
      map['businessContext'] = Input.mapOptionalInputValue<
          GoogleCloudDatacatalogV1BusinessContext,
          Map<String, dynamic>>(businessContextValue, (value) => value.toMap());
    }
    final cloudBigtableSystemSpecValue = cloudBigtableSystemSpec;
    if (cloudBigtableSystemSpecValue != null) {
      map['cloudBigtableSystemSpec'] = Input.mapOptionalInputValue<
              GoogleCloudDatacatalogV1CloudBigtableSystemSpec,
              Map<String, dynamic>>(
          cloudBigtableSystemSpecValue, (value) => value.toMap());
    }
    final dataSourceConnectionSpecValue = dataSourceConnectionSpec;
    if (dataSourceConnectionSpecValue != null) {
      map['dataSourceConnectionSpec'] = dataSourceConnectionSpecValue;
    }
    final databaseTableSpecValue = databaseTableSpec;
    if (databaseTableSpecValue != null) {
      map['databaseTableSpec'] = Input.mapOptionalInputValue<
              GoogleCloudDatacatalogV1DatabaseTableSpec, Map<String, dynamic>>(
          databaseTableSpecValue, (value) => value.toMap());
    }
    final datasetSpecValue = datasetSpec;
    if (datasetSpecValue != null) {
      map['datasetSpec'] = Input.mapOptionalInputValue<
          GoogleCloudDatacatalogV1DatasetSpec,
          Map<String, dynamic>>(datasetSpecValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['entryGroupId'] = entryGroupId;
    map['entryId'] = entryId;
    final filesetSpecValue = filesetSpec;
    if (filesetSpecValue != null) {
      map['filesetSpec'] = Input.mapOptionalInputValue<
          GoogleCloudDatacatalogV1FilesetSpec,
          Map<String, dynamic>>(filesetSpecValue, (value) => value.toMap());
    }
    final fullyQualifiedNameValue = fullyQualifiedName;
    if (fullyQualifiedNameValue != null) {
      map['fullyQualifiedName'] = fullyQualifiedNameValue;
    }
    final gcsFilesetSpecValue = gcsFilesetSpec;
    if (gcsFilesetSpecValue != null) {
      map['gcsFilesetSpec'] = Input.mapOptionalInputValue<
          GoogleCloudDatacatalogV1GcsFilesetSpec,
          Map<String, dynamic>>(gcsFilesetSpecValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final linkedResourceValue = linkedResource;
    if (linkedResourceValue != null) {
      map['linkedResource'] = linkedResourceValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final lookerSystemSpecValue = lookerSystemSpec;
    if (lookerSystemSpecValue != null) {
      map['lookerSystemSpec'] = Input.mapOptionalInputValue<
              GoogleCloudDatacatalogV1LookerSystemSpec, Map<String, dynamic>>(
          lookerSystemSpecValue, (value) => value.toMap());
    }
    final modelSpecValue = modelSpec;
    if (modelSpecValue != null) {
      map['modelSpec'] = Input.mapOptionalInputValue<
          GoogleCloudDatacatalogV1ModelSpec,
          Map<String, dynamic>>(modelSpecValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final routineSpecValue = routineSpec;
    if (routineSpecValue != null) {
      map['routineSpec'] = Input.mapOptionalInputValue<
          GoogleCloudDatacatalogV1RoutineSpec,
          Map<String, dynamic>>(routineSpecValue, (value) => value.toMap());
    }
    final schemaValue = schema;
    if (schemaValue != null) {
      map['schema'] = Input.mapOptionalInputValue<
          GoogleCloudDatacatalogV1Schema,
          Map<String, dynamic>>(schemaValue, (value) => value.toMap());
    }
    final serviceSpecValue = serviceSpec;
    if (serviceSpecValue != null) {
      map['serviceSpec'] = Input.mapOptionalInputValue<
          GoogleCloudDatacatalogV1ServiceSpec,
          Map<String, dynamic>>(serviceSpecValue, (value) => value.toMap());
    }
    final sourceSystemTimestampsValue = sourceSystemTimestamps;
    if (sourceSystemTimestampsValue != null) {
      map['sourceSystemTimestamps'] = Input.mapOptionalInputValue<
              GoogleCloudDatacatalogV1SystemTimestamps, Map<String, dynamic>>(
          sourceSystemTimestampsValue, (value) => value.toMap());
    }
    final sqlDatabaseSystemSpecValue = sqlDatabaseSystemSpec;
    if (sqlDatabaseSystemSpecValue != null) {
      map['sqlDatabaseSystemSpec'] = Input.mapOptionalInputValue<
              GoogleCloudDatacatalogV1SqlDatabaseSystemSpec,
              Map<String, dynamic>>(
          sqlDatabaseSystemSpecValue, (value) => value.toMap());
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = Input.mapOptionalInputValue<EntryType, String>(
          typeValue, (value) => value.value);
    }
    final usageSignalValue = usageSignal;
    if (usageSignalValue != null) {
      map['usageSignal'] = Input.mapOptionalInputValue<
          GoogleCloudDatacatalogV1UsageSignal,
          Map<String, dynamic>>(usageSignalValue, (value) => value.toMap());
    }
    final userSpecifiedSystemValue = userSpecifiedSystem;
    if (userSpecifiedSystemValue != null) {
      map['userSpecifiedSystem'] = userSpecifiedSystemValue;
    }
    final userSpecifiedTypeValue = userSpecifiedType;
    if (userSpecifiedTypeValue != null) {
      map['userSpecifiedType'] = userSpecifiedTypeValue;
    }
    return map;
  }

  factory EntryArgs2.fromMap(Map<String, dynamic> map) {
    return EntryArgs2(
      businessContext:
          Input.asOptionalInput<GoogleCloudDatacatalogV1BusinessContext>(
              map['businessContext']),
      cloudBigtableSystemSpec: Input.asOptionalInput<
              GoogleCloudDatacatalogV1CloudBigtableSystemSpec>(
          map['cloudBigtableSystemSpec']),
      dataSourceConnectionSpec: Input.asOptionalInput<Map<String, dynamic>>(
          map['dataSourceConnectionSpec']),
      databaseTableSpec:
          Input.asOptionalInput<GoogleCloudDatacatalogV1DatabaseTableSpec>(
              map['databaseTableSpec']),
      datasetSpec: Input.asOptionalInput<GoogleCloudDatacatalogV1DatasetSpec>(
          map['datasetSpec']),
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      entryGroupId: Input.asInput<String>(map['entryGroupId']),
      entryId: Input.asInput<String>(map['entryId']),
      filesetSpec: Input.asOptionalInput<GoogleCloudDatacatalogV1FilesetSpec>(
          map['filesetSpec']),
      fullyQualifiedName:
          Input.asOptionalInput<String>(map['fullyQualifiedName']),
      gcsFilesetSpec:
          Input.asOptionalInput<GoogleCloudDatacatalogV1GcsFilesetSpec>(
              map['gcsFilesetSpec']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      linkedResource: Input.asOptionalInput<String>(map['linkedResource']),
      location: Input.asOptionalInput<String>(map['location']),
      lookerSystemSpec:
          Input.asOptionalInput<GoogleCloudDatacatalogV1LookerSystemSpec>(
              map['lookerSystemSpec']),
      modelSpec: Input.asOptionalInput<GoogleCloudDatacatalogV1ModelSpec>(
          map['modelSpec']),
      project: Input.asOptionalInput<String>(map['project']),
      routineSpec: Input.asOptionalInput<GoogleCloudDatacatalogV1RoutineSpec>(
          map['routineSpec']),
      schema:
          Input.asOptionalInput<GoogleCloudDatacatalogV1Schema>(map['schema']),
      serviceSpec: Input.asOptionalInput<GoogleCloudDatacatalogV1ServiceSpec>(
          map['serviceSpec']),
      sourceSystemTimestamps:
          Input.asOptionalInput<GoogleCloudDatacatalogV1SystemTimestamps>(
              map['sourceSystemTimestamps']),
      sqlDatabaseSystemSpec:
          Input.asOptionalInput<GoogleCloudDatacatalogV1SqlDatabaseSystemSpec>(
              map['sqlDatabaseSystemSpec']),
      type: Input.asOptionalInput<EntryType>(map['type']),
      usageSignal: Input.asOptionalInput<GoogleCloudDatacatalogV1UsageSignal>(
          map['usageSignal']),
      userSpecifiedSystem:
          Input.asOptionalInput<String>(map['userSpecifiedSystem']),
      userSpecifiedType:
          Input.asOptionalInput<String>(map['userSpecifiedType']),
    );
  }
}
