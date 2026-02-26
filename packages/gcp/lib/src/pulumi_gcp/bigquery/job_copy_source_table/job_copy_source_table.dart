// ignore_for_file: unused_element, unnecessary_cast

class JobCopySourceTable {
  /// The ID of the dataset containing this table.
  final String? datasetId;

  /// The ID of the project containing this table.
  final String? projectId;

  /// The table. Can be specified `{{table_id}}` if <span pulumi-lang-nodejs="`projectId`" pulumi-lang-dotnet="`ProjectId`" pulumi-lang-go="`projectId`" pulumi-lang-python="`project_id`" pulumi-lang-yaml="`projectId`" pulumi-lang-java="`projectId`">`project_id`</span> and <span pulumi-lang-nodejs="`datasetId`" pulumi-lang-dotnet="`DatasetId`" pulumi-lang-go="`datasetId`" pulumi-lang-python="`dataset_id`" pulumi-lang-yaml="`datasetId`" pulumi-lang-java="`datasetId`">`dataset_id`</span> are also set,
  /// or of the form `projects/{{project}}/datasets/{{dataset_id}}/tables/{{table_id}}` if not.
  final String tableId;

  JobCopySourceTable({
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

  factory JobCopySourceTable.fromMap(Map<String, dynamic> map) {
    return JobCopySourceTable(
      datasetId: map['datasetId'] == null ? null : map['datasetId'] as String,
      projectId: map['projectId'] == null ? null : map['projectId'] as String,
      tableId: map['tableId'] as String,
    );
  }
}
