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

  GetDatasetAccessView({
    required this.datasetId,
    required this.projectId,
    required this.tableId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasetId'] = datasetId;
    map['projectId'] = projectId;
    map['tableId'] = tableId;
    return map;
  }

  factory GetDatasetAccessView.fromMap(Map<String, dynamic> map) {
    return GetDatasetAccessView(
      datasetId: map['datasetId'] as String,
      projectId: map['projectId'] as String,
      tableId: map['tableId'] as String,
    );
  }
}
