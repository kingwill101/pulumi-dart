import 'package:pulumi/pulumi.dart' as pulumi;
import '../tag_template_field/tag_template_field.dart';
import 'tag_template_args.dart';

/// > **Warning:** `gcp.datacatalog.TagTemplate` is deprecated and will be removed in a future major release. Use `gcp.dataplex.AspectType` instead. For steps to transition your Data Catalog users, workloads, and content to Dataplex Catalog, see https://cloud.google.com/dataplex/docs/transition-to-dataplex-catalog.
///
/// A tag template defines a tag, which can have one or more typed fields.
/// The template is used to create and attach the tag to GCP resources.
///
///
/// To get more information about TagTemplate, see:
///
/// * [API documentation](https://cloud.google.com/data-catalog/docs/reference/rest/v1/projects.locations.tagTemplates)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/data-catalog/docs)
///
/// ## Example Usage
///
/// ### Data Catalog Tag Template Basic
///
///
///
///
/// ## Import
///
/// TagTemplate can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, TagTemplate can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:datacatalog/tagTemplate:TagTemplate default {{name}}
/// ```
class TagTemplate extends pulumi.CustomResource {
  /// The display name for this template.
  late final pulumi.Output<String?> displayName;

  /// Set of tag template field IDs and the settings for the field. This set is an exhaustive list of the allowed fields. This set must contain at least one field and at most 500 fields. The change of field_id will be resulting in re-creating of field. The change of primitive_type will be resulting in re-creating of field, however if the field is a required, you cannot update it.
  /// Structure is documented below.
  late final pulumi.Output<List<TagTemplateField>> fields;

  /// This confirms the deletion of any possible tags using this template. Must be set to true in order to delete the tag template.
  late final pulumi.Output<bool?> forceDelete;

  /// The resource name of the tag template in URL format. Example: projects/{project_id}/locations/{location}/tagTemplates/{tagTemplateId}
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Template location region.
  late final pulumi.Output<String> region;

  /// The id of the tag template to create.
  late final pulumi.Output<String> tagTemplateId;

  TagTemplate(
    String name, {
    TagTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:datacatalog/tagTemplate:TagTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.displayName = registerOutput<String?>('displayName');
    this.fields = registerOutput<List<TagTemplateField>>('fields');
    this.forceDelete = registerOutput<bool?>('forceDelete');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.tagTemplateId = registerOutput<String>('tagTemplateId');
  }
}
