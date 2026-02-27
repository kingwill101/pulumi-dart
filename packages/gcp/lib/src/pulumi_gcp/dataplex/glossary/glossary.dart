import 'package:pulumi/pulumi.dart' as pulumi;
import 'glossary_args.dart';

/// Represents a collection of categories and terms defined by the user. Glossary is a top level resource and is the GCP parent resource of all the categories and terms within it.
///
///
///
/// ## Example Usage
///
/// ### Dataplex Glossary Basic
///
///
///
/// ### Dataplex Glossary Full
///
///
///
///
/// ## Import
///
/// Glossary can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/glossaries/{{glossary_id}}`
///
/// * `{{project}}/{{location}}/{{glossary_id}}`
///
/// * `{{location}}/{{glossary_id}}`
///
/// When using the `pulumi import` command, Glossary can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataplex/glossary:Glossary default projects/{{project}}/locations/{{location}}/glossaries/{{glossary_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataplex/glossary:Glossary default {{project}}/{{location}}/{{glossary_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataplex/glossary:Glossary default {{location}}/{{glossary_id}}
/// ```
class Glossary extends pulumi.CustomResource {
  /// The number of categories in the glossary.
  late final pulumi.Output<int> categoryCount;

  /// The time at which the glossary was created.
  late final pulumi.Output<String> createTime;

  /// The user-mutable description of the glossary.
  late final pulumi.Output<String?> description;

  /// User friendly display name of the glossary. This is user-mutable. This will be same as the glossaryId, if not specified.
  late final pulumi.Output<String?> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The glossary id for creation.
  late final pulumi.Output<String> glossaryId;

  /// User-defined labels for the Glossary.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location where the glossary should reside.
  late final pulumi.Output<String> location;

  /// The resource name of the Glossary. Format: projects/{projectId}/locations/{locationId}/glossaries/{glossaryId}
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The number of terms in the glossary.
  late final pulumi.Output<int> termCount;

  /// System generated unique id for the Glossary. This ID will be different if the Glossary is deleted and re-created with the same name.
  late final pulumi.Output<String> uid;

  /// The time at which the glossary was last updated.
  late final pulumi.Output<String> updateTime;

  Glossary(
    String name, {
    GlossaryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/glossary:Glossary',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.categoryCount = registerOutput<int>('categoryCount');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.glossaryId = registerOutput<String>('glossaryId');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.termCount = registerOutput<int>('termCount');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
