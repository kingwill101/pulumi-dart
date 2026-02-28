// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entry_type_datacatalog_v1beta1.dart';
import 'google_cloud_datacatalog_v1beta1_big_query_table_spec.dart';
import 'google_cloud_datacatalog_v1beta1_gcs_fileset_spec.dart';
import 'google_cloud_datacatalog_v1beta1_schema.dart';

/// {@template pulumi_datacatalog_v1beta1_entry_datacatalog_v1beta1_args_doc}
/// The set of arguments for Entry.
/// {@endtemplate}
/// {@macro pulumi_datacatalog_v1beta1_entry_datacatalog_v1beta1_args_doc}
class EntryDatacatalogV1beta1Args {
  /// Specification for a group of BigQuery tables with name pattern `[prefix]YYYYMMDD`. Context: https://cloud.google.com/bigquery/docs/partitioned-tables#partitioning_versus_sharding.
  final pulumi.Input<Map<String, dynamic>>? bigqueryDateShardedSpec;

  /// Specification that applies to a BigQuery table. This is only valid on entries of type `TABLE`.
  final pulumi.Input<GoogleCloudDatacatalogV1beta1BigQueryTableSpec>?
      bigqueryTableSpec;

  /// Entry description, which can consist of several sentences or paragraphs that describe entry contents. Default value is an empty string.
  final pulumi.Input<String>? description;

  /// Display information such as title and description. A short name to identify the entry, for example, "Analytics Data - Jan 2011". Default value is an empty string.
  final pulumi.Input<String>? displayName;
  final pulumi.Input<String> entryGroupId;

  /// Required. The id of the entry to create.
  final pulumi.Input<String> entryId;

  /// Specification that applies to a Cloud Storage fileset. This is only valid on entries of type FILESET.
  final pulumi.Input<GoogleCloudDatacatalogV1beta1GcsFilesetSpec>?
      gcsFilesetSpec;

  /// The resource this metadata entry refers to. For Google Cloud Platform resources, `linked_resource` is the [full name of the resource](https://cloud.google.com/apis/design/resource_names#full_resource_name). For example, the `linked_resource` for a table resource from BigQuery is: * //bigquery.googleapis.com/projects/projectId/datasets/datasetId/tables/tableId Output only when Entry is of type in the EntryType enum. For entries with user_specified_type, this field is optional and defaults to an empty string.
  final pulumi.Input<String>? linkedResource;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Schema of the entry. An entry might not have any schema attached to it.
  final pulumi.Input<GoogleCloudDatacatalogV1beta1Schema>? schema;

  /// The type of the entry. Only used for Entries with types in the EntryType enum.
  final pulumi.Input<EntryTypeDatacatalogV1beta1>? type;

  /// This field indicates the entry's source system that Data Catalog does not integrate with. `user_specified_system` strings must begin with a letter or underscore and can only contain letters, numbers, and underscores; are case insensitive; must be at least 1 character and at most 64 characters long.
  final pulumi.Input<String>? userSpecifiedSystem;

  /// Entry type if it does not fit any of the input-allowed values listed in `EntryType` enum above. When creating an entry, users should check the enum values first, if nothing matches the entry to be created, then provide a custom value, for example "my_special_type". `user_specified_type` strings must begin with a letter or underscore and can only contain letters, numbers, and underscores; are case insensitive; must be at least 1 character and at most 64 characters long. Currently, only FILESET enum value is allowed. All other entries created through Data Catalog must use `user_specified_type`.
  final pulumi.Input<String>? userSpecifiedType;

