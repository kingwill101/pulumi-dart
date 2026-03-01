// ignore_for_file: unused_element, unnecessary_cast


class NotebookExecutionDataformRepositorySource {
  /// The commit SHA to read repository with. If unset, the file will be read at HEAD.
  final String? commitSha;
  /// The resource name of the Dataform Repository.
  final String dataformRepositoryResourceName;

  /// Creates a new [NotebookExecutionDataformRepositorySource].
  /// [commitSha] The commit SHA to read repository with. If unset, the file will be read at HEAD.
  /// [dataformRepositoryResourceName] The resource name of the Dataform Repository.
  NotebookExecutionDataformRepositorySource({
    this.commitSha,
    required this.dataformRepositoryResourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commitSha': ?commitSha,
      'dataformRepositoryResourceName': dataformRepositoryResourceName,
    };
  }

  factory NotebookExecutionDataformRepositorySource.fromMap(Map<String, dynamic> map) {
    return NotebookExecutionDataformRepositorySource(
      commitSha: map['commitSha'] == null ? null : map['commitSha'] as String,
      dataformRepositoryResourceName: map['dataformRepositoryResourceName'] as String,
    );
  }
}

