// ignore_for_file: unused_element, unnecessary_cast

class GetTriggerGitFileSource {
  /// The full resource name of the bitbucket server config.
  /// Format: projects/{project}/locations/{location}/bitbucketServerConfigs/{id}.
  final String bitbucketServerConfig;

  /// The full resource name of the github enterprise config.
  /// Format: projects/{project}/locations/{location}/githubEnterpriseConfigs/{id}. projects/{project}/githubEnterpriseConfigs/{id}.
  final String githubEnterpriseConfig;

  /// The path of the file, with the repo root as the root of the path.
  final String path;

  /// The type of the repo, since it may not be explicit from the repo field (e.g from a URL).
  /// Values can be UNKNOWN, CLOUD_SOURCE_REPOSITORIES, GITHUB, BITBUCKET_SERVER Possible values: ["UNKNOWN", "CLOUD_SOURCE_REPOSITORIES", "GITHUB", "BITBUCKET_SERVER"]
  final String repoType;

  /// The fully qualified resource name of the Repo API repository. The fully qualified resource name of the Repo API repository.
  /// If unspecified, the repo from which the trigger invocation originated is assumed to be the repo from which to read the specified path.
  final String repository;

  /// The branch, tag, arbitrary ref, or SHA version of the repo to use when resolving the
  /// filename (optional). This field respects the same syntax/resolution as described here: https://git-scm.com/docs/gitrevisions
  /// If unspecified, the revision from which the trigger invocation originated is assumed to be the revision from which to read the specified path.
  final String revision;

  /// The URI of the repo (optional). If unspecified, the repo from which the trigger
  /// invocation originated is assumed to be the repo from which to read the specified path.
  final String uri;

  /// Creates a new [GetTriggerGitFileSource].
  /// [bitbucketServerConfig] The full resource name of the bitbucket server config.
  /// [githubEnterpriseConfig] The full resource name of the github enterprise config.
  /// [path] The path of the file, with the repo root as the root of the path.
  /// [repoType] The type of the repo, since it may not be explicit from the repo field (e.g from a URL).
  /// [repository] The fully qualified resource name of the Repo API repository. The fully qualified resource name of the Repo API repository.
  /// [revision] The branch, tag, arbitrary ref, or SHA version of the repo to use when resolving the
  /// [uri] The URI of the repo (optional). If unspecified, the repo from which the trigger
  GetTriggerGitFileSource({
    required this.bitbucketServerConfig,
    required this.githubEnterpriseConfig,
    required this.path,
    required this.repoType,
    required this.repository,
    required this.revision,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bitbucketServerConfig': bitbucketServerConfig,
      'githubEnterpriseConfig': githubEnterpriseConfig,
      'path': path,
      'repoType': repoType,
      'repository': repository,
      'revision': revision,
      'uri': uri,
    };
  }

  factory GetTriggerGitFileSource.fromMap(Map<String, dynamic> map) {
    return GetTriggerGitFileSource(
      bitbucketServerConfig: map['bitbucketServerConfig'] as String,
      githubEnterpriseConfig: map['githubEnterpriseConfig'] as String,
      path: map['path'] as String,
      repoType: map['repoType'] as String,
      repository: map['repository'] as String,
      revision: map['revision'] as String,
      uri: map['uri'] as String,
    );
  }
}
