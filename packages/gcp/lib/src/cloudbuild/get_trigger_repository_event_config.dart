// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_trigger_repository_event_config_pull_request.dart';
import 'get_trigger_repository_event_config_push.dart';

class GetTriggerRepositoryEventConfig {
  /// Contains filter properties for matching Pull Requests.
  final List<GetTriggerRepositoryEventConfigPullRequest> pullRequests;

  /// Contains filter properties for matching git pushes.
  final List<GetTriggerRepositoryEventConfigPush> pushes;

  /// The resource name of the Repo API resource.
  final String repository;

  /// Creates a new [GetTriggerRepositoryEventConfig].
  /// [pullRequests] Contains filter properties for matching Pull Requests.
  /// [pushes] Contains filter properties for matching git pushes.
  /// [repository] The resource name of the Repo API resource.
  GetTriggerRepositoryEventConfig({
    required this.pullRequests,
    required this.pushes,
    required this.repository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pullRequests':
          pulumi.Input.encodeList<
            GetTriggerRepositoryEventConfigPullRequest,
            Map<String, dynamic>
          >(pullRequests, (value) => value.toMap()),
      'pushes':
          pulumi.Input.encodeList<
            GetTriggerRepositoryEventConfigPush,
            Map<String, dynamic>
          >(pushes, (value) => value.toMap()),
      'repository': repository,
    };
  }

  factory GetTriggerRepositoryEventConfig.fromMap(Map<String, dynamic> map) {
    return GetTriggerRepositoryEventConfig(
      pullRequests:
          pulumi.Input.decodeList<GetTriggerRepositoryEventConfigPullRequest>(
            map['pullRequests'],
            (value) => GetTriggerRepositoryEventConfigPullRequest.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      pushes: pulumi.Input.decodeList<GetTriggerRepositoryEventConfigPush>(
        map['pushes'],
        (value) => GetTriggerRepositoryEventConfigPush.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      repository: map['repository'] as String,
    );
  }
}
