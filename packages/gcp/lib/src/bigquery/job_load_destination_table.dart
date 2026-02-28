// ignore_for_file: unused_element, unnecessary_cast

class JobLoadDestinationTable {
  /// The ID of the dataset containing this table.
  final String? datasetId;

  /// The ID of the project containing this table.
  final String? projectId;

  /// The table. Can be specified `{{table_id}}` if `project_id` and `dataset_id` are also set,
  /// or of the form `projects/{{project}}/datasets/{{dataset_id}}/tables/{{table_id}}` if not.
  final String tableId;

  /// Creates a new [JobLoadDestinationTable].
  /// [datasetId] The ID of the dataset containing this table.
  /// [projectId] The ID of the project containing this table.
  /// [tableId] The table. Can be specified `{{table_id}}` if `project_id` and `dataset_id` are also set,
  JobLoadDestinationTable({
    this.datasetId,
    this.projectId,
    required this.tableId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final datasetIdValue = datasetId;
    if (datasetIdValue != null) {
      map['datasetId'] = datasetIdValue;
    }
    final projectIdValue = projectId;
    if (projectIdValue != null) {
      map['projectId'] = projectIdValue;
    }
    map['tableId'] = tableId;
    return map;
  }

  factory JobLoadDestinationTable.fromMap(Map<String, dynamic> map) {
    return JobLoadDestinationTable(
      datasetId: map['datasetId'] == null ? null : map['datasetId'] as String,
      projectId: map['projectId'] == null ? null : map['projectId'] as String,
      tableId: map['tableId'] as String,
    );
  }
}
