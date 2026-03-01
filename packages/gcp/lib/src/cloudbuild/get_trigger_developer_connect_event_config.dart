// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_trigger_developer_connect_event_config_pull_request.dart';
import 'get_trigger_developer_connect_event_config_push.dart';

class GetTriggerDeveloperConnectEventConfig {
  /// The Developer Connect Git repository link, formatted as 'projects/*/locations/*/connections/*/gitRepositoryLink/*'.
  final String gitRepositoryLink;
  /// The type of DeveloperConnect GitRepositoryLink.
  final String gitRepositoryLinkType;
  /// Filter to match changes in pull requests.
  final List<GetTriggerDeveloperConnectEventConfigPullRequest> pullRequests;
  /// Filter to match changes in refs like branches and tags.
  final List<GetTriggerDeveloperConnectEventConfigPush> pushes;

  /// Creates a new [GetTriggerDeveloperConnectEventConfig].
  /// [gitRepositoryLink] The Developer Connect Git repository link, formatted as 'projects/*/locations/*/connections/*/gitRepositoryLink/*'.
  /// [gitRepositoryLinkType] The type of DeveloperConnect GitRepositoryLink.
  /// [pullRequests] Filter to match changes in pull requests.
  /// [pushes] Filter to match changes in refs like branches and tags.
  GetTriggerDeveloperConnectEventConfig({
    required this.gitRepositoryLink,
    required this.gitRepositoryLinkType,
    required this.pullRequests,
    required this.pushes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gitRepositoryLink': gitRepositoryLink,
      'gitRepositoryLinkType': gitRepositoryLinkType,
      'pullRequests': pulumi.Input.encodeList<GetTriggerDeveloperConnectEventConfigPullRequest, Map<String, dynamic>>(pullRequests, (value) => value.toMap()),
      'pushes': pulumi.Input.encodeList<GetTriggerDeveloperConnectEventConfigPush, Map<String, dynamic>>(pushes, (value) => value.toMap()),
    };
  }

  factory GetTriggerDeveloperConnectEventConfig.fromMap(Map<String, dynamic> map) {
    return GetTriggerDeveloperConnectEventConfig(
      gitRepositoryLink: map['gitRepositoryLink'] as String,
      gitRepositoryLinkType: map['gitRepositoryLinkType'] as String,
      pullRequests: pulumi.Input.decodeList<GetTriggerDeveloperConnectEventConfigPullRequest>(map['pullRequests'], (value) => GetTriggerDeveloperConnectEventConfigPullRequest.fromMap((value as Map).cast<String, dynamic>())),
      pushes: pulumi.Input.decodeList<GetTriggerDeveloperConnectEventConfigPush>(map['pushes'], (value) => GetTriggerDeveloperConnectEventConfigPush.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

