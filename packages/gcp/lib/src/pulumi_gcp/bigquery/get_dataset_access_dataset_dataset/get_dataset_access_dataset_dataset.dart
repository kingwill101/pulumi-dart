// ignore_for_file: unused_element, unnecessary_cast

class GetDatasetAccessDatasetDataset {
  /// The dataset ID.
  final String datasetId;

  /// The ID of the project containing this table.
  final String projectId;

  GetDatasetAccessDatasetDataset({
    required this.datasetId,
    required this.projectId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasetId'] = datasetId;
    map['projectId'] = projectId;
    return map;
  }

  factory GetDatasetAccessDatasetDataset.fromMap(Map<String, dynamic> map) {
    return GetDatasetAccessDatasetDataset(
      datasetId: map['datasetId'] as String,
      projectId: map['projectId'] as String,
    );
  }
}
