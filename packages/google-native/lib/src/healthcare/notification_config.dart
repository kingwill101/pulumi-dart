// ignore_for_file: unused_element, unnecessary_cast

/// Specifies where to send notifications upon changes to a data store.
class NotificationConfig {
  /// The [Pub/Sub](https://cloud.google.com/pubsub/docs/) topic that notifications of changes are published on. Supplied by the client. PubsubMessage.Data contains the resource name. PubsubMessage.MessageId is the ID of this message. It is guaranteed to be unique within the topic. PubsubMessage.PublishTime is the time at which the message was published. Notifications are only sent if the topic is non-empty. [Topic names](https://cloud.google.com/pubsub/docs/overview#names) must be scoped to a project. Cloud Healthcare API service account must have publisher permissions on the given Pub/Sub topic. Not having adequate permissions causes the calls that send notifications to fail. If a notification can't be published to Pub/Sub, errors are logged to Cloud Logging (see [Viewing error logs in Cloud Logging](https://cloud.google.com/healthcare/docs/how-tos/logging)). If the number of errors exceeds a certain rate, some aren't submitted. Note that not all operations trigger notifications, see [Configuring Pub/Sub notifications](https://cloud.google.com/healthcare/docs/how-tos/pubsub) for specific details.
  final String? pubsubTopic;

  /// Indicates whether or not to send Pub/Sub notifications on bulk import. Only supported for DICOM imports.
  final bool? sendForBulkImport;

  /// Creates a new [NotificationConfig].
  /// [pubsubTopic] The [Pub/Sub](https://cloud.google.com/pubsub/docs/) topic that notifications of changes are published on. Supplied by the client. PubsubMessage.Data contains the resource name. PubsubMessage.MessageId is the ID of this message. It is guaranteed to be unique within the topic. PubsubMessage.PublishTime is the time at which the message was published. Notifications are only sent if the topic is non-empty. [Topic names](https://cloud.google.com/pubsub/docs/overview#names) must be scoped to a project. Cloud Healthcare API service account must have publisher permissions on the given Pub/Sub topic. Not having adequate permissions causes the calls that send notifications to fail. If a notification can't be published to Pub/Sub, errors are logged to Cloud Logging (see [Viewing error logs in Cloud Logging](https://cloud.google.com/healthcare/docs/how-tos/logging)). If the number of errors exceeds a certain rate, some aren't submitted. Note that not all operations trigger notifications, see [Configuring Pub/Sub notifications](https://cloud.google.com/healthcare/docs/how-tos/pubsub) for specific details.
  /// [sendForBulkImport] Indicates whether or not to send Pub/Sub notifications on bulk import. Only supported for DICOM imports.
  NotificationConfig({
    this.pubsubTopic,
    this.sendForBulkImport,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final pubsubTopicValue = pubsubTopic;
    if (pubsubTopicValue != null) {
      map['pubsubTopic'] = pubsubTopicValue;
    }
    final sendForBulkImportValue = sendForBulkImport;
    if (sendForBulkImportValue != null) {
      map['sendForBulkImport'] = sendForBulkImportValue;
    }
    return map;
  }

  factory NotificationConfig.fromMap(Map<String, dynamic> map) {
    return NotificationConfig(
      pubsubTopic:
          map['pubsubTopic'] == null ? null : map['pubsubTopic'] as String,
      sendForBulkImport: map['sendForBulkImport'] == null
          ? null
          : map['sendForBulkImport'] as bool,
    );
  }
}
