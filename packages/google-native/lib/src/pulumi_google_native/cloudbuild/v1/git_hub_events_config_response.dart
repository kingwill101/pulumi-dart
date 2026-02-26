// ignore_for_file: unused_element, unnecessary_cast

import 'pull_request_filter_response.dart';
import 'push_filter_response.dart';

/// GitHubEventsConfig describes the configuration of a trigger that creates a build whenever a GitHub event is received.
class GitHubEventsConfigResponse {
  /// Optional. The resource name of the github enterprise config that should be applied to this installation. For example: "projects/{$project_id}/locations/{$location_id}/githubEnterpriseConfigs/{$config_id}"
  final String enterpriseConfigResourceName;

  /// The installationID that emits the GitHub event.
  final String installationId;

  /// Name of the repository. For example: The name for https://github.com/googlecloudplatform/cloud-builders is "cloud-builders".
  final String name;

  /// Owner of the repository. For example: The owner for https://github.com/googlecloudplatform/cloud-builders is "googlecloudplatform".
  final String owner;

  /// filter to match changes in pull requests.
  final PullRequestFilterResponse pullRequest;

  /// filter to match changes in refs like branches, tags.
  final PushFilterResponse push;

  GitHubEventsConfigResponse({
    required this.enterpriseConfigResourceName,
    required this.installationId,
    required this.name,
    required this.owner,
    required this.pullRequest,
    required this.push,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enterpriseConfigResourceName'] = enterpriseConfigResourceName;
    map['installationId'] = installationId;
    map['name'] = name;
    map['owner'] = owner;
    map['pullRequest'] = pullRequest.toMap();
    map['push'] = push.toMap();
    return map;
  }

  factory GitHubEventsConfigResponse.fromMap(Map<String, dynamic> map) {
    return GitHubEventsConfigResponse(
      enterpriseConfigResourceName:
          map['enterpriseConfigResourceName'] as String,
      installationId: map['installationId'] as String,
      name: map['name'] as String,
      owner: map['owner'] as String,
      pullRequest: PullRequestFilterResponse.fromMap(
          (map['pullRequest'] as Map).cast<String, dynamic>()),
      push: PushFilterResponse.fromMap(
          (map['push'] as Map).cast<String, dynamic>()),
    );
  }
}
