import 'package:pulumi/pulumi.dart';
import '../tag_field/tag_field.dart';
import 'tag_args.dart';

/// > **Warning:** `gcp.datacatalog.Tag` is deprecated and will be removed in a future major release. For steps to transition your Data Catalog users, workloads, and content to Dataplex Catalog, see https://cloud.google.com/dataplex/docs/transition-to-dataplex-catalog.
///
/// Tags are used to attach custom metadata to Data Catalog resources. Tags conform to the specifications within their tag template.
///
/// See [Data Catalog IAM](https://cloud.google.com/data-catalog/docs/concepts/iam) for information on the permissions needed to create or view tags.
///
///
/// To get more information about Tag, see:
///
/// * [API documentation](https://cloud.google.com/data-catalog/docs/reference/rest/v1/projects.locations.entryGroups.tags)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/data-catalog/docs)
///
/// ## Example Usage
///
/// ### Data Catalog Entry Tag Basic
///
///
///
/// ### Data Catalog Entry Group Tag
///
///
///
/// ### Data Catalog Entry Tag Full
///
///
///
///
/// ## Import
///
/// Tag can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Tag can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:datacatalog/tag:Tag default {{name}}
/// ```
class Tag extends CustomResource {
  /// Resources like Entry can have schemas associated with them. This scope allows users to attach tags to an
  /// individual column based on that schema.
  /// For attaching a tag to a nested column, use `.` to separate the column names. Example:
  /// `outer_column.inner_column`
  late final Output<String?> column;

  /// This maps the ID of a tag field to the value of and additional information about that field.
  /// Valid field IDs are defined by the tag's template. A tag must have at least 1 field and at most 500 fields.
  /// Structure is documented below.
  late final Output<List<TagField>> fields;

  /// The resource name of the tag in URL format. Example:
  /// projects/{project_id}/locations/{location}/entrygroups/{entryGroupId}/entries/{entryId}/tags/{tag_id} or
  /// projects/{project_id}/locations/{location}/entrygroups/{entryGroupId}/tags/{tag_id}
  /// where tag_id is a system-generated identifier. Note that this Tag may not actually be stored in the location in this name.
  late final Output<String> name;

  /// The name of the parent this tag is attached to. This can be the name of an entry or an entry group. If an entry group, the tag will be attached to
  /// all entries in that group.
  late final Output<String?> parent;

  /// The resource name of the tag template that this tag uses. Example:
  /// projects/{project_id}/locations/{location}/tagTemplates/{tagTemplateId}
  /// This field cannot be modified after creation.
  late final Output<String> template;

  /// The display name of the tag template.
  late final Output<String> templateDisplayname;

  Tag(
    String name, {
    TagArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:datacatalog/tag:Tag',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.column = registerOutput<String?>('column');
    this.fields = registerOutput<List<TagField>>('fields');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String?>('parent');
    this.template = registerOutput<String>('template');
    this.templateDisplayname = registerOutput<String>('templateDisplayname');
  }
}
