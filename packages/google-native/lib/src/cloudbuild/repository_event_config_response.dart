// ignore_for_file: unused_element, unnecessary_cast

import 'pull_request_filter_response.dart';
import 'push_filter_response.dart';

/// The configuration of a trigger that creates a build whenever an event from Repo API is received.
class RepositoryEventConfigResponse {
  /// Filter to match changes in pull requests.
  final PullRequestFilterResponse pullRequest;

  /// Filter to match changes in refs like branches, tags.
  final PushFilterResponse push;

  /// The resource name of the Repo API resource.
  final String repository;

  /// The type of the SCM vendor the repository points to.
  final String repositoryType;

  /// Creates a new [RepositoryEventConfigResponse].
  /// [pullRequest] Filter to match changes in pull requests.
  /// [push] Filter to match changes in refs like branches, tags.
  /// [repository] The resource name of the Repo API resource.
  /// [repositoryType] The type of the SCM vendor the repository points to.
  RepositoryEventConfigResponse({
    required this.pullRequest,
    required this.push,
    required this.repository,
    required this.repositoryType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['pullRequest'] = pullRequest.toMap();
    map['push'] = push.toMap();
    map['repository'] = repository;
    map['repositoryType'] = repositoryType;
    return map;
  }

  factory RepositoryEventConfigResponse.fromMap(Map<String, dynamic> map) {
    return RepositoryEventConfigResponse(
      pullRequest: PullRequestFilterResponse.fromMap(
          (map['pullRequest'] as Map).cast<String, dynamic>()),
      push: PushFilterResponse.fromMap(
          (map['push'] as Map).cast<String, dynamic>()),
      repository: map['repository'] as String,
      repositoryType: map['repositoryType'] as String,
    );
  }
}
