// ignore_for_file: unused_element, unnecessary_cast

class GetDatasetAccessRoutine {
  /// The dataset ID.
  final String datasetId;

  /// The ID of the project containing this table.
  final String projectId;

  /// The ID of the routine. The ID must contain only letters (a-z,
  /// A-Z), numbers (0-9), or underscores (_). The maximum length
  /// is 256 characters.
  final String routineId;

  /// Creates a new [GetDatasetAccessRoutine].
  /// [datasetId] The dataset ID.
  /// [projectId] The ID of the project containing this table.
  /// [routineId] The ID of the routine. The ID must contain only letters (a-z,
  GetDatasetAccessRoutine({
    required this.datasetId,
    required this.projectId,
    required this.routineId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasetId'] = datasetId;
    map['projectId'] = projectId;
    map['routineId'] = routineId;
    return map;
  }

  factory GetDatasetAccessRoutine.fromMap(Map<String, dynamic> map) {
    return GetDatasetAccessRoutine(
      datasetId: map['datasetId'] as String,
      projectId: map['projectId'] as String,
      routineId: map['routineId'] as String,
    );
  }
}
