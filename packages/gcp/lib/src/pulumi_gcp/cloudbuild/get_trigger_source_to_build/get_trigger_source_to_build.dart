// ignore_for_file: unused_element, unnecessary_cast

class GetTriggerSourceToBuild {
  /// The full resource name of the bitbucket server config.
  /// Format: projects/{project}/locations/{location}/bitbucketServerConfigs/{id}.
  final String bitbucketServerConfig;

  /// The full resource name of the github enterprise config.
  /// Format: projects/{project}/locations/{location}/githubEnterpriseConfigs/{id}. projects/{project}/githubEnterpriseConfigs/{id}.
  final String githubEnterpriseConfig;

  /// The branch or tag to use. Must start with "refs/" (required).
  final String ref;

  /// The type of the repo, since it may not be explicit from the repo field (e.g from a URL).
  /// Values can be UNKNOWN, CLOUD_SOURCE_REPOSITORIES, GITHUB, BITBUCKET_SERVER Possible values: ["UNKNOWN", "CLOUD_SOURCE_REPOSITORIES", "GITHUB", "BITBUCKET_SERVER"]
  final String repoType;

  /// The qualified resource name of the Repo API repository.
  /// Either uri or repository can be specified and is required.
  final String repository;

  /// The URI of the repo.
  final String uri;

  GetTriggerSourceToBuild({
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

  factory GetTriggerSourceToBuild.fromMap(Map<String, dynamic> map) {
    return GetTriggerSourceToBuild(
      bitbucketServerConfig: map['bitbucketServerConfig'] as String,
      githubEnterpriseConfig: map['githubEnterpriseConfig'] as String,
      ref: map['ref'] as String,
      repoType: map['repoType'] as String,
      repository: map['repository'] as String,
      uri: map['uri'] as String,
    );
  }
}
