import 'package:pulumi/pulumi.dart' as pulumi;
import 'entry_datacatalog_v1beta1_args.dart';
import 'google_cloud_datacatalog_v1beta1_big_query_date_sharded_spec_response.dart';
import 'google_cloud_datacatalog_v1beta1_big_query_table_spec_response.dart';
import 'google_cloud_datacatalog_v1beta1_gcs_fileset_spec_response.dart';
import 'google_cloud_datacatalog_v1beta1_schema_response.dart';
import 'google_cloud_datacatalog_v1beta1_system_timestamps_response.dart';
import 'google_cloud_datacatalog_v1beta1_usage_signal_response.dart';

/// Creates an entry. Only entries of 'FILESET' type or user-specified type can be created. Users should enable the Data Catalog API in the project identified by the `parent` parameter (see [Data Catalog Resource Project] (https://cloud.google.com/data-catalog/docs/concepts/resource-project) for more information). A maximum of 100,000 entries may be created per entry group.
/// Auto-naming is currently not supported for this resource.
class EntryDatacatalogV1beta1 extends pulumi.CustomResource {
  /// Specification for a group of BigQuery tables with name pattern `[prefix]YYYYMMDD`. Context: https://cloud.google.com/bigquery/docs/partitioned-tables#partitioning_versus_sharding.
  late final pulumi.Output<GoogleCloudDatacatalogV1beta1BigQueryDateShardedSpecResponse> bigqueryDateShardedSpec;
  /// Specification that applies to a BigQuery table. This is only valid on entries of type `TABLE`.
  late final pulumi.Output<GoogleCloudDatacatalogV1beta1BigQueryTableSpecResponse> bigqueryTableSpec;
  /// Entry description, which can consist of several sentences or paragraphs that describe entry contents. Default value is an empty string.
  late final pulumi.Output<String> description;
  /// Display information such as title and description. A short name to identify the entry, for example, "Analytics Data - Jan 2011". Default value is an empty string.
  late final pulumi.Output<String> displayName;
  late final pulumi.Output<String> entryGroupId;
  /// Required. The id of the entry to create.
  late final pulumi.Output<String> entryId;
  /// Specification that applies to a Cloud Storage fileset. This is only valid on entries of type FILESET.
  late final pulumi.Output<GoogleCloudDatacatalogV1beta1GcsFilesetSpecResponse> gcsFilesetSpec;
  /// This field indicates the entry's source system that Data Catalog integrates with, such as BigQuery or Pub/Sub.
  late final pulumi.Output<String> integratedSystem;
  /// The resource this metadata entry refers to. For Google Cloud Platform resources, `linked_resource` is the [full name of the resource](https://cloud.google.com/apis/design/resource_names#full_resource_name). For example, the `linked_resource` for a table resource from BigQuery is: * //bigquery.googleapis.com/projects/projectId/datasets/datasetId/tables/tableId Output only when Entry is of type in the EntryType enum. For entries with user_specified_type, this field is optional and defaults to an empty string.
  late final pulumi.Output<String> linkedResource;
  late final pulumi.Output<String> location;
  /// The Data Catalog resource name of the entry in URL format. Example: * projects/{project_id}/locations/{location}/entryGroups/{entry_group_id}/entries/{entry_id} Note that this Entry and its child resources may not actually be stored in the location in this name.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// Schema of the entry. An entry might not have any schema attached to it.
  late final pulumi.Output<GoogleCloudDatacatalogV1beta1SchemaResponse> schema;
  /// Timestamps about the underlying resource, not about this Data Catalog entry. Output only when Entry is of type in the EntryType enum. For entries with user_specified_type, this field is optional and defaults to an empty timestamp.
  late final pulumi.Output<GoogleCloudDatacatalogV1beta1SystemTimestampsResponse> sourceSystemTimestamps;
  /// The type of the entry. Only used for Entries with types in the EntryType enum.
  late final pulumi.Output<String> type;
  /// Statistics on the usage level of the resource.
  late final pulumi.Output<GoogleCloudDatacatalogV1beta1UsageSignalResponse> usageSignal;
  /// This field indicates the entry's source system that Data Catalog does not integrate with. `user_specified_system` strings must begin with a letter or underscore and can only contain letters, numbers, and underscores; are case insensitive; must be at least 1 character and at most 64 characters long.
  late final pulumi.Output<String> userSpecifiedSystem;
  /// Entry type if it does not fit any of the input-allowed values listed in `EntryType` enum above. When creating an entry, users should check the enum values first, if nothing matches the entry to be created, then provide a custom value, for example "my_special_type". `user_specified_type` strings must begin with a letter or underscore and can only contain letters, numbers, and underscores; are case insensitive; must be at least 1 character and at most 64 characters long. Currently, only FILESET enum value is allowed. All other entries created through Data Catalog must use `user_specified_type`.
  late final pulumi.Output<String> userSpecifiedType;

  /// Creates a new [EntryDatacatalogV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EntryDatacatalogV1beta1]. {@macro pulumi_datacatalog_v1beta1_entry_datacatalog_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EntryDatacatalogV1beta1(
    String name, {
    EntryDatacatalogV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:datacatalog/v1beta1:Entry',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bigqueryDateShardedSpec = registerOutput<GoogleCloudDatacatalogV1beta1BigQueryDateShardedSpecResponse>('bigqueryDateShardedSpec');
    this.bigqueryTableSpec = registerOutput<GoogleCloudDatacatalogV1beta1BigQueryTableSpecResponse>('bigqueryTableSpec');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.entryGroupId = registerOutput<String>('entryGroupId');
    this.entryId = registerOutput<String>('entryId');
    this.gcsFilesetSpec = registerOutput<GoogleCloudDatacatalogV1beta1GcsFilesetSpecResponse>('gcsFilesetSpec');
    this.integratedSystem = registerOutput<String>('integratedSystem');
    this.linkedResource = registerOutput<String>('linkedResource');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.schema = registerOutput<GoogleCloudDatacatalogV1beta1SchemaResponse>('schema');
    this.sourceSystemTimestamps = registerOutput<GoogleCloudDatacatalogV1beta1SystemTimestampsResponse>('sourceSystemTimestamps');
    this.type = registerOutput<String>('type');
    this.usageSignal = registerOutput<GoogleCloudDatacatalogV1beta1UsageSignalResponse>('usageSignal');
    this.userSpecifiedSystem = registerOutput<String>('userSpecifiedSystem');
    this.userSpecifiedType = registerOutput<String>('userSpecifiedType');
  }
}
