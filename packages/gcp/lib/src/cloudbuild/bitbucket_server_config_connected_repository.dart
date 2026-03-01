// ignore_for_file: unused_element, unnecessary_cast

class BitbucketServerConfigConnectedRepository {
  /// Identifier for the project storing the repository.
  final String projectKey;

  /// Identifier for the repository.
  final String repoSlug;

  /// Creates a new [BitbucketServerConfigConnectedRepository].
  /// [projectKey] Identifier for the project storing the repository.
  /// [repoSlug] Identifier for the repository.
  BitbucketServerConfigConnectedRepository({
    required this.projectKey,
    required this.repoSlug,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'projectKey': projectKey, 'repoSlug': repoSlug};
  }

  factory BitbucketServerConfigConnectedRepository.fromMap(
    Map<String, dynamic> map,
  ) {
    return BitbucketServerConfigConnectedRepository(
      projectKey: map['projectKey'] as String,
      repoSlug: map['repoSlug'] as String,
    );
  }
}
