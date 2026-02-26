import 'package:pulumi/pulumi.dart';
import 'experiment_args.dart';

/// Creates a TensorboardExperiment.
/// Auto-naming is currently not supported for this resource.
class Experiment extends CustomResource {
  /// Timestamp when this TensorboardExperiment was created.
  late final Output<String> createTime;

  /// Description of this TensorboardExperiment.
  late final Output<String> description;

  /// User provided name of this TensorboardExperiment.
  late final Output<String> displayName;

  /// Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  late final Output<String> etag;

  /// The labels with user-defined metadata to organize your TensorboardExperiment. Label keys and values cannot be longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one Dataset (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with `aiplatform.googleapis.com/` and are immutable. The following system labels exist for each Dataset: * `aiplatform.googleapis.com/dataset_metadata_schema`: output only. Its value is the metadata_schema's title.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// Name of the TensorboardExperiment. Format: `projects/{project}/locations/{location}/tensorboards/{tensorboard}/experiments/{experiment}`
  late final Output<String> name;
  late final Output<String> project;

  /// Immutable. Source of the TensorboardExperiment. Example: a custom training job.
  late final Output<String> source;

  /// Required. The ID to use for the Tensorboard experiment, which becomes the final component of the Tensorboard experiment's resource name. This value should be 1-128 characters, and valid characters are `/a-z-/`.
  late final Output<String> tensorboardExperimentId;
  late final Output<String> tensorboardId;

  /// Timestamp when this TensorboardExperiment was last updated.
  late final Output<String> updateTime;

  Experiment(
    String name, {
    ExperimentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:aiplatform/v1:Experiment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.etag = registerOutput<String>('etag');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.source = registerOutput<String>('source');
    this.tensorboardExperimentId =
        registerOutput<String>('tensorboardExperimentId');
    this.tensorboardId = registerOutput<String>('tensorboardId');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
