// ignore_for_file: unused_element, unnecessary_cast

class DatasetAccessDatasetDataset {
  /// The ID of the dataset containing this table.
  final String datasetId;

  /// The ID of the project containing this table.
  final String projectId;

  /// Creates a new [DatasetAccessDatasetDataset].
  /// [datasetId] The ID of the dataset containing this table.
  /// [projectId] The ID of the project containing this table.
  DatasetAccessDatasetDataset({
    required this.datasetId,
    required this.projectId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasetId'] = datasetId;
    map['projectId'] = projectId;
    return map;
  }

  factory DatasetAccessDatasetDataset.fromMap(Map<String, dynamic> map) {
    return DatasetAccessDatasetDataset(
      datasetId: map['datasetId'] as String,
      projectId: map['projectId'] as String,
    );
  }
}
