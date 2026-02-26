// ignore_for_file: unused_element, unnecessary_cast

class BudgetAllUpdatesRule {
  /// Boolean. When set to true, disables default notifications sent
  /// when a threshold is exceeded. Default recipients are
  /// those with Billing Account Administrators and Billing
  /// Account Users IAM roles for the target account.
  final bool? disableDefaultIamRecipients;

  /// When set to true, and when the budget has a single project configured,
  /// notifications will be sent to project level recipients of that project.
  /// This field will be ignored if the budget has multiple or no project configured.
  /// Currently, project level recipients are the users with Owner role on a cloud project.
  final bool? enableProjectLevelRecipients;

  /// The full resource name of a monitoring notification
  /// channel in the form
  /// projects/{project_id}/notificationChannels/{channel_id}.
  /// A maximum of 5 channels are allowed.
  final List<String>? monitoringNotificationChannels;

  /// The name of the Cloud Pub/Sub topic where budget related
  /// messages will be published, in the form
  /// projects/{project_id}/topics/{topic_id}. Updates are sent
  /// at regular intervals to the topic.
  final String? pubsubTopic;

  /// The schema version of the notification. Only "1.0" is
  /// accepted. It represents the JSON schema as defined in
  /// https://cloud.google.com/billing/docs/how-to/budgets#notification_format.
  final String? schemaVersion;

  BudgetAllUpdatesRule({
    this.disableDefaultIamRecipients,
    this.enableProjectLevelRecipients,
    this.monitoringNotificationChannels,
    this.pubsubTopic,
    this.schemaVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final disableDefaultIamRecipientsValue = disableDefaultIamRecipients;
    if (disableDefaultIamRecipientsValue != null) {
      map['disableDefaultIamRecipients'] = disableDefaultIamRecipientsValue;
    }
    final enableProjectLevelRecipientsValue = enableProjectLevelRecipients;
    if (enableProjectLevelRecipientsValue != null) {
      map['enableProjectLevelRecipients'] = enableProjectLevelRecipientsValue;
    }
    final monitoringNotificationChannelsValue = monitoringNotificationChannels;
    if (monitoringNotificationChannelsValue != null) {
      map['monitoringNotificationChannels'] =
          monitoringNotificationChannelsValue;
    }
    final pubsubTopicValue = pubsubTopic;
    if (pubsubTopicValue != null) {
      map['pubsubTopic'] = pubsubTopicValue;
    }
    final schemaVersionValue = schemaVersion;
    if (schemaVersionValue != null) {
      map['schemaVersion'] = schemaVersionValue;
    }
    return map;
  }

  factory BudgetAllUpdatesRule.fromMap(Map<String, dynamic> map) {
    return BudgetAllUpdatesRule(
      disableDefaultIamRecipients: map['disableDefaultIamRecipients'] == null
          ? null
          : map['disableDefaultIamRecipients'] as bool,
      enableProjectLevelRecipients: map['enableProjectLevelRecipients'] == null
          ? null
          : map['enableProjectLevelRecipients'] as bool,
      monitoringNotificationChannels:
          map['monitoringNotificationChannels'] == null
              ? null
              : (map['monitoringNotificationChannels'] as List).cast<String>(),
      pubsubTopic:
          map['pubsubTopic'] == null ? null : map['pubsubTopic'] as String,
      schemaVersion:
          map['schemaVersion'] == null ? null : map['schemaVersion'] as String,
    );
  }
}
