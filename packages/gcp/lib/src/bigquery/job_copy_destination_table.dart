// ignore_for_file: unused_element, unnecessary_cast

class JobCopyDestinationTable {
  /// The ID of the dataset containing this table.
  final String? datasetId;

  /// The ID of the project containing this table.
  final String? projectId;

  /// The table. Can be specified `{{table_id}}` if `project_id` and `dataset_id` are also set,
  /// or of the form `projects/{{project}}/datasets/{{dataset_id}}/tables/{{table_id}}` if not.
  final String tableId;

  /// Creates a new [JobCopyDestinationTable].
  /// [datasetId] The ID of the dataset containing this table.
  /// [projectId] The ID of the project containing this table.
  /// [tableId] The table. Can be specified `{{table_id}}` if `project_id` and `dataset_id` are also set,
  JobCopyDestinationTable({
    this.datasetId,
    this.projectId,
    required this.tableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': ?datasetId,
      'projectId': ?projectId,
      'tableId': tableId,
    };
  }

  factory JobCopyDestinationTable.fromMap(Map<String, dynamic> map) {
    return JobCopyDestinationTable(
      datasetId: map['datasetId'] == null ? null : map['datasetId'] as String,
      projectId: map['projectId'] == null ? null : map['projectId'] as String,
      tableId: map['tableId'] as String,
    );
  }
}
