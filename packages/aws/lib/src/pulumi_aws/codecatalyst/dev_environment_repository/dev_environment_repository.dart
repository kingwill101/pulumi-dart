// ignore_for_file: unused_element, unnecessary_cast

class DevEnvironmentRepository {
  /// The name of the branch in a source repository.
  ///
  /// persistent storage (` persistent_storage`) supports the following:
  final String? branchName;

  /// The name of the source repository.
  final String repositoryName;

  DevEnvironmentRepository({
    this.branchName,
    required this.repositoryName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final branchNameValue = branchName;
    if (branchNameValue != null) {
      map['branchName'] = branchNameValue;
    }
    map['repositoryName'] = repositoryName;
    return map;
  }

  factory DevEnvironmentRepository.fromMap(Map<String, dynamic> map) {
    return DevEnvironmentRepository(
      branchName:
          map['branchName'] == null ? null : map['branchName'] as String,
      repositoryName: map['repositoryName'] as String,
    );
  }
}
