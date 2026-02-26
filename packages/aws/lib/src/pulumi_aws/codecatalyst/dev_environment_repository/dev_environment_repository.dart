// ignore_for_file: unused_element, unnecessary_cast

class DevEnvironmentRepository {
  /// The name of the branch in a source repository.
  ///
  /// persistent storage (`<span pulumi-lang-nodejs=" persistentStorage`" pulumi-lang-dotnet=" PersistentStorage`" pulumi-lang-go=" persistentStorage`" pulumi-lang-python=" persistent_storage`" pulumi-lang-yaml=" persistentStorage`" pulumi-lang-java=" persistentStorage`"> persistent_storage`</span>) supports the following:
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
