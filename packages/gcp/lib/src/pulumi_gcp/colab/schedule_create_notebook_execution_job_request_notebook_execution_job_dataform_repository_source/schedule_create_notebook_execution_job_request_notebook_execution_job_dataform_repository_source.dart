// ignore_for_file: unused_element, unnecessary_cast

class ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobDataformRepositorySource {
  /// The commit SHA to read repository with. If unset, the file will be read at HEAD.
  final String? commitSha;

  /// The resource name of the Dataform Repository.
  final String dataformRepositoryResourceName;

  ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobDataformRepositorySource({
    this.commitSha,
    required this.dataformRepositoryResourceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final commitShaValue = commitSha;
    if (commitShaValue != null) {
      map['commitSha'] = commitShaValue;
    }
    map['dataformRepositoryResourceName'] = dataformRepositoryResourceName;
    return map;
  }

  factory ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobDataformRepositorySource.fromMap(
      Map<String, dynamic> map) {
    return ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobDataformRepositorySource(
      commitSha: map['commitSha'] == null ? null : map['commitSha'] as String,
      dataformRepositoryResourceName:
          map['dataformRepositoryResourceName'] as String,
    );
  }
}
