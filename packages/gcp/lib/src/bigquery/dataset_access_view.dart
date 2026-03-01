// ignore_for_file: unused_element, unnecessary_cast

class DatasetAccessView {
  /// The ID of the dataset containing this table.
  final String datasetId;

  /// The ID of the project containing this table.
  final String projectId;

  /// The ID of the table. The ID must contain only letters (a-z,
  /// A-Z), numbers (0-9), or underscores (_). The maximum length
  /// is 1,024 characters.
  final String tableId;

  /// Creates a new [DatasetAccessView].
  /// [datasetId] The ID of the dataset containing this table.
  /// [projectId] The ID of the project containing this table.
  /// [tableId] The ID of the table. The ID must contain only letters (a-z,
  DatasetAccessView({
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

  factory DatasetAccessView.fromMap(Map<String, dynamic> map) {
    return DatasetAccessView(
      datasetId: map['datasetId'] as String,
      projectId: map['projectId'] as String,
      tableId: map['tableId'] as String,
    );
  }
}
