// ignore_for_file: unused_element, unnecessary_cast


class JobQueryDefaultDataset {
  /// The dataset. Can be specified `{{dataset_id}}` if `project_id` is also set,
  /// or of the form `projects/{{project}}/datasets/{{dataset_id}}` if not.
  final String datasetId;
  /// The ID of the project containing this table.
  final String? projectId;

  /// Creates a new [JobQueryDefaultDataset].
  /// [datasetId] The dataset. Can be specified `{{dataset_id}}` if `project_id` is also set,
  /// [projectId] The ID of the project containing this table.
  JobQueryDefaultDataset({
    required this.datasetId,
    this.projectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'projectId': ?projectId,
    };
  }

  factory JobQueryDefaultDataset.fromMap(Map<String, dynamic> map) {
    return JobQueryDefaultDataset(
      datasetId: map['datasetId'] as String,
      projectId: map['projectId'] == null ? null : map['projectId'] as String,
    );
  }
}

