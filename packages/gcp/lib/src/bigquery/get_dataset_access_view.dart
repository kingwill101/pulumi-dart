// ignore_for_file: unused_element, unnecessary_cast

class GetDatasetAccessView {
  /// The dataset ID.
  final String datasetId;

  /// The ID of the project containing this table.
  final String projectId;

  /// The ID of the table. The ID must contain only letters (a-z,
  /// A-Z), numbers (0-9), or underscores (_). The maximum length
  /// is 1,024 characters.
  final String tableId;

  /// Creates a new [GetDatasetAccessView].
  /// [datasetId] The dataset ID.
  /// [projectId] The ID of the project containing this table.
  /// [tableId] The ID of the table. The ID must contain only letters (a-z,
  GetDatasetAccessView({
    required this.datasetId,
    required this.projectId,
    required this.tableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'projectId': projectId,
      'tableId': tableId,
    };
  }

  factory GetDatasetAccessView.fromMap(Map<String, dynamic> map) {
    return GetDatasetAccessView(
      datasetId: map['datasetId'] as String,
      projectId: map['projectId'] as String,
      tableId: map['tableId'] as String,
    );
  }
}
