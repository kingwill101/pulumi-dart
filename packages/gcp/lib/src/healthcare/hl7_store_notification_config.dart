// ignore_for_file: unused_element, unnecessary_cast

class Hl7StoreNotificationConfig {
  /// The Cloud Pub/Sub topic that notifications of changes are published on. Supplied by the client.
  /// PubsubMessage.Data will contain the resource name. PubsubMessage.MessageId is the ID of this message.
  /// It is guaranteed to be unique within the topic. PubsubMessage.PublishTime is the time at which the message
  /// was published. Notifications are only sent if the topic is non-empty. Topic names must be scoped to a
  /// project. service-PROJECT_NUMBER@gcp-sa-healthcare.iam.gserviceaccount.com must have publisher permissions on the given
  /// Cloud Pub/Sub topic. Not having adequate permissions will cause the calls that send notifications to fail.
  final String pubsubTopic;

  /// Creates a new [Hl7StoreNotificationConfig].
  /// [pubsubTopic] The Cloud Pub/Sub topic that notifications of changes are published on. Supplied by the client.
  Hl7StoreNotificationConfig({required this.pubsubTopic});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'pubsubTopic': pubsubTopic};
  }

  factory Hl7StoreNotificationConfig.fromMap(Map<String, dynamic> map) {
    return Hl7StoreNotificationConfig(
      pubsubTopic: map['pubsubTopic'] as String,
    );
  }
}
