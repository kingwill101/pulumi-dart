// ignore_for_file: unused_element, unnecessary_cast

import 'pull_request_filter.dart';
import 'push_filter.dart';

/// GitHubEventsConfig describes the configuration of a trigger that creates a build whenever a GitHub event is received.
class GitHubEventsConfig {
  /// Optional. The resource name of the github enterprise config that should be applied to this installation. For example: "projects/{$project_id}/locations/{$location_id}/githubEnterpriseConfigs/{$config_id}"
  final String? enterpriseConfigResourceName;

  /// The installationID that emits the GitHub event.
  final String? installationId;

  /// Name of the repository. For example: The name for https://github.com/googlecloudplatform/cloud-builders is "cloud-builders".
  final String? name;

  /// Owner of the repository. For example: The owner for https://github.com/googlecloudplatform/cloud-builders is "googlecloudplatform".
  final String? owner;

  /// filter to match changes in pull requests.
  final PullRequestFilter? pullRequest;

  /// filter to match changes in refs like branches, tags.
  final PushFilter? push;

  /// Creates a new [GitHubEventsConfig].
  /// [enterpriseConfigResourceName] Optional. The resource name of the github enterprise config that should be applied to this installation. For example: "projects/{$project_id}/locations/{$location_id}/githubEnterpriseConfigs/{$config_id}"
  /// [installationId] The installationID that emits the GitHub event.
  /// [name] Name of the repository. For example: The name for https://github.com/googlecloudplatform/cloud-builders is "cloud-builders".
  /// [owner] Owner of the repository. For example: The owner for https://github.com/googlecloudplatform/cloud-builders is "googlecloudplatform".
  /// [pullRequest] filter to match changes in pull requests.
  /// [push] filter to match changes in refs like branches, tags.
  GitHubEventsConfig({
    this.enterpriseConfigResourceName,
    this.installationId,
    this.name,
    this.owner,
    this.pullRequest,
    this.push,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enterpriseConfigResourceNameValue = enterpriseConfigResourceName;
    if (enterpriseConfigResourceNameValue != null) {
      map['enterpriseConfigResourceName'] = enterpriseConfigResourceNameValue;
    }
    final installationIdValue = installationId;
    if (installationIdValue != null) {
      map['installationId'] = installationIdValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final ownerValue = owner;
    if (ownerValue != null) {
      map['owner'] = ownerValue;
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

  factory GitHubEventsConfig.fromMap(Map<String, dynamic> map) {
    return GitHubEventsConfig(
      enterpriseConfigResourceName: map['enterpriseConfigResourceName'] == null
          ? null
          : map['enterpriseConfigResourceName'] as String,
      installationId: map['installationId'] == null
          ? null
          : map['installationId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      owner: map['owner'] == null ? null : map['owner'] as String,
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
