// ignore_for_file: unused_element, unnecessary_cast


class ScheduledQueryRulesAlertAction {
  /// List of action group reference resource IDs.
  final List<String> actionGroups;
  /// Custom payload to be sent for all webhook payloads in alerting action.
  final String? customWebhookPayload;
  /// Custom subject override for all email ids in Azure action group.
  final String? emailSubject;

  /// Creates a new [ScheduledQueryRulesAlertAction].
  /// [actionGroups] List of action group reference resource IDs.
  /// [customWebhookPayload] Custom payload to be sent for all webhook payloads in alerting action.
  /// [emailSubject] Custom subject override for all email ids in Azure action group.
  ScheduledQueryRulesAlertAction({
    required this.actionGroups,
    this.customWebhookPayload,
    this.emailSubject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionGroups': actionGroups,
      'customWebhookPayload': ?customWebhookPayload,
      'emailSubject': ?emailSubject,
    };
  }

  factory ScheduledQueryRulesAlertAction.fromMap(Map<String, dynamic> map) {
    return ScheduledQueryRulesAlertAction(
      actionGroups: (map['actionGroups'] as List).cast<String>(),
      customWebhookPayload: map['customWebhookPayload'] == null ? null : map['customWebhookPayload'] as String,
      emailSubject: map['emailSubject'] == null ? null : map['emailSubject'] as String,
    );
  }
}

