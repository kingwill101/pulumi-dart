// ignore_for_file: unused_element, unnecessary_cast

/// BitbucketServerRepositoryId identifies a specific repository hosted on a Bitbucket Server.
class BitbucketServerRepositoryIdResponse {
  /// Identifier for the project storing the repository.
  final String projectKey;

  /// Identifier for the repository.
  final String repoSlug;

  /// The ID of the webhook that was created for receiving events from this repo. We only create and manage a single webhook for each repo.
  final int webhookId;

  /// Creates a new [BitbucketServerRepositoryIdResponse].
  /// [projectKey] Identifier for the project storing the repository.
  /// [repoSlug] Identifier for the repository.
  /// [webhookId] The ID of the webhook that was created for receiving events from this repo. We only create and manage a single webhook for each repo.
  BitbucketServerRepositoryIdResponse({
    required this.projectKey,
    required this.repoSlug,
    required this.webhookId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['projectKey'] = projectKey;
    map['repoSlug'] = repoSlug;
    map['webhookId'] = webhookId;
    return map;
  }

  factory BitbucketServerRepositoryIdResponse.fromMap(
      Map<String, dynamic> map) {
    return BitbucketServerRepositoryIdResponse(
      projectKey: map['projectKey'] as String,
      repoSlug: map['repoSlug'] as String,
      webhookId: map['webhookId'] as int,
    );
  }
}
