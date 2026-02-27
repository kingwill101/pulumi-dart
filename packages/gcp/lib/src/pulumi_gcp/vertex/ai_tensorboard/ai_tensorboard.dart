import 'package:pulumi/pulumi.dart';
import '../ai_tensorboard_encryption_spec/ai_tensorboard_encryption_spec.dart';
import 'ai_tensorboard_args.dart';

/// Tensorboard is a physical database that stores users' training metrics. A default Tensorboard is provided in each region of a GCP project. If needed users can also create extra Tensorboards in their projects.
///
///
/// To get more information about Tensorboard, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.tensorboards)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/vertex-ai/docs)
///
/// ## Example Usage
///
/// ### Vertex Ai Tensorboard
///
///
///
/// ### Vertex Ai Tensorboard Full
///
///
///
///
/// ## Import
///
/// Tensorboard can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/tensorboards/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Tensorboard can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vertex/aiTensorboard:AiTensorboard default projects/{{project}}/locations/{{region}}/tensorboards/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiTensorboard:AiTensorboard default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiTensorboard:AiTensorboard default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiTensorboard:AiTensorboard default {{name}}
/// ```
class AiTensorboard extends CustomResource {
  /// Consumer project Cloud Storage path prefix used to store blob data, which can either be a bucket or directory. Does not end with a '/'.
  late final Output<String> blobStoragePathPrefix;

  /// The timestamp of when the Tensorboard was created in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  late final Output<String> createTime;

  /// Description of this Tensorboard.
  late final Output<String?> description;

  /// User provided name of this Tensorboard.
  late final Output<String> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Customer-managed encryption key spec for a Tensorboard. If set, this Tensorboard and all sub-resources of this Tensorboard will be secured by this key.
  /// Structure is documented below.
  late final Output<AiTensorboardEncryptionSpec?> encryptionSpec;

  /// The labels with user-defined metadata to organize your Tensorboards.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Name of the Tensorboard.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The region of the tensorboard. eg us-central1
  late final Output<String> region;

  /// The number of Runs stored in this Tensorboard.
  late final Output<String> runCount;

  /// The timestamp of when the Tensorboard was last updated in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  late final Output<String> updateTime;

  AiTensorboard(
    String name, {
    AiTensorboardArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiTensorboard:AiTensorboard',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.blobStoragePathPrefix =
        registerOutput<String>('blobStoragePathPrefix');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.encryptionSpec =
        registerOutput<AiTensorboardEncryptionSpec?>('encryptionSpec');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.region = registerOutput<String>('region');
    this.runCount = registerOutput<String>('runCount');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
