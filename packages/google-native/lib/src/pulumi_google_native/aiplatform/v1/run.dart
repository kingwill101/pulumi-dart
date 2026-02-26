import 'package:pulumi/pulumi.dart';
import 'run_args.dart';

/// Creates a TensorboardRun.
/// Auto-naming is currently not supported for this resource.
class Run extends CustomResource {
  /// Timestamp when this TensorboardRun was created.
  late final Output<String> createTime;

  /// Description of this TensorboardRun.
  late final Output<String> description;

  /// User provided name of this TensorboardRun. This value must be unique among all TensorboardRuns belonging to the same parent TensorboardExperiment.
  late final Output<String> displayName;

  /// Used to perform a consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  late final Output<String> etag;
  late final Output<String> experimentId;

  /// The labels with user-defined metadata to organize your TensorboardRuns. This field will be used to filter and visualize Runs in the Tensorboard UI. For example, a Vertex AI training job can set a label aiplatform.googleapis.com/training_job_id=xxxxx to all the runs created within that job. An end user can set a label experiment_id=xxxxx for all the runs produced in a Jupyter notebook. These runs can be grouped by a label value and visualized together in the Tensorboard UI. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one TensorboardRun (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// Name of the TensorboardRun. Format: `projects/{project}/locations/{location}/tensorboards/{tensorboard}/experiments/{experiment}/runs/{run}`
  late final Output<String> name;
  late final Output<String> project;
  late final Output<String> tensorboardId;

  /// Required. The ID to use for the Tensorboard run, which becomes the final component of the Tensorboard run's resource name. This value should be 1-128 characters, and valid characters are `/a-z-/`.
  late final Output<String> tensorboardRunId;

  /// Timestamp when this TensorboardRun was last updated.
  late final Output<String> updateTime;

  Run(
    String name, {
    RunArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:aiplatform/v1:Run',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.etag = Output.createUnknown<String>();
    this.experimentId = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.tensorboardId = Output.createUnknown<String>();
    this.tensorboardRunId = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
