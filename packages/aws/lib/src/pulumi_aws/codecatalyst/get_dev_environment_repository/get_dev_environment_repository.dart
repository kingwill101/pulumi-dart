// ignore_for_file: unused_element, unnecessary_cast

class GetDevEnvironmentRepository {
  final String branchName;
  final String repositoryName;

  GetDevEnvironmentRepository({
    required this.branchName,
    required this.repositoryName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['branchName'] = branchName;
    map['repositoryName'] = repositoryName;
    return map;
  }

  factory GetDevEnvironmentRepository.fromMap(Map<String, dynamic> map) {
    return GetDevEnvironmentRepository(
      branchName: map['branchName'] as String,
      repositoryName: map['repositoryName'] as String,
    );
  }
}
