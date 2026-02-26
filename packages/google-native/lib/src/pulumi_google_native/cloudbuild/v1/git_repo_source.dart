// ignore_for_file: unused_element, unnecessary_cast

import 'git_repo_source_repo_type.dart';

/// GitRepoSource describes a repo and ref of a code repository.
class GitRepoSource {
  /// The full resource name of the bitbucket server config. Format: `projects/{project}/locations/{location}/bitbucketServerConfigs/{id}`.
  final String? bitbucketServerConfig;

  /// The full resource name of the github enterprise config. Format: `projects/{project}/locations/{location}/githubEnterpriseConfigs/{id}`. `projects/{project}/githubEnterpriseConfigs/{id}`.
  final String? githubEnterpriseConfig;

  /// The branch or tag to use. Must start with "refs/" (required).
  final String? ref;

  /// See RepoType below.
  final GitRepoSourceRepoType? repoType;

  /// The connected repository resource name, in the format `projects/*/locations/*/connections/*/repositories/*`. Either `uri` or `repository` can be specified and is required.
  final String? repository;

  /// The URI of the repo (e.g. https://github.com/user/repo.git). Either `uri` or `repository` can be specified and is required.
  final String? uri;

  GitRepoSource({
    this.bitbucketServerConfig,
    this.githubEnterpriseConfig,
    this.ref,
    this.repoType,
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
    final refValue = ref;
    if (refValue != null) {
      map['ref'] = refValue;
    }
    final repoTypeValue = repoType;
    if (repoTypeValue != null) {
      map['repoType'] = repoTypeValue.value;
    }
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

  factory GitRepoSource.fromMap(Map<String, dynamic> map) {
    return GitRepoSource(
      bitbucketServerConfig: map['bitbucketServerConfig'] == null
          ? null
          : map['bitbucketServerConfig'] as String,
      githubEnterpriseConfig: map['githubEnterpriseConfig'] == null
          ? null
          : map['githubEnterpriseConfig'] as String,
      ref: map['ref'] == null ? null : map['ref'] as String,
      repoType: map['repoType'] == null
          ? null
          : GitRepoSourceRepoType.fromValue(map['repoType'] as String),
      repository:
          map['repository'] == null ? null : map['repository'] as String,
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}
