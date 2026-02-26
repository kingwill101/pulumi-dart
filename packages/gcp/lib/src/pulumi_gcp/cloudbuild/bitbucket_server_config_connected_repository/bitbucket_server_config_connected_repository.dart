// ignore_for_file: unused_element, unnecessary_cast

class BitbucketServerConfigConnectedRepository {
  /// Identifier for the project storing the repository.
  final String projectKey;

  /// Identifier for the repository.
  final String repoSlug;

  BitbucketServerConfigConnectedRepository({
    required this.projectKey,
    required this.repoSlug,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['projectKey'] = projectKey;
    map['repoSlug'] = repoSlug;
    return map;
  }

  factory BitbucketServerConfigConnectedRepository.fromMap(
      Map<String, dynamic> map) {
    return BitbucketServerConfigConnectedRepository(
      projectKey: map['projectKey'] as String,
      repoSlug: map['repoSlug'] as String,
    );
  }
}
