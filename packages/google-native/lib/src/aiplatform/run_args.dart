// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_run_args_doc}
/// The set of arguments for Run.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_run_args_doc}
class RunArgs {
  /// Description of this TensorboardRun.
  final pulumi.Input<String>? description;

  /// User provided name of this TensorboardRun. This value must be unique among all TensorboardRuns belonging to the same parent TensorboardExperiment.
  final pulumi.Input<String> displayName;

  /// Used to perform a consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final pulumi.Input<String>? etag;
  final pulumi.Input<String> experimentId;

  /// The labels with user-defined metadata to organize your TensorboardRuns. This field will be used to filter and visualize Runs in the Tensorboard UI. For example, a Vertex AI training job can set a label aiplatform.googleapis.com/training_job_id=xxxxx to all the runs created within that job. An end user can set a label experiment_id=xxxxx for all the runs produced in a Jupyter notebook. These runs can be grouped by a label value and visualized together in the Tensorboard UI. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one TensorboardRun (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> tensorboardId;

  /// Required. The ID to use for the Tensorboard run, which becomes the final component of the Tensorboard run's resource name. This value should be 1-128 characters, and valid characters are `/a-z-/`.
  final pulumi.Input<String> tensorboardRunId;

  /// Creates a new [RunArgs].
  /// [description] Description of this TensorboardRun.
  /// [displayName] User provided name of this TensorboardRun. This value must be unique among all TensorboardRuns belonging to the same parent TensorboardExperiment.
  /// [etag] Used to perform a consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  /// [experimentId] Required.
  /// [labels] The labels with user-defined metadata to organize your TensorboardRuns. This field will be used to filter and visualize Runs in the Tensorboard UI. For example, a Vertex AI training job can set a label aiplatform.googleapis.com/training_job_id=xxxxx to all the runs created within that job. An end user can set a label experiment_id=xxxxx for all the runs produced in a Jupyter notebook. These runs can be grouped by a label value and visualized together in the Tensorboard UI. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one TensorboardRun (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  /// [location] Optional.
  /// [project] Optional.
  /// [tensorboardId] Required.
  /// [tensorboardRunId] Required. The ID to use for the Tensorboard run, which becomes the final component of the Tensorboard run's resource name. This value should be 1-128 characters, and valid characters are `/a-z-/`.
  RunArgs({
    String? description,
    required String displayName,
    String? etag,
    required String experimentId,
    Map<String, String>? labels,
    String? location,
    String? project,
    required String tensorboardId,
    required String tensorboardRunId,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        displayName = pulumi.Input.asInput<String>(displayName),
        etag = pulumi.Input.asOptionalInput<String>(etag),
        experimentId = pulumi.Input.asInput<String>(experimentId),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asOptionalInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        tensorboardId = pulumi.Input.asInput<String>(tensorboardId),
        tensorboardRunId = pulumi.Input.asInput<String>(tensorboardRunId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['displayName'] = displayName;
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    map['experimentId'] = experimentId;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['tensorboardId'] = tensorboardId;
    map['tensorboardRunId'] = tensorboardRunId;
    return map;
  }

  factory RunArgs.fromMap(Map<String, dynamic> map) {
    return RunArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      experimentId: map['experimentId'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      tensorboardId: map['tensorboardId'] as String,
      tensorboardRunId: map['tensorboardRunId'] as String,
    );
  }
}
