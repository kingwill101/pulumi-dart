// ignore_for_file: unused_element, unnecessary_cast

class JobQueryDefaultDataset {
  /// The dataset. Can be specified `{{dataset_id}}` if <span pulumi-lang-nodejs="`projectId`" pulumi-lang-dotnet="`ProjectId`" pulumi-lang-go="`projectId`" pulumi-lang-python="`project_id`" pulumi-lang-yaml="`projectId`" pulumi-lang-java="`projectId`">`project_id`</span> is also set,
  /// or of the form `projects/{{project}}/datasets/{{dataset_id}}` if not.
  final String datasetId;

  /// The ID of the project containing this table.
  final String? projectId;

  JobQueryDefaultDataset({
    required this.datasetId,
    this.projectId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasetId'] = datasetId;
    final projectIdValue = projectId;
    if (projectIdValue != null) {
      map['projectId'] = projectIdValue;
    }
    return map;
  }

  factory JobQueryDefaultDataset.fromMap(Map<String, dynamic> map) {
    return JobQueryDefaultDataset(
      datasetId: map['datasetId'] as String,
      projectId: map['projectId'] == null ? null : map['projectId'] as String,
    );
  }
}
