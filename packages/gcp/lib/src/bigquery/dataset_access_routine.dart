// ignore_for_file: unused_element, unnecessary_cast


class DatasetAccessRoutine {
  /// The ID of the dataset containing this table.
  final String datasetId;
  /// The ID of the project containing this table.
  final String projectId;
  /// The ID of the routine. The ID must contain only letters (a-z,
  /// A-Z), numbers (0-9), or underscores (_). The maximum length
  /// is 256 characters.
  final String routineId;

  /// Creates a new [DatasetAccessRoutine].
  /// [datasetId] The ID of the dataset containing this table.
  /// [projectId] The ID of the project containing this table.
  /// [routineId] The ID of the routine. The ID must contain only letters (a-z,
  DatasetAccessRoutine({
    required this.datasetId,
    required this.projectId,
    required this.routineId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'projectId': projectId,
      'routineId': routineId,
    };
  }

  factory DatasetAccessRoutine.fromMap(Map<String, dynamic> map) {
    return DatasetAccessRoutine(
      datasetId: map['datasetId'] as String,
      projectId: map['projectId'] as String,
      routineId: map['routineId'] as String,
    );
  }
}

