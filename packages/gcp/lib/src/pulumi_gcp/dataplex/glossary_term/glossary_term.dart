import 'package:pulumi/pulumi.dart';
import 'glossary_term_args.dart';

/// Represents a collection of terms within a Glossary that are related to each other.
///
///
///
/// ## Example Usage
///
/// ### Dataplex Glossary Term Basic
///
///
///
/// ### Dataplex Glossary Term Full
///
///
///
///
/// ## Import
///
/// GlossaryTerm can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/glossaries/{{glossary_id}}/terms/{{term_id}}`
///
/// * `{{project}}/{{location}}/{{glossary_id}}/{{term_id}}`
///
/// * `{{location}}/{{glossary_id}}/{{term_id}}`
///
/// When using the `pulumi import` command, GlossaryTerm can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataplex/glossaryTerm:GlossaryTerm default projects/{{project}}/locations/{{location}}/glossaries/{{glossary_id}}/terms/{{term_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataplex/glossaryTerm:GlossaryTerm default {{project}}/{{location}}/{{glossary_id}}/{{term_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataplex/glossaryTerm:GlossaryTerm default {{location}}/{{glossary_id}}/{{term_id}}
/// ```
class GlossaryTerm extends CustomResource {
  /// The time at which the GlossaryTerm was created.
  late final Output<String> createTime;

  /// The user-mutable description of the GlossaryTerm.
  late final Output<String?> description;

  /// User friendly display name of the GlossaryTerm. This is user-mutable. This will be same as the termId, if not specified.
  late final Output<String?> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// The glossary id for creation.
  late final Output<String?> glossaryId;

  /// User-defined labels for the GlossaryTerm.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The location where the glossary term should reside.
  late final Output<String> location;

  /// The resource name of the GlossaryTerm. Format: projects/{projectId}/locations/{locationId}/glossaries/{glossaryId}/categories/{termId}
  late final Output<String> name;

  /// The immediate parent of the GlossaryTerm in the resource-hierarchy. It can either be a Glossary or a Term. Format: projects/{projectId}/locations/{locationId}/glossaries/{glossaryId} OR projects/{projectId}/locations/{locationId}/glossaries/{glossaryId}/terms/{termId}
  late final Output<String> parent;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The term id for creation.
  late final Output<String?> termId;

  /// System generated unique id for the GlossaryTerm. This ID will be different if the GlossaryTerm is deleted and re-created with the same name.
  late final Output<String> uid;

  /// The time at which the GlossaryTerm was last updated.
  late final Output<String> updateTime;

  GlossaryTerm(
    String name, {
    GlossaryTermArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/glossaryTerm:GlossaryTerm',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
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
    this.termId = registerOutput<String?>('termId');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
