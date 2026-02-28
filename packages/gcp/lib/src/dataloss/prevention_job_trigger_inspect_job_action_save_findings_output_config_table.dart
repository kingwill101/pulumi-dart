// ignore_for_file: unused_element, unnecessary_cast


class PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigTable {
  /// The ID of the dataset containing this table.
  final String datasetId;
  /// The ID of the project containing this table.
  final String projectId;
  /// The ID of the table. The ID must contain only letters (a-z,
  /// A-Z), numbers (0-9), or underscores (_). The maximum length
  /// is 1,024 characters.
  final String? tableId;

  /// Creates a new [PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigTable].
  /// [datasetId] The ID of the dataset containing this table.
  /// [projectId] The ID of the project containing this table.
  /// [tableId] The ID of the table. The ID must contain only letters (a-z,
  PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigTable({
    required this.datasetId,
    required this.projectId,
    this.tableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'projectId': projectId,
      'tableId': ?tableId,
    };
  }

  factory PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigTable.fromMap(Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigTable(
      datasetId: map['datasetId'] as String,
      projectId: map['projectId'] as String,
      tableId: map['tableId'] == null ? null : map['tableId'] as String,
    );
  }
}

