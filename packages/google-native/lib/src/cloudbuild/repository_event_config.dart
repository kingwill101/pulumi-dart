// ignore_for_file: unused_element, unnecessary_cast

import 'pull_request_filter.dart';
import 'push_filter.dart';

/// The configuration of a trigger that creates a build whenever an event from Repo API is received.
class RepositoryEventConfig {
  /// Filter to match changes in pull requests.
  final PullRequestFilter? pullRequest;

  /// Filter to match changes in refs like branches, tags.
  final PushFilter? push;

  /// The resource name of the Repo API resource.
  final String? repository;

  /// Creates a new [RepositoryEventConfig].
  /// [pullRequest] Filter to match changes in pull requests.
  /// [push] Filter to match changes in refs like branches, tags.
  /// [repository] The resource name of the Repo API resource.
  RepositoryEventConfig({
    this.pullRequest,
    this.push,
    this.repository,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final pullRequestValue = pullRequest;
    if (pullRequestValue != null) {
      map['pullRequest'] = pullRequestValue.toMap();
    }
    final pushValue = push;
    if (pushValue != null) {
      map['push'] = pushValue.toMap();
    }
    final repositoryValue = repository;
    if (repositoryValue != null) {
      map['repository'] = repositoryValue;
    }
    return map;
  }

  factory RepositoryEventConfig.fromMap(Map<String, dynamic> map) {
    return RepositoryEventConfig(
      pullRequest: map['pullRequest'] == null
          ? null
          : PullRequestFilter.fromMap(
              (map['pullRequest'] as Map).cast<String, dynamic>()),
      push: map['push'] == null
          ? null
          : PushFilter.fromMap((map['push'] as Map).cast<String, dynamic>()),
      repository:
          map['repository'] == null ? null : map['repository'] as String,
    );
  }
}
