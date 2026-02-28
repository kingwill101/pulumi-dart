// ignore_for_file: unused_element, unnecessary_cast


class BiReservationPreferredTable {
  /// The ID of the dataset in the above project.
  final String? datasetId;
  /// The assigned project ID of the project.
  final String? projectId;
  /// The ID of the table in the above dataset.
  final String? tableId;

  /// Creates a new [BiReservationPreferredTable].
  /// [datasetId] The ID of the dataset in the above project.
  /// [projectId] The assigned project ID of the project.
  /// [tableId] The ID of the table in the above dataset.
  BiReservationPreferredTable({
    this.datasetId,
    this.projectId,
    this.tableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': ?datasetId,
      'projectId': ?projectId,
      'tableId': ?tableId,
    };
  }

  factory BiReservationPreferredTable.fromMap(Map<String, dynamic> map) {
    return BiReservationPreferredTable(
      datasetId: map['datasetId'] == null ? null : map['datasetId'] as String,
      projectId: map['projectId'] == null ? null : map['projectId'] as String,
      tableId: map['tableId'] == null ? null : map['tableId'] as String,
    );
  }
}

