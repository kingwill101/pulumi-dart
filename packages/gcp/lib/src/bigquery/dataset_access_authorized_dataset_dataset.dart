// ignore_for_file: unused_element, unnecessary_cast

class DatasetAccessAuthorizedDatasetDataset {
  /// The ID of the dataset containing this table.
  final String datasetId;

  /// The ID of the project containing this table.
  final String projectId;

  /// Creates a new [DatasetAccessAuthorizedDatasetDataset].
  /// [datasetId] The ID of the dataset containing this table.
  /// [projectId] The ID of the project containing this table.
  DatasetAccessAuthorizedDatasetDataset({
    required this.datasetId,
    required this.projectId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasetId'] = datasetId;
    map['projectId'] = projectId;
    return map;
  }

  factory DatasetAccessAuthorizedDatasetDataset.fromMap(
      Map<String, dynamic> map) {
    return DatasetAccessAuthorizedDatasetDataset(
      datasetId: map['datasetId'] as String,
      projectId: map['projectId'] as String,
    );
  }
}
