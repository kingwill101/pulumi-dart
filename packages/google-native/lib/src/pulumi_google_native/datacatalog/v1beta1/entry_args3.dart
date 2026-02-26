// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'entry_type2.dart';
import 'google_cloud_datacatalog_v1beta1_big_query_table_spec.dart';
import 'google_cloud_datacatalog_v1beta1_gcs_fileset_spec.dart';
import 'google_cloud_datacatalog_v1beta1_schema.dart';

/// The set of arguments for Entry.
class EntryArgs3 {
  /// Specification for a group of BigQuery tables with name pattern `[prefix]YYYYMMDD`. Context: https://cloud.google.com/bigquery/docs/partitioned-tables#partitioning_versus_sharding.
  final Input<Map<String, dynamic>>? bigqueryDateShardedSpec;

  /// Specification that applies to a BigQuery table. This is only valid on entries of type `TABLE`.
  final Input<GoogleCloudDatacatalogV1beta1BigQueryTableSpec>?
      bigqueryTableSpec;

  /// Entry description, which can consist of several sentences or paragraphs that describe entry contents. Default value is an empty string.
  final Input<String>? description;

  /// Display information such as title and description. A short name to identify the entry, for example, "Analytics Data - Jan 2011". Default value is an empty string.
  final Input<String>? displayName;
  final Input<String> entryGroupId;

  /// Required. The id of the entry to create.
  final Input<String> entryId;

  /// Specification that applies to a Cloud Storage fileset. This is only valid on entries of type FILESET.
  final Input<GoogleCloudDatacatalogV1beta1GcsFilesetSpec>? gcsFilesetSpec;

  /// The resource this metadata entry refers to. For Google Cloud Platform resources, `linked_resource` is the [full name of the resource](https://cloud.google.com/apis/design/resource_names#full_resource_name). For example, the `linked_resource` for a table resource from BigQuery is: * //bigquery.googleapis.com/projects/projectId/datasets/datasetId/tables/tableId Output only when Entry is of type in the EntryType enum. For entries with user_specified_type, this field is optional and defaults to an empty string.
  final Input<String>? linkedResource;
  final Input<String>? location;
  final Input<String>? project;

  /// Schema of the entry. An entry might not have any schema attached to it.
  final Input<GoogleCloudDatacatalogV1beta1Schema>? schema;

  /// The type of the entry. Only used for Entries with types in the EntryType enum.
  final Input<EntryType2>? type;

  /// This field indicates the entry's source system that Data Catalog does not integrate with. `user_specified_system` strings must begin with a letter or underscore and can only contain letters, numbers, and underscores; are case insensitive; must be at least 1 character and at most 64 characters long.
  final Input<String>? userSpecifiedSystem;

  /// Entry type if it does not fit any of the input-allowed values listed in `EntryType` enum above. When creating an entry, users should check the enum values first, if nothing matches the entry to be created, then provide a custom value, for example "my_special_type". `user_specified_type` strings must begin with a letter or underscore and can only contain letters, numbers, and underscores; are case insensitive; must be at least 1 character and at most 64 characters long. Currently, only FILESET enum value is allowed. All other entries created through Data Catalog must use `user_specified_type`.
  final Input<String>? userSpecifiedType;

  EntryArgs3({
    this.bigqueryDateShardedSpec,
    this.bigqueryTableSpec,
    this.description,
    this.displayName,
    required this.entryGroupId,
    required this.entryId,
    this.gcsFilesetSpec,
    this.linkedResource,
    this.location,
    this.project,
    this.schema,
    this.type,
    this.userSpecifiedSystem,
    this.userSpecifiedType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bigqueryDateShardedSpecValue = bigqueryDateShardedSpec;
    if (bigqueryDateShardedSpecValue != null) {
      map['bigqueryDateShardedSpec'] = bigqueryDateShardedSpecValue;
    }
    final bigqueryTableSpecValue = bigqueryTableSpec;
    if (bigqueryTableSpecValue != null) {
      map['bigqueryTableSpec'] = Input.mapOptionalInputValue<
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
      map['gcsFilesetSpec'] = Input.mapOptionalInputValue<
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
      map['schema'] = Input.mapOptionalInputValue<
          GoogleCloudDatacatalogV1beta1Schema,
          Map<String, dynamic>>(schemaValue, (value) => value.toMap());
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = Input.mapOptionalInputValue<EntryType2, String>(
          typeValue, (value) => value.value);
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

  factory EntryArgs3.fromMap(Map<String, dynamic> map) {
    return EntryArgs3(
      bigqueryDateShardedSpec: Input.asOptionalInput<Map<String, dynamic>>(
          map['bigqueryDateShardedSpec']),
      bigqueryTableSpec:
          Input.asOptionalInput<GoogleCloudDatacatalogV1beta1BigQueryTableSpec>(
              map['bigqueryTableSpec']),
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      entryGroupId: Input.asInput<String>(map['entryGroupId']),
      entryId: Input.asInput<String>(map['entryId']),
      gcsFilesetSpec:
          Input.asOptionalInput<GoogleCloudDatacatalogV1beta1GcsFilesetSpec>(
              map['gcsFilesetSpec']),
      linkedResource: Input.asOptionalInput<String>(map['linkedResource']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      schema: Input.asOptionalInput<GoogleCloudDatacatalogV1beta1Schema>(
          map['schema']),
      type: Input.asOptionalInput<EntryType2>(map['type']),
      userSpecifiedSystem:
          Input.asOptionalInput<String>(map['userSpecifiedSystem']),
      userSpecifiedType:
          Input.asOptionalInput<String>(map['userSpecifiedType']),
    );
  }
}
