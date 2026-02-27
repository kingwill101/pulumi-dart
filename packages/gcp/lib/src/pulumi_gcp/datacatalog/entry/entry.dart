import 'package:pulumi/pulumi.dart' as pulumi;
import '../entry_bigquery_date_sharded_spec/entry_bigquery_date_sharded_spec.dart';
import '../entry_bigquery_table_spec/entry_bigquery_table_spec.dart';
import '../entry_gcs_fileset_spec/entry_gcs_fileset_spec.dart';
import 'entry_args.dart';

/// > **Warning:** `gcp.datacatalog.Entry` is deprecated and will be removed in a future major release. Data Catalog is deprecated and will be discontinued on January 30, 2026. For steps to transition your Data Catalog users, workloads, and content to Dataplex Catalog, see https://cloud.google.com/dataplex/docs/transition-to-dataplex-catalog.
///
/// Entry Metadata. A Data Catalog Entry resource represents another resource in Google Cloud Platform
/// (such as a BigQuery dataset or a Pub/Sub topic) or outside of Google Cloud Platform. Clients can use
/// the linkedResource field in the Entry resource to refer to the original resource ID of the source system.
///
/// An Entry resource contains resource details, such as its schema. An Entry can also be used to attach
/// flexible metadata, such as a Tag.
///
///
/// To get more information about Entry, see:
///
/// * [API documentation](https://cloud.google.com/data-catalog/docs/reference/rest/v1/projects.locations.entryGroups.entries)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/data-catalog/docs)
///
/// ## Example Usage
///
/// ### Data Catalog Entry Basic
///
///
///
/// ### Data Catalog Entry Fileset
///
///
///
/// ### Data Catalog Entry Full
///
///
///
///
/// ## Import
///
/// Entry can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Entry can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:datacatalog/entry:Entry default {{name}}
/// ```
class Entry extends pulumi.CustomResource {
  /// Specification for a group of BigQuery tables with name pattern [prefix]YYYYMMDD.
  /// Context: https://cloud.google.com/bigquery/docs/partitioned-tables#partitioning_versus_sharding.
  /// Structure is documented below.
  late final pulumi.Output<List<EntryBigqueryDateShardedSpec>>
      bigqueryDateShardedSpecs;

  /// Specification that applies to a BigQuery table. This is only valid on entries of type TABLE.
  /// Structure is documented below.
  late final pulumi.Output<List<EntryBigqueryTableSpec>> bigqueryTableSpecs;

  /// Entry description, which can consist of several sentences or paragraphs that describe entry contents.
  late final pulumi.Output<String?> description;

  /// Display information such as title and description. A short name to identify the entry,
  /// for example, "Analytics Data - Jan 2011".
  late final pulumi.Output<String?> displayName;

  /// The name of the entry group this entry is in.
  late final pulumi.Output<String> entryGroup;

  /// The id of the entry to create.
  late final pulumi.Output<String> entryId;

  /// Specification that applies to a Cloud Storage fileset. This is only valid on entries of type FILESET.
  /// Structure is documented below.
  late final pulumi.Output<EntryGcsFilesetSpec?> gcsFilesetSpec;

  /// This field indicates the entry's source system that Data Catalog integrates with, such as BigQuery or Pub/Sub.
  late final pulumi.Output<String> integratedSystem;

  /// The resource this metadata entry refers to.
  /// For Google Cloud Platform resources, linkedResource is the full name of the resource.
  /// For example, the linkedResource for a table resource from BigQuery is:
  /// //bigquery.googleapis.com/projects/projectId/datasets/datasetId/tables/tableId
  /// Output only when Entry is of type in the EntryType enum. For entries with userSpecifiedType,
  /// this field is optional and defaults to an empty string.
  late final pulumi.Output<String> linkedResource;

  /// The Data Catalog resource name of the entry in URL format.
  /// Example: projects/{project_id}/locations/{location}/entryGroups/{entryGroupId}/entries/{entryId}.
  /// Note that this Entry and its child resources may not actually be stored in the location in this name.
  late final pulumi.Output<String> name;

  /// Schema of the entry (e.g. BigQuery, GoogleSQL, Avro schema), as a json string. An entry might not have any schema
  /// attached to it. See
  /// https://cloud.google.com/data-catalog/docs/reference/rest/v1/projects.locations.entryGroups.entries#schema
  /// for what fields this schema can contain.
  late final pulumi.Output<String?> schema;

  /// The type of the entry. Only used for Entries with types in the EntryType enum.
  /// Currently, only FILESET enum value is allowed. All other entries created through Data Catalog must use userSpecifiedType.
  /// Possible values are: `FILESET`.
  late final pulumi.Output<String?> type;

  /// This field indicates the entry's source system that Data Catalog does not integrate with.
  /// userSpecifiedSystem strings must begin with a letter or underscore and can only contain letters, numbers,
  /// and underscores; are case insensitive; must be at least 1 character and at most 64 characters long.
  late final pulumi.Output<String?> userSpecifiedSystem;

  /// Entry type if it does not fit any of the input-allowed values listed in EntryType enum above.
  /// When creating an entry, users should check the enum values first, if nothing matches the entry
  /// to be created, then provide a custom value, for example "my_special_type".
  /// userSpecifiedType strings must begin with a letter or underscore and can only contain letters,
  /// numbers, and underscores; are case insensitive; must be at least 1 character and at most 64 characters long.
  late final pulumi.Output<String?> userSpecifiedType;

  Entry(
    String name, {
    EntryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:datacatalog/entry:Entry',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bigqueryDateShardedSpecs =
        registerOutput<List<EntryBigqueryDateShardedSpec>>(
            'bigqueryDateShardedSpecs');
    this.bigqueryTableSpecs =
        registerOutput<List<EntryBigqueryTableSpec>>('bigqueryTableSpecs');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String?>('displayName');
    this.entryGroup = registerOutput<String>('entryGroup');
    this.entryId = registerOutput<String>('entryId');
    this.gcsFilesetSpec =
        registerOutput<EntryGcsFilesetSpec?>('gcsFilesetSpec');
    this.integratedSystem = registerOutput<String>('integratedSystem');
    this.linkedResource = registerOutput<String>('linkedResource');
    this.name = registerOutput<String>('name');
    this.schema = registerOutput<String?>('schema');
    this.type = registerOutput<String?>('type');
    this.userSpecifiedSystem = registerOutput<String?>('userSpecifiedSystem');
    this.userSpecifiedType = registerOutput<String?>('userSpecifiedType');
  }
}
