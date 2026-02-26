// ignore_for_file: unused_element, unnecessary_cast

class TriggerSourceToBuild {
  /// The full resource name of the bitbucket server config.
  /// Format: projects/{project}/locations/{location}/bitbucketServerConfigs/{id}.
  final String? bitbucketServerConfig;

  /// The full resource name of the github enterprise config.
  /// Format: projects/{project}/locations/{location}/githubEnterpriseConfigs/{id}. projects/{project}/githubEnterpriseConfigs/{id}.
  final String? githubEnterpriseConfig;

  /// The branch or tag to use. Must start with "refs/" (required).
  final String ref;

  /// The type of the repo, since it may not be explicit from the repo field (e.g from a URL).
  /// Values can be UNKNOWN, CLOUD_SOURCE_REPOSITORIES, GITHUB, BITBUCKET_SERVER
  /// Possible values are: `UNKNOWN`, `CLOUD_SOURCE_REPOSITORIES`, `GITHUB`, `BITBUCKET_SERVER`.
  final String repoType;

  /// The qualified resource name of the Repo API repository.
  /// Either uri or repository can be specified and is required.
  final String? repository;

  /// The URI of the repo.
  final String? uri;

  TriggerSourceToBuild({
    this.bitbucketServerConfig,
    this.githubEnterpriseConfig,
    required this.ref,
    required this.repoType,
    this.repository,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bitbucketServerConfigValue = bitbucketServerConfig;
    if (bitbucketServerConfigValue != null) {
      map['bitbucketServerConfig'] = bitbucketServerConfigValue;
    }
    final githubEnterpriseConfigValue = githubEnterpriseConfig;
    if (githubEnterpriseConfigValue != null) {
      map['githubEnterpriseConfig'] = githubEnterpriseConfigValue;
    }
    map['ref'] = ref;
    map['repoType'] = repoType;
    final repositoryValue = repository;
    if (repositoryValue != null) {
      map['repository'] = repositoryValue;
    }
    final uriValue = uri;
    if (uriValue != null) {
      map['uri'] = uriValue;
    }
    return map;
  }

  factory TriggerSourceToBuild.fromMap(Map<String, dynamic> map) {
    return TriggerSourceToBuild(
      bitbucketServerConfig: map['bitbucketServerConfig'] == null
          ? null
          : map['bitbucketServerConfig'] as String,
      githubEnterpriseConfig: map['githubEnterpriseConfig'] == null
          ? null
          : map['githubEnterpriseConfig'] as String,
      ref: map['ref'] as String,
      repoType: map['repoType'] as String,
      repository:
          map['repository'] == null ? null : map['repository'] as String,
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}
