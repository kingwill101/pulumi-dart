// ignore_for_file: unused_element, unnecessary_cast

class TableReference {
  /// [Required] The ID of the dataset containing this table.
  final String? datasetId;

  /// [Required] The ID of the project containing this table.
  final String? project;

  /// [Required] The ID of the table. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 1,024 characters.
  final String? tableId;

  /// Creates a new [TableReference].
  /// [datasetId] [Required] The ID of the dataset containing this table.
  /// [project] [Required] The ID of the project containing this table.
  /// [tableId] [Required] The ID of the table. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 1,024 characters.
  TableReference({this.datasetId, this.project, this.tableId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': ?datasetId,
      'project': ?project,
      'tableId': ?tableId,
    };
  }

  factory TableReference.fromMap(Map<String, dynamic> map) {
    return TableReference(
      datasetId: map['datasetId'] == null ? null : map['datasetId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      tableId: map['tableId'] == null ? null : map['tableId'] as String,
    );
  }
}
