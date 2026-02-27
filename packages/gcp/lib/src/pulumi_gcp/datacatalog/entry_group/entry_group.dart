import 'package:pulumi/pulumi.dart' as pulumi;
import 'entry_group_args.dart';

/// > **Warning:** `gcp.datacatalog.EntryGroup` is deprecated and will be removed in a future major release. Use `gcp.dataplex.EntryGroup` instead. For steps to transition your Data Catalog users, workloads, and content to Dataplex Catalog, see https://cloud.google.com/dataplex/docs/transition-to-dataplex-catalog.
///
/// An EntryGroup resource represents a logical grouping of zero or more Data Catalog Entry resources.
///
///
/// To get more information about EntryGroup, see:
///
/// * [API documentation](https://cloud.google.com/data-catalog/docs/reference/rest/v1/projects.locations.entryGroups)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/data-catalog/docs)
///
/// ## Example Usage
///
/// ### Data Catalog Entry Group Basic
///
///
///
/// ### Data Catalog Entry Group Full
///
///
///
///
/// ## Import
///
/// EntryGroup can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, EntryGroup can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:datacatalog/entryGroup:EntryGroup default {{name}}
/// ```
class EntryGroup extends pulumi.CustomResource {
  /// Entry group description, which can consist of several sentences or paragraphs that describe entry group contents.
  late final pulumi.Output<String?> description;

  /// A short name to identify the entry group, for example, "analytics data - jan 2011".
  late final pulumi.Output<String?> displayName;

  /// The id of the entry group to create. The id must begin with a letter or underscore,
  /// contain only English letters, numbers and underscores, and be at most 64 characters.
  late final pulumi.Output<String> entryGroupId;

  /// The resource name of the entry group in URL format. Example: projects/{project}/locations/{location}/entryGroups/{entryGroupId}
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// EntryGroup location region.
  late final pulumi.Output<String> region;

  EntryGroup(
    String name, {
    EntryGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:datacatalog/entryGroup:EntryGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String?>('displayName');
    this.entryGroupId = registerOutput<String>('entryGroupId');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
  }
}
