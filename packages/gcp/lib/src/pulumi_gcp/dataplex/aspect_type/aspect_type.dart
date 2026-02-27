import 'package:pulumi/pulumi.dart' as pulumi;
import 'aspect_type_args.dart';

/// An Aspect Type is a template for creating Aspects.
///
///
///
/// ## Example Usage
///
/// ### Dataplex Aspect Type Basic
///
///
///
/// ### Dataplex Aspect Type Full
///
///
///
///
/// ## Import
///
/// AspectType can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/aspectTypes/{{aspect_type_id}}`
///
/// * `{{project}}/{{location}}/{{aspect_type_id}}`
///
/// * `{{location}}/{{aspect_type_id}}`
///
/// When using the `pulumi import` command, AspectType can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataplex/aspectType:AspectType default projects/{{project}}/locations/{{location}}/aspectTypes/{{aspect_type_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataplex/aspectType:AspectType default {{project}}/{{location}}/{{aspect_type_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataplex/aspectType:AspectType default {{location}}/{{aspect_type_id}}
/// ```
class AspectType extends pulumi.CustomResource {
  /// The aspect type id of the aspect type.
  late final pulumi.Output<String?> aspectTypeId;

  /// The time when the AspectType was created.
  late final pulumi.Output<String> createTime;

  /// Classifies the data stored by the aspect.
  /// `DATA_CLASSIFICATION_UNSPECIFIED` denotes that the aspect contains only metadata
  /// while `METADATA_AND_DATA` indicates data derived content.
  /// <br><br>
  /// Possible values are: `DATA_CLASSIFICATION_UNSPECIFIED`, `METADATA_AND_DATA`.
  late final pulumi.Output<String?> dataClassification;

  /// Description of the AspectType.
  late final pulumi.Output<String?> description;

  /// User friendly display name.
  late final pulumi.Output<String?> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// User-defined labels for the AspectType.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location where aspect type will be created in.
  late final pulumi.Output<String?> location;

  /// MetadataTemplate of the Aspect.
  late final pulumi.Output<String?> metadataTemplate;

  /// The relative resource name of the AspectType, of the form: projects/{project_number}/locations/{location_id}/aspectTypes/{aspect_type_id}
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Denotes the transfer status of the Aspect Type. It is unspecified
  /// for Aspect Type created from Dataplex API.
  late final pulumi.Output<String> transferStatus;

  /// System generated globally unique ID for the AspectType. This ID will be different if the AspectType is deleted and re-created with the same name.
  late final pulumi.Output<String> uid;

  /// The time when the AspectType was last updated.
  late final pulumi.Output<String> updateTime;

  AspectType(
    String name, {
    AspectTypeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/aspectType:AspectType',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aspectTypeId = registerOutput<String?>('aspectTypeId');
    this.createTime = registerOutput<String>('createTime');
    this.dataClassification = registerOutput<String?>('dataClassification');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String?>('location');
    this.metadataTemplate = registerOutput<String?>('metadataTemplate');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.transferStatus = registerOutput<String>('transferStatus');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
