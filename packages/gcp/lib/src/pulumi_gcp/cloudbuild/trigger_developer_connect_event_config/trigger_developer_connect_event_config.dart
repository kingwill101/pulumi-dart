// ignore_for_file: unused_element, unnecessary_cast

import '../trigger_developer_connect_event_config_pull_request/trigger_developer_connect_event_config_pull_request.dart';
import '../trigger_developer_connect_event_config_push/trigger_developer_connect_event_config_push.dart';

class TriggerDeveloperConnectEventConfig {
  /// The Developer Connect Git repository link, formatted as `projects/*/locations/*/connections/*/gitRepositoryLink/*`.
  final String gitRepositoryLink;

  /// (Output)
  /// The type of DeveloperConnect GitRepositoryLink.
  final String? gitRepositoryLinkType;

  /// Filter to match changes in pull requests.
  /// Structure is documented below.
  final TriggerDeveloperConnectEventConfigPullRequest? pullRequest;

  /// Filter to match changes in refs like branches and tags.
  /// Structure is documented below.
  final TriggerDeveloperConnectEventConfigPush? push;

  TriggerDeveloperConnectEventConfig({
    required this.gitRepositoryLink,
    this.gitRepositoryLinkType,
    this.pullRequest,
    this.push,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gitRepositoryLink'] = gitRepositoryLink;
    final gitRepositoryLinkTypeValue = gitRepositoryLinkType;
    if (gitRepositoryLinkTypeValue != null) {
      map['gitRepositoryLinkType'] = gitRepositoryLinkTypeValue;
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

  factory TriggerDeveloperConnectEventConfig.fromMap(Map<String, dynamic> map) {
    return TriggerDeveloperConnectEventConfig(
      gitRepositoryLink: map['gitRepositoryLink'] as String,
      gitRepositoryLinkType: map['gitRepositoryLinkType'] == null
          ? null
          : map['gitRepositoryLinkType'] as String,
      pullRequest: map['pullRequest'] == null
          ? null
          : TriggerDeveloperConnectEventConfigPullRequest.fromMap(
              (map['pullRequest'] as Map).cast<String, dynamic>()),
      push: map['push'] == null
          ? null
          : TriggerDeveloperConnectEventConfigPush.fromMap(
              (map['push'] as Map).cast<String, dynamic>()),
    );
  }
}
