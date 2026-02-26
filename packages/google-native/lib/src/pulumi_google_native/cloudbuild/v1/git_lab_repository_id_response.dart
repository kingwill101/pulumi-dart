// ignore_for_file: unused_element, unnecessary_cast

/// GitLabRepositoryId identifies a specific repository hosted on GitLab.com or GitLabEnterprise
class GitLabRepositoryIdResponse {
  /// The ID of the webhook that was created for receiving events from this repo. We only create and manage a single webhook for each repo.
  final int webhookId;

  GitLabRepositoryIdResponse({
    required this.webhookId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['webhookId'] = webhookId;
    return map;
  }

  factory GitLabRepositoryIdResponse.fromMap(Map<String, dynamic> map) {
    return GitLabRepositoryIdResponse(
      webhookId: map['webhookId'] as int,
    );
  }
}
