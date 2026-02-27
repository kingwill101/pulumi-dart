import 'package:pulumi/pulumi.dart' as pulumi;
import '../entry_link_entry_reference/entry_link_entry_reference.dart';
import 'entry_link_args.dart';

/// EntryLink represents a link between two Entries.
///
///
/// To get more information about EntryLink, see:
///
/// * [API documentation](https://cloud.google.com/dataplex/docs/reference/rest/v1/projects.locations.entryGroups.entryLinks)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dataplex/docs)
///
/// ## Example Usage
///
/// ### Dataplex Entry Link Basic
///
///
///
/// ### Dataplex Entry Link Full
///
///
///
///
/// ## Import
///
/// EntryLink can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/entryGroups/{{entry_group_id}}/entryLinks/{{entry_link_id}}`
///
/// * `{{project}}/{{location}}/{{entry_group_id}}/{{entry_link_id}}`
///
/// * `{{location}}/{{entry_group_id}}/{{entry_link_id}}`
///
/// When using the `pulumi import` command, EntryLink can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataplex/entryLink:EntryLink default projects/{{project}}/locations/{{location}}/entryGroups/{{entry_group_id}}/entryLinks/{{entry_link_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataplex/entryLink:EntryLink default {{project}}/{{location}}/{{entry_group_id}}/{{entry_link_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataplex/entryLink:EntryLink default {{location}}/{{entry_group_id}}/{{entry_link_id}}
/// ```
class EntryLink extends pulumi.CustomResource {
  /// The time when the Entry Link was created.
  late final pulumi.Output<String> createTime;

  /// The id of the entry group this entry link is in.
  late final pulumi.Output<String> entryGroupId;

  /// The id of the entry link to create.
  late final pulumi.Output<String> entryLinkId;

  /// Relative resource name of the Entry Link Type used to create this Entry Link. For example:
  /// projects/dataplex-types/locations/global/entryLinkTypes/definition
  late final pulumi.Output<String> entryLinkType;

  /// Specifies the Entries referenced in the Entry Link. There should be exactly two entry references.
  /// Structure is documented below.
  late final pulumi.Output<List<EntryLinkEntryReference>> entryReferences;

  /// The location for the entry.
  late final pulumi.Output<String> location;

  /// The relative resource name of the Entry Link, of the form:
  /// projects/{project_id_or_number}/locations/{location_id}/entryGroups/{entry_group_id}/entryLinks/{entry_link_id}
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The time when the Entry Link was last updated.
  late final pulumi.Output<String> updateTime;

  EntryLink(
    String name, {
    EntryLinkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/entryLink:EntryLink',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.entryGroupId = registerOutput<String>('entryGroupId');
    this.entryLinkId = registerOutput<String>('entryLinkId');
    this.entryLinkType = registerOutput<String>('entryLinkType');
    this.entryReferences =
        registerOutput<List<EntryLinkEntryReference>>('entryReferences');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
