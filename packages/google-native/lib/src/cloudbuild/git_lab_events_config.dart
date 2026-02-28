// ignore_for_file: unused_element, unnecessary_cast

import 'pull_request_filter.dart';
import 'push_filter.dart';

/// GitLabEventsConfig describes the configuration of a trigger that creates a build whenever a GitLab event is received.
class GitLabEventsConfig {
  /// The GitLab config resource that this trigger config maps to.
  final String? gitlabConfigResource;

  /// Namespace of the GitLab project.
  final String? projectNamespace;

  /// Filter to match changes in pull requests.
  final PullRequestFilter? pullRequest;

  /// Filter to match changes in refs like branches, tags.
  final PushFilter? push;

  /// Creates a new [GitLabEventsConfig].
  /// [gitlabConfigResource] The GitLab config resource that this trigger config maps to.
  /// [projectNamespace] Namespace of the GitLab project.
  /// [pullRequest] Filter to match changes in pull requests.
  /// [push] Filter to match changes in refs like branches, tags.
  GitLabEventsConfig({
    this.gitlabConfigResource,
    this.projectNamespace,
    this.pullRequest,
    this.push,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final gitlabConfigResourceValue = gitlabConfigResource;
    if (gitlabConfigResourceValue != null) {
      map['gitlabConfigResource'] = gitlabConfigResourceValue;
    }
    final projectNamespaceValue = projectNamespace;
    if (projectNamespaceValue != null) {
      map['projectNamespace'] = projectNamespaceValue;
    }
    final pullRequestValue = pullRequest;
    if (pullRequestValue != null) {
      map['pullRequest'] = pullRequestValue.toMap();
    }
    final pushValue = push;
    if (pushValue != null) {
      map['push'] = pushValue.toMap();
    }
    return map;
  }

  factory GitLabEventsConfig.fromMap(Map<String, dynamic> map) {
    return GitLabEventsConfig(
      gitlabConfigResource: map['gitlabConfigResource'] == null
          ? null
          : map['gitlabConfigResource'] as String,
      projectNamespace: map['projectNamespace'] == null
          ? null
          : map['projectNamespace'] as String,
      pullRequest: map['pullRequest'] == null
          ? null
          : PullRequestFilter.fromMap(
              (map['pullRequest'] as Map).cast<String, dynamic>()),
      push: map['push'] == null
          ? null
          : PushFilter.fromMap((map['push'] as Map).cast<String, dynamic>()),
    );
  }
}
