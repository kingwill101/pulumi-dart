// ignore_for_file: unused_element, unnecessary_cast

class TableReferenceResponse {
  /// [Required] The ID of the dataset containing this table.
  final String datasetId;

  /// [Required] The ID of the project containing this table.
  final String project;

  /// [Required] The ID of the table. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 1,024 characters.
  final String tableId;

  TableReferenceResponse({
    required this.datasetId,
    required this.project,
    required this.tableId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasetId'] = datasetId;
    map['project'] = project;
    map['tableId'] = tableId;
    return map;
  }

  factory TableReferenceResponse.fromMap(Map<String, dynamic> map) {
    return TableReferenceResponse(
      datasetId: map['datasetId'] as String,
      project: map['project'] as String,
      tableId: map['tableId'] as String,
    );
  }
}
