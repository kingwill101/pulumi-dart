// ignore_for_file: unused_element, unnecessary_cast

class RepositoryUpstream {
  /// The name of an upstream repository.
  final String repositoryName;

  /// Creates a new [RepositoryUpstream].
  /// [repositoryName] The name of an upstream repository.
  RepositoryUpstream({required this.repositoryName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'repositoryName': repositoryName};
  }

  factory RepositoryUpstream.fromMap(Map<String, dynamic> map) {
    return RepositoryUpstream(repositoryName: map['repositoryName'] as String);
  }
}
