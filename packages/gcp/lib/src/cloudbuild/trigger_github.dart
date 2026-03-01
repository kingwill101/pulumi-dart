// ignore_for_file: unused_element, unnecessary_cast

import 'trigger_github_pull_request.dart';
import 'trigger_github_push.dart';

class TriggerGithub {
  /// The resource name of the github enterprise config that should be applied to this installation.
  /// For example: "projects/{$projectId}/locations/{$locationId}/githubEnterpriseConfigs/{$configId}"
  final String? enterpriseConfigResourceName;

  /// Name of the repository. For example: The name for
  /// https://github.com/googlecloudplatform/cloud-builders is "cloud-builders".
  final String? name;

  /// Owner of the repository. For example: The owner for
  /// https://github.com/googlecloudplatform/cloud-builders is "googlecloudplatform".
  final String? owner;

  /// filter to match changes in pull requests. Specify only one of `pull_request` or `push`.
  /// Structure is documented below.
  final TriggerGithubPullRequest? pullRequest;

  /// filter to match changes in refs, like branches or tags. Specify only one of `pull_request` or `push`.
  /// Structure is documented below.
  final TriggerGithubPush? push;

  /// Creates a new [TriggerGithub].
  /// [enterpriseConfigResourceName] The resource name of the github enterprise config that should be applied to this installation.
  /// [name] Name of the repository. For example: The name for
  /// [owner] Owner of the repository. For example: The owner for
  /// [pullRequest] filter to match changes in pull requests. Specify only one of `pull_request` or `push`.
  /// [push] filter to match changes in refs, like branches or tags. Specify only one of `pull_request` or `push`.
  TriggerGithub({
    this.enterpriseConfigResourceName,
    this.name,
    this.owner,
    this.pullRequest,
    this.push,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enterpriseConfigResourceName': ?enterpriseConfigResourceName,
      'name': ?name,
      'owner': ?owner,
      'pullRequest': ?pullRequest == null ? null : pullRequest!.toMap(),
      'push': ?push == null ? null : push!.toMap(),
    };
  }

  factory TriggerGithub.fromMap(Map<String, dynamic> map) {
    return TriggerGithub(
      enterpriseConfigResourceName: map['enterpriseConfigResourceName'] == null
          ? null
          : map['enterpriseConfigResourceName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      owner: map['owner'] == null ? null : map['owner'] as String,
      pullRequest: map['pullRequest'] == null
          ? null
          : TriggerGithubPullRequest.fromMap(
              (map['pullRequest'] as Map).cast<String, dynamic>(),
            ),
      push: map['push'] == null
          ? null
          : TriggerGithubPush.fromMap(
              (map['push'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
