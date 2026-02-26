// ignore_for_file: unused_element, unnecessary_cast

class RoutineReference {
  /// The ID of the dataset containing this routine.
  final String datasetId;

  /// The ID of the project containing this routine.
  final String project;

  /// The ID of the routine. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 256 characters.
  final String routineId;

  RoutineReference({
    required this.datasetId,
    required this.project,
    required this.routineId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasetId'] = datasetId;
    map['project'] = project;
    map['routineId'] = routineId;
    return map;
  }

  factory RoutineReference.fromMap(Map<String, dynamic> map) {
    return RoutineReference(
      datasetId: map['datasetId'] as String,
      project: map['project'] as String,
      routineId: map['routineId'] as String,
    );
  }
}
