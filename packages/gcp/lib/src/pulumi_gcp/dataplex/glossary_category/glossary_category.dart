import 'package:pulumi/pulumi.dart' as pulumi;
import 'glossary_category_args.dart';

/// Represents a collection of categories and terms within a Glossary that are related to each other.
///
///
///
/// ## Example Usage
///
/// ### Dataplex Glossary Category Basic
///
///
///
/// ### Dataplex Glossary Category Full
///
///
///
///
/// ## Import
///
/// GlossaryCategory can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/glossaries/{{glossary_id}}/categories/{{category_id}}`
///
/// * `{{project}}/{{location}}/{{glossary_id}}/{{category_id}}`
///
/// * `{{location}}/{{glossary_id}}/{{category_id}}`
///
/// When using the `pulumi import` command, GlossaryCategory can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataplex/glossaryCategory:GlossaryCategory default projects/{{project}}/locations/{{location}}/glossaries/{{glossary_id}}/categories/{{category_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataplex/glossaryCategory:GlossaryCategory default {{project}}/{{location}}/{{glossary_id}}/{{category_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataplex/glossaryCategory:GlossaryCategory default {{location}}/{{glossary_id}}/{{category_id}}
/// ```
class GlossaryCategory extends pulumi.CustomResource {
  /// The category id for creation.
  late final pulumi.Output<String?> categoryId;

  /// The time at which the GlossaryCategory was created.
  late final pulumi.Output<String> createTime;

  /// The user-mutable description of the GlossaryCategory.
  late final pulumi.Output<String?> description;

  /// User friendly display name of the GlossaryCategory. This is user-mutable. This will be same as the categoryId, if not specified.
  late final pulumi.Output<String?> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The glossary id for creation.
  late final pulumi.Output<String?> glossaryId;

  /// User-defined labels for the GlossaryCategory.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location where the glossary category should reside.
  late final pulumi.Output<String> location;

  /// The resource name of the GlossaryCategory. Format: projects/{projectId}/locations/{locationId}/glossaries/{glossaryId}/categories/{categoryId}
  late final pulumi.Output<String> name;

  /// The immediate parent of the GlossaryCategory in the resource-hierarchy. It can either be a Glossary or a Category. Format: projects/{projectId}/locations/{locationId}/glossaries/{glossaryId} OR projects/{projectId}/locations/{locationId}/glossaries/{glossaryId}/categories/{categoryId}
  late final pulumi.Output<String> parent;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// System generated unique id for the GlossaryCategory. This ID will be different if the GlossaryCategory is deleted and re-created with the same name.
  late final pulumi.Output<String> uid;

  /// The time at which the GlossaryCategory was last updated.
  late final pulumi.Output<String> updateTime;

  GlossaryCategory(
    String name, {
    GlossaryCategoryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/glossaryCategory:GlossaryCategory',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.categoryId = registerOutput<String?>('categoryId');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.glossaryId = registerOutput<String?>('glossaryId');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String>('parent');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
