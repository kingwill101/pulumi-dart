// ignore_for_file: unused_element, unnecessary_cast


/// The Action Groups information, used by the alert rule.
class ActionGroupsInformation {
  /// An optional custom email subject to use in email notifications.
  final String? customEmailSubject;
  /// An optional custom web-hook payload to use in web-hook notifications.
  final String? customWebhookPayload;
  /// The Action Group resource IDs.
  final List<String> groupIds;

  /// Creates a new [ActionGroupsInformation].
  /// [customEmailSubject] An optional custom email subject to use in email notifications.
  /// [customWebhookPayload] An optional custom web-hook payload to use in web-hook notifications.
  /// [groupIds] The Action Group resource IDs.
  ActionGroupsInformation({
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

  factory ActionGroupsInformation.fromMap(Map<String, dynamic> map) {
    return ActionGroupsInformation(
      customEmailSubject: map['customEmailSubject'] == null ? null : map['customEmailSubject'] as String,
      customWebhookPayload: map['customWebhookPayload'] == null ? null : map['customWebhookPayload'] as String,
      groupIds: (map['groupIds'] as List).cast<String>(),
    );
  }
}

