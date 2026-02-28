// ignore_for_file: unused_element, unnecessary_cast

class RepositoryUpstream {
  /// The name of an upstream repository.
  final String repositoryName;

  /// Creates a new [RepositoryUpstream].
  /// [repositoryName] The name of an upstream repository.
  RepositoryUpstream({
    required this.repositoryName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['repositoryName'] = repositoryName;
    return map;
  }

  factory RepositoryUpstream.fromMap(Map<String, dynamic> map) {
    return RepositoryUpstream(
      repositoryName: map['repositoryName'] as String,
    );
  }
}
