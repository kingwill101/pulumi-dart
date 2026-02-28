// ignore_for_file: unused_element, unnecessary_cast

import 'git_lab_config_response.dart';
import 'pull_request_filter_response.dart';
import 'push_filter_response.dart';

/// GitLabEventsConfig describes the configuration of a trigger that creates a build whenever a GitLab event is received.
class GitLabEventsConfigResponse {
  /// The GitLabConfig specified in the gitlab_config_resource field.
  final GitLabConfigResponse gitlabConfig;

  /// The GitLab config resource that this trigger config maps to.
  final String gitlabConfigResource;

  /// Namespace of the GitLab project.
  final String projectNamespace;

  /// Filter to match changes in pull requests.
  final PullRequestFilterResponse pullRequest;

  /// Filter to match changes in refs like branches, tags.
  final PushFilterResponse push;

  /// Creates a new [GitLabEventsConfigResponse].
  /// [gitlabConfig] The GitLabConfig specified in the gitlab_config_resource field.
  /// [gitlabConfigResource] The GitLab config resource that this trigger config maps to.
  /// [projectNamespace] Namespace of the GitLab project.
  /// [pullRequest] Filter to match changes in pull requests.
  /// [push] Filter to match changes in refs like branches, tags.
  GitLabEventsConfigResponse({
    required this.gitlabConfig,
    required this.gitlabConfigResource,
    required this.projectNamespace,
    required this.pullRequest,
    required this.push,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gitlabConfig'] = gitlabConfig.toMap();
    map['gitlabConfigResource'] = gitlabConfigResource;
    map['projectNamespace'] = projectNamespace;
    map['pullRequest'] = pullRequest.toMap();
    map['push'] = push.toMap();
    return map;
  }

  factory GitLabEventsConfigResponse.fromMap(Map<String, dynamic> map) {
    return GitLabEventsConfigResponse(
      gitlabConfig: GitLabConfigResponse.fromMap(
          (map['gitlabConfig'] as Map).cast<String, dynamic>()),
      gitlabConfigResource: map['gitlabConfigResource'] as String,
      projectNamespace: map['projectNamespace'] as String,
      pullRequest: PullRequestFilterResponse.fromMap(
          (map['pullRequest'] as Map).cast<String, dynamic>()),
      push: PushFilterResponse.fromMap(
          (map['push'] as Map).cast<String, dynamic>()),
    );
  }
}
