// ignore_for_file: unused_element, unnecessary_cast


class GetDatasetAccessDatasetDataset {
  /// The dataset ID.
  final String datasetId;
  /// The ID of the project containing this table.
  final String projectId;

  /// Creates a new [GetDatasetAccessDatasetDataset].
  /// [datasetId] The dataset ID.
  /// [projectId] The ID of the project containing this table.
  GetDatasetAccessDatasetDataset({
    required this.datasetId,
    required this.projectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'projectId': projectId,
    };
  }

  factory GetDatasetAccessDatasetDataset.fromMap(Map<String, dynamic> map) {
    return GetDatasetAccessDatasetDataset(
      datasetId: map['datasetId'] as String,
      projectId: map['projectId'] as String,
    );
  }
}

