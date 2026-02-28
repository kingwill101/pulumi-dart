// ignore_for_file: unused_element, unnecessary_cast


class RoutineReferenceResponse {
  /// The ID of the dataset containing this routine.
  final String datasetId;
  /// The ID of the project containing this routine.
  final String project;
  /// The ID of the routine. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 256 characters.
  final String routineId;

  /// Creates a new [RoutineReferenceResponse].
  /// [datasetId] The ID of the dataset containing this routine.
  /// [project] The ID of the project containing this routine.
  /// [routineId] The ID of the routine. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 256 characters.
  RoutineReferenceResponse({
    required this.datasetId,
    required this.project,
    required this.routineId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'project': project,
      'routineId': routineId,
    };
  }

  factory RoutineReferenceResponse.fromMap(Map<String, dynamic> map) {
    return RoutineReferenceResponse(
      datasetId: map['datasetId'] as String,
      project: map['project'] as String,
      routineId: map['routineId'] as String,
    );
  }
}

