// ignore_for_file: unused_element, unnecessary_cast

/// GitRepoSource describes a repo and ref of a code repository.
class GitRepoSourceResponse {
  /// The full resource name of the bitbucket server config. Format: `projects/{project}/locations/{location}/bitbucketServerConfigs/{id}`.
  final String bitbucketServerConfig;

  /// The full resource name of the github enterprise config. Format: `projects/{project}/locations/{location}/githubEnterpriseConfigs/{id}`. `projects/{project}/githubEnterpriseConfigs/{id}`.
  final String githubEnterpriseConfig;

  /// The branch or tag to use. Must start with "refs/" (required).
  final String ref;

  /// See RepoType below.
  final String repoType;

  /// The connected repository resource name, in the format `projects/*/locations/*/connections/*/repositories/*`. Either `uri` or `repository` can be specified and is required.
  final String repository;

  /// The URI of the repo (e.g. https://github.com/user/repo.git). Either `uri` or `repository` can be specified and is required.
  final String uri;

  /// Creates a new [GitRepoSourceResponse].
  /// [bitbucketServerConfig] The full resource name of the bitbucket server config. Format: `projects/{project}/locations/{location}/bitbucketServerConfigs/{id}`.
  /// [githubEnterpriseConfig] The full resource name of the github enterprise config. Format: `projects/{project}/locations/{location}/githubEnterpriseConfigs/{id}`. `projects/{project}/githubEnterpriseConfigs/{id}`.
  /// [ref] The branch or tag to use. Must start with "refs/" (required).
  /// [repoType] See RepoType below.
  /// [repository] The connected repository resource name, in the format `projects/*/locations/*/connections/*/repositories/*`. Either `uri` or `repository` can be specified and is required.
  /// [uri] The URI of the repo (e.g. https://github.com/user/repo.git). Either `uri` or `repository` can be specified and is required.
  GitRepoSourceResponse({
    required this.bitbucketServerConfig,
    required this.githubEnterpriseConfig,
    required this.ref,
    required this.repoType,
    required this.repository,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bitbucketServerConfig'] = bitbucketServerConfig;
    map['githubEnterpriseConfig'] = githubEnterpriseConfig;
    map['ref'] = ref;
    map['repoType'] = repoType;
    map['repository'] = repository;
    map['uri'] = uri;
    return map;
  }

  factory GitRepoSourceResponse.fromMap(Map<String, dynamic> map) {
    return GitRepoSourceResponse(
      bitbucketServerConfig: map['bitbucketServerConfig'] as String,
      githubEnterpriseConfig: map['githubEnterpriseConfig'] as String,
      ref: map['ref'] as String,
      repoType: map['repoType'] as String,
      repository: map['repository'] as String,
      uri: map['uri'] as String,
    );
  }
}