  /// Creates a new [EntryDatacatalogV1beta1Args].
  /// [bigqueryDateShardedSpec] Specification for a group of BigQuery tables with name pattern `[prefix]YYYYMMDD`. Context: https://cloud.google.com/bigquery/docs/partitioned-tables#partitioning_versus_sharding.
  /// [bigqueryTableSpec] Specification that applies to a BigQuery table. This is only valid on entries of type `TABLE`.
  /// [description] Entry description, which can consist of several sentences or paragraphs that describe entry contents. Default value is an empty string.
  /// [displayName] Display information such as title and description. A short name to identify the entry, for example, "Analytics Data - Jan 2011". Default value is an empty string.
  /// [entryGroupId] Required.
  /// [entryId] Required. The id of the entry to create.
  /// [gcsFilesetSpec] Specification that applies to a Cloud Storage fileset. This is only valid on entries of type FILESET.
  /// [linkedResource] The resource this metadata entry refers to. For Google Cloud Platform resources, `linked_resource` is the [full name of the resource](https://cloud.google.com/apis/design/resource_names#full_resource_name). For example, the `linked_resource` for a table resource from BigQuery is: * //bigquery.googleapis.com/projects/projectId/datasets/datasetId/tables/tableId Output only when Entry is of type in the EntryType enum. For entries with user_specified_type, this field is optional and defaults to an empty string.
  /// [location] Optional.
  /// [project] Optional.
  /// [schema] Schema of the entry. An entry might not have any schema attached to it.
  /// [type] The type of the entry. Only used for Entries with types in the EntryType enum.
  /// [userSpecifiedSystem] This field indicates the entry's source system that Data Catalog does not integrate with. `user_specified_system` strings must begin with a letter or underscore and can only contain letters, numbers, and underscores; are case insensitive; must be at least 1 character and at most 64 characters long.
  /// [userSpecifiedType] Entry type if it does not fit any of the input-allowed values listed in `EntryType` enum above. When creating an entry, users should check the enum values first, if nothing matches the entry to be created, then provide a custom value, for example "my_special_type". `user_specified_type` strings must begin with a letter or underscore and can only contain letters, numbers, and underscores; are case insensitive; must be at least 1 character and at most 64 characters long. Currently, only FILESET enum value is allowed. All other entries created through Data Catalog must use `user_specified_type`.
  EntryDatacatalogV1beta1Args({
    Map<String, dynamic>? bigqueryDateShardedSpec,
    GoogleCloudDatacatalogV1beta1BigQueryTableSpec? bigqueryTableSpec,
    String? description,
    String? displayName,
    required String entryGroupId,
    required String entryId,
    GoogleCloudDatacatalogV1beta1GcsFilesetSpec? gcsFilesetSpec,
    String? linkedResource,
    String? location,
    String? project,
    GoogleCloudDatacatalogV1beta1Schema? schema,
    EntryTypeDatacatalogV1beta1? type,
    String? userSpecifiedSystem,
    String? userSpecifiedType,
  })  : bigqueryDateShardedSpec =
            pulumi.Input.asOptionalInput<Map<String, dynamic>>(
                bigqueryDateShardedSpec),
        bigqueryTableSpec = pulumi.Input.asOptionalInput<
            GoogleCloudDatacatalogV1beta1BigQueryTableSpec>(bigqueryTableSpec),
        description = pulumi.Input.asOptionalInput<String>(description),
        displayName = pulumi.Input.asOptionalInput<String>(displayName),
        entryGroupId = pulumi.Input.asInput<String>(entryGroupId),
        entryId = pulumi.Input.asInput<String>(entryId),
        gcsFilesetSpec = pulumi.Input.asOptionalInput<
            GoogleCloudDatacatalogV1beta1GcsFilesetSpec>(gcsFilesetSpec),
        linkedResource = pulumi.Input.asOptionalInput<String>(linkedResource),
        location = pulumi.Input.asOptionalInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        schema =
            pulumi.Input.asOptionalInput<GoogleCloudDatacatalogV1beta1Schema>(
                schema),
        type = pulumi.Input.asOptionalInput<EntryTypeDatacatalogV1beta1>(type),
        userSpecifiedSystem =
            pulumi.Input.asOptionalInput<String>(userSpecifiedSystem),
        userSpecifiedType =
            pulumi.Input.asOptionalInput<String>(userSpecifiedType);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bigqueryDateShardedSpecValue = bigqueryDateShardedSpec;
    if (bigqueryDateShardedSpecValue != null) {
      map['bigqueryDateShardedSpec'] = bigqueryDateShardedSpecValue;
    }
    final bigqueryTableSpecValue = bigqueryTableSpec;
    if (bigqueryTableSpecValue != null) {
      map['bigqueryTableSpec'] = pulumi.Input.mapOptionalInputValue<
              GoogleCloudDatacatalogV1beta1BigQueryTableSpec,
              Map<String, dynamic>>(
          bigqueryTableSpecValue, (value) => value.toMap());
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
    final gcsFilesetSpecValue = gcsFilesetSpec;
    if (gcsFilesetSpecValue != null) {
      map['gcsFilesetSpec'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudDatacatalogV1beta1GcsFilesetSpec,
          Map<String, dynamic>>(gcsFilesetSpecValue, (value) => value.toMap());
    }
    final linkedResourceValue = linkedResource;
    if (linkedResourceValue != null) {
      map['linkedResource'] = linkedResourceValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final schemaValue = schema;
    if (schemaValue != null) {
      map['schema'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudDatacatalogV1beta1Schema,
          Map<String, dynamic>>(schemaValue, (value) => value.toMap());
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = pulumi.Input.mapOptionalInputValue<
          EntryTypeDatacatalogV1beta1,
          String>(typeValue, (value) => value.value);
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

  factory EntryDatacatalogV1beta1Args.fromMap(Map<String, dynamic> map) {
    return EntryDatacatalogV1beta1Args(
      bigqueryDateShardedSpec: map['bigqueryDateShardedSpec'] == null
          ? null
          : (map['bigqueryDateShardedSpec'] as Map).cast<String, dynamic>(),
      bigqueryTableSpec: map['bigqueryTableSpec'] == null
          ? null
          : GoogleCloudDatacatalogV1beta1BigQueryTableSpec.fromMap(
              (map['bigqueryTableSpec'] as Map).cast<String, dynamic>()),
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      entryGroupId: map['entryGroupId'] as String,
      entryId: map['entryId'] as String,
      gcsFilesetSpec: map['gcsFilesetSpec'] == null
          ? null
          : GoogleCloudDatacatalogV1beta1GcsFilesetSpec.fromMap(
              (map['gcsFilesetSpec'] as Map).cast<String, dynamic>()),
      linkedResource: map['linkedResource'] == null
          ? null
          : map['linkedResource'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      schema: map['schema'] == null
          ? null
          : GoogleCloudDatacatalogV1beta1Schema.fromMap(
              (map['schema'] as Map).cast<String, dynamic>()),
      type: map['type'] == null
          ? null
          : EntryTypeDatacatalogV1beta1.fromValue(map['type'] as String),
      userSpecifiedSystem: map['userSpecifiedSystem'] == null
          ? null
          : map['userSpecifiedSystem'] as String,
      userSpecifiedType: map['userSpecifiedType'] == null
          ? null
          : map['userSpecifiedType'] as String,
    );
  }
}
