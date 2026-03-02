// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Action Groups information, used by the alert rule.
class ActionGroupsInformationResponse {
  /// An optional custom email subject to use in email notifications.
  final pulumi.Input<String>? customEmailSubject;
  /// An optional custom web-hook payload to use in web-hook notifications.
  final pulumi.Input<String>? customWebhookPayload;
  /// The Action Group resource IDs.
  final pulumi.Input<List<String>> groupIds;

  /// Creates a new [ActionGroupsInformationResponse].
  /// [customEmailSubject] An optional custom email subject to use in email notifications.
  /// [customWebhookPayload] An optional custom web-hook payload to use in web-hook notifications.
  /// [groupIds] The Action Group resource IDs.
  ActionGroupsInformationResponse({
    this.customEmailSubject,
    this.customWebhookPayload,
    required this.groupIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customEmailSubject': ?customEmailSubject,
      'customWebhookPayload': ?customWebhookPayload,
      'groupIds': groupIds,
    };
  }

  factory ActionGroupsInformationResponse.fromMap(Map<String, dynamic> map) {
    return ActionGroupsInformationResponse(
      customEmailSubject: map['customEmailSubject'] == null ? null : (map['customEmailSubject'] as String).input(),
      customWebhookPayload: map['customWebhookPayload'] == null ? null : (map['customWebhookPayload'] as String).input(),
      groupIds: ((map['groupIds'] as List).cast<String>()).input(),
    );
  }
}

