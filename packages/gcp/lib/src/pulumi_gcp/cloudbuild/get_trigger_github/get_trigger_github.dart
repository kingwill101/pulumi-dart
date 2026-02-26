// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_trigger_github_pull_request/get_trigger_github_pull_request.dart';
import '../get_trigger_github_push/get_trigger_github_push.dart';

class GetTriggerGithub {
  /// The resource name of the github enterprise config that should be applied to this installation.
  /// For example: "projects/{$projectId}/locations/{$locationId}/githubEnterpriseConfigs/{$configId}"
  final String enterpriseConfigResourceName;

  /// Name of the repository. For example: The name for
  /// https://github.com/googlecloudplatform/cloud-builders is "cloud-builders".
  final String name;

  /// Owner of the repository. For example: The owner for
  /// https://github.com/googlecloudplatform/cloud-builders is "googlecloudplatform".
  final String owner;

  /// filter to match changes in pull requests. Specify only one of 'pull_request' or 'push'.
  final List<GetTriggerGithubPullRequest> pullRequests;

  /// filter to match changes in refs, like branches or tags. Specify only one of 'pull_request' or 'push'.
  final List<GetTriggerGithubPush> pushes;

  GetTriggerGithub({
    required this.enterpriseConfigResourceName,
    required this.name,
    required this.owner,
    required this.pullRequests,
    required this.pushes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enterpriseConfigResourceName'] = enterpriseConfigResourceName;
    map['name'] = name;
    map['owner'] = owner;
    map['pullRequests'] =
        Input.encodeList<GetTriggerGithubPullRequest, Map<String, dynamic>>(
            pullRequests, (value) => value.toMap());
    map['pushes'] =
        Input.encodeList<GetTriggerGithubPush, Map<String, dynamic>>(
            pushes, (value) => value.toMap());
    return map;
  }

  factory GetTriggerGithub.fromMap(Map<String, dynamic> map) {
    return GetTriggerGithub(
      enterpriseConfigResourceName:
          map['enterpriseConfigResourceName'] as String,
      name: map['name'] as String,
      owner: map['owner'] as String,
      pullRequests: Input.decodeList<GetTriggerGithubPullRequest>(
          map['pullRequests'],
          (value) => GetTriggerGithubPullRequest.fromMap(
              (value as Map).cast<String, dynamic>())),
      pushes: Input.decodeList<GetTriggerGithubPush>(
          map['pushes'],
          (value) => GetTriggerGithubPush.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
