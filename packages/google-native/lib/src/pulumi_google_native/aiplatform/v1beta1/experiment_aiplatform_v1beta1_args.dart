// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Experiment.
class ExperimentAiplatformV1beta1Args {
  /// Description of this TensorboardExperiment.
  final pulumi.Input<String>? description;

  /// User provided name of this TensorboardExperiment.
  final pulumi.Input<String>? displayName;

  /// Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final pulumi.Input<String>? etag;

  /// The labels with user-defined metadata to organize your TensorboardExperiment. Label keys and values cannot be longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one Dataset (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with `aiplatform.googleapis.com/` and are immutable. The following system labels exist for each Dataset: * `aiplatform.googleapis.com/dataset_metadata_schema`: output only. Its value is the metadata_schema's title.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Immutable. Source of the TensorboardExperiment. Example: a custom training job.
  final pulumi.Input<String>? source;

  /// Required. The ID to use for the Tensorboard experiment, which becomes the final component of the Tensorboard experiment's resource name. This value should be 1-128 characters, and valid characters are `/a-z-/`.
  final pulumi.Input<String> tensorboardExperimentId;
  final pulumi.Input<String> tensorboardId;

  ExperimentAiplatformV1beta1Args({
    this.description,
    this.displayName,
    this.etag,
    this.labels,
    this.location,
    this.project,
    this.source,
    required this.tensorboardExperimentId,
    required this.tensorboardId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
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
    final sourceValue = source;
    if (sourceValue != null) {
      map['source'] = sourceValue;
    }
    map['tensorboardExperimentId'] = tensorboardExperimentId;
    map['tensorboardId'] = tensorboardId;
    return map;
  }

  factory ExperimentAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return ExperimentAiplatformV1beta1Args(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      etag: pulumi.Input.asOptionalInput<String>(map['etag']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      source: pulumi.Input.asOptionalInput<String>(map['source']),
      tensorboardExperimentId:
          pulumi.Input.asInput<String>(map['tensorboardExperimentId']),
      tensorboardId: pulumi.Input.asInput<String>(map['tensorboardId']),
    );
  }
}
