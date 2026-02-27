// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getRun.
class GetRunAiplatformV1beta1Result {
  /// Timestamp when this TensorboardRun was created.
  final String createTime;

  /// Description of this TensorboardRun.
  final String description;

  /// User provided name of this TensorboardRun. This value must be unique among all TensorboardRuns belonging to the same parent TensorboardExperiment.
  final String displayName;

  /// Used to perform a consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final String etag;

  /// The labels with user-defined metadata to organize your TensorboardRuns. This field will be used to filter and visualize Runs in the Tensorboard UI. For example, a Vertex AI training job can set a label aiplatform.googleapis.com/training_job_id=xxxxx to all the runs created within that job. An end user can set a label experiment_id=xxxxx for all the runs produced in a Jupyter notebook. These runs can be grouped by a label value and visualized together in the Tensorboard UI. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one TensorboardRun (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  final Map<String, String> labels;

  /// Name of the TensorboardRun. Format: `projects/{project}/locations/{location}/tensorboards/{tensorboard}/experiments/{experiment}/runs/{run}`
  final String name;

  /// Timestamp when this TensorboardRun was last updated.
  final String updateTime;

  GetRunAiplatformV1beta1Result({
    required this.createTime,
    required this.description,
    required this.displayName,
    required this.etag,
    required this.labels,
    required this.name,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['description'] = description;
    map['displayName'] = displayName;
    map['etag'] = etag;
    map['labels'] = labels;
    map['name'] = name;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetRunAiplatformV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetRunAiplatformV1beta1Result(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      etag: map['etag'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
