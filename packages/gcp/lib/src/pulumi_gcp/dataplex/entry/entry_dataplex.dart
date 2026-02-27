import 'package:pulumi/pulumi.dart' as pulumi;
import '../entry_aspect/entry_aspect.dart';
import '../entry_entry_source/entry_entry_source.dart';
import 'entry_dataplex_args.dart';

/// An entry represents a data asset for which you capture metadata, such as a BigQuery table.
/// The primary constituents of an entry are aspects, which provide thematically coherent information.
/// Examples include a table's schema, sensitive data protection profile, data quality information, or a simple tag.
///
/// **Important Considerations:**
///
/// * There is a limit of 99 aspects per entry.
/// * The entry resource has to use project numbers and not project IDs. Therefore, if
/// a dependency was already provisioned using project ID, it needs to be referenced explicitly as a resource name
/// containing the project number.
///
///
/// To get more information about Entry, see:
///
/// * [API documentation](https://cloud.google.com/dataplex/docs/reference/rest/v1/projects.locations.entryGroups.entries)
/// * How-to Guides
/// * [Manage entries and ingest custom sources](https://cloud.google.com/dataplex/docs/ingest-custom-sources)
///
/// ## Example Usage
///
/// ### Dataplex Entry Basic
///
///
///
/// ### Dataplex Entry Full
///
///
///
/// ### Dataplex Entry Bigquery Table
///
///
///
/// ### Dataplex Entry Glossary Term
///
///
///
///
/// ## Import
///
/// Entry can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/entryGroups/{{entry_group_id}}/entries/{{entry_id}}`
///
/// * `{{project}}/{{location}}/{{entry_group_id}}/{{entry_id}}`
///
/// * `{{location}}/{{entry_group_id}}/{{entry_id}}`
///
/// When using the `pulumi import` command, Entry can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataplex/entry:Entry default projects/{{project}}/locations/{{location}}/entryGroups/{{entry_group_id}}/entries/{{entry_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataplex/entry:Entry default {{project}}/{{location}}/{{entry_group_id}}/{{entry_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataplex/entry:Entry default {{location}}/{{entry_group_id}}/{{entry_id}}
/// ```
class EntryDataplex extends pulumi.CustomResource {
  /// The aspects that are attached to the entry.
  /// Structure is documented below.
  late final pulumi.Output<List<EntryAspect>?> aspects;

  /// The time when the Entry was created in Dataplex.
  late final pulumi.Output<String> createTime;

  /// The entry group id of the entry group the entry will be created in.
  late final pulumi.Output<String?> entryGroupId;

  /// The entry id of the entry.
  late final pulumi.Output<String?> entryId;

  /// A nested object resource.
  /// Structure is documented below.
  late final pulumi.Output<EntryEntrySource> entrySource;

  /// The relative resource name of the entry type that was used to create this entry, in the format projects/{project_number}/locations/{locationId}/entryTypes/{entryTypeId}.
  late final pulumi.Output<String> entryType;

  /// A name for the entry that can be referenced by an external system. For more information, see https://cloud.google.com/dataplex/docs/fully-qualified-names.
  /// The maximum size of the field is 4000 characters.
  late final pulumi.Output<String?> fullyQualifiedName;

  /// The location where entry will be created.
  late final pulumi.Output<String?> location;

  /// The relative resource name of the entry, in the format projects/{project_number}/locations/{locationId}/entryGroups/{entryGroupId}/entries/{entryId}.
  late final pulumi.Output<String> name;

  /// The resource name of the parent entry, in the format projects/{project_number}/locations/{locationId}/entryGroups/{entryGroupId}/entries/{entryId}.
  late final pulumi.Output<String?> parentEntry;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The time when the entry was last updated in Dataplex.
  late final pulumi.Output<String> updateTime;

  EntryDataplex(
    String name, {
    EntryDataplexArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/entry:Entry',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aspects = registerOutput<List<EntryAspect>?>('aspects');
    this.createTime = registerOutput<String>('createTime');
    this.entryGroupId = registerOutput<String?>('entryGroupId');
    this.entryId = registerOutput<String?>('entryId');
    this.entrySource = registerOutput<EntryEntrySource>('entrySource');
    this.entryType = registerOutput<String>('entryType');
    this.fullyQualifiedName = registerOutput<String?>('fullyQualifiedName');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.parentEntry = registerOutput<String?>('parentEntry');
    this.project = registerOutput<String>('project');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
