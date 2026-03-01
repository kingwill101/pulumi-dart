// ignore_for_file: unused_element, unnecessary_cast

import 'trigger_repository_event_config_pull_request.dart';
import 'trigger_repository_event_config_push.dart';

class TriggerRepositoryEventConfig {
  /// Contains filter properties for matching Pull Requests.
  /// Structure is documented below.
  final TriggerRepositoryEventConfigPullRequest? pullRequest;

  /// Contains filter properties for matching git pushes.
  /// Structure is documented below.
  final TriggerRepositoryEventConfigPush? push;

  /// The resource name of the Repo API resource.
  final String? repository;

  /// Creates a new [TriggerRepositoryEventConfig].
  /// [pullRequest] Contains filter properties for matching Pull Requests.
  /// [push] Contains filter properties for matching git pushes.
  /// [repository] The resource name of the Repo API resource.
  TriggerRepositoryEventConfig({this.pullRequest, this.push, this.repository});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pullRequest': ?pullRequest == null ? null : pullRequest!.toMap(),
      'push': ?push == null ? null : push!.toMap(),
      'repository': ?repository,
    };
  }

  factory TriggerRepositoryEventConfig.fromMap(Map<String, dynamic> map) {
    return TriggerRepositoryEventConfig(
      pullRequest: map['pullRequest'] == null
          ? null
          : TriggerRepositoryEventConfigPullRequest.fromMap(
              (map['pullRequest'] as Map).cast<String, dynamic>(),
            ),
      push: map['push'] == null
          ? null
          : TriggerRepositoryEventConfigPush.fromMap(
              (map['push'] as Map).cast<String, dynamic>(),
            ),
      repository: map['repository'] == null
          ? null
          : map['repository'] as String,
    );
  }
}
