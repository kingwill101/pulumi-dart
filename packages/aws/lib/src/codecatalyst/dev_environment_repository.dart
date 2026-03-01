// ignore_for_file: unused_element, unnecessary_cast

class DevEnvironmentRepository {
  /// The name of the branch in a source repository.
  ///
  /// persistent storage (` persistent_storage`) supports the following:
  final String? branchName;

  /// The name of the source repository.
  final String repositoryName;

  /// Creates a new [DevEnvironmentRepository].
  /// [branchName] The name of the branch in a source repository.
  /// [repositoryName] The name of the source repository.
  DevEnvironmentRepository({this.branchName, required this.repositoryName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branchName': ?branchName,
      'repositoryName': repositoryName,
    };
  }

  factory DevEnvironmentRepository.fromMap(Map<String, dynamic> map) {
    return DevEnvironmentRepository(
      branchName: map['branchName'] == null
          ? null
          : map['branchName'] as String,
      repositoryName: map['repositoryName'] as String,
    );
  }
}
