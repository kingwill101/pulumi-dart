// ignore_for_file: unused_element, unnecessary_cast

class FhirStoreNotificationConfig {
  /// The Cloud Pub/Sub topic that notifications of changes are published on. Supplied by the client.
  /// PubsubMessage.Data will contain the resource name. PubsubMessage.MessageId is the ID of this message.
  /// It is guaranteed to be unique within the topic. PubsubMessage.PublishTime is the time at which the message
  /// was published. Notifications are only sent if the topic is non-empty. Topic names must be scoped to a
  /// project. service-PROJECT_NUMBER@gcp-sa-healthcare.iam.gserviceaccount.com must have publisher permissions on the given
  /// Cloud Pub/Sub topic. Not having adequate permissions will cause the calls that send notifications to fail.
  final String pubsubTopic;

  /// Whether to send full FHIR resource to this Pub/Sub topic for Create and Update operation.
  /// Note that setting this to true does not guarantee that all resources will be sent in the format of
  /// full FHIR resource. When a resource change is too large or during heavy traffic, only the resource name will be
  /// sent. Clients should always check the "payloadType" label from a Pub/Sub message to determine whether
  /// it needs to fetch the full resource as a separate operation.
  final bool? sendFullResource;

  /// Whether to send full FHIR resource to this Pub/Sub topic for deleting FHIR resource. Note that setting this to
  /// true does not guarantee that all previous resources will be sent in the format of full FHIR resource. When a
  /// resource change is too large or during heavy traffic, only the resource name will be sent. Clients should always
  /// check the "payloadType" label from a Pub/Sub message to determine whether it needs to fetch the full previous
  /// resource as a separate operation.
  final bool? sendPreviousResourceOnDelete;

  /// Creates a new [FhirStoreNotificationConfig].
  /// [pubsubTopic] The Cloud Pub/Sub topic that notifications of changes are published on. Supplied by the client.
  /// [sendFullResource] Whether to send full FHIR resource to this Pub/Sub topic for Create and Update operation.
  /// [sendPreviousResourceOnDelete] Whether to send full FHIR resource to this Pub/Sub topic for deleting FHIR resource. Note that setting this to
  FhirStoreNotificationConfig({
    required this.pubsubTopic,
    this.sendFullResource,
    this.sendPreviousResourceOnDelete,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['pubsubTopic'] = pubsubTopic;
    final sendFullResourceValue = sendFullResource;
    if (sendFullResourceValue != null) {
      map['sendFullResource'] = sendFullResourceValue;
    }
    final sendPreviousResourceOnDeleteValue = sendPreviousResourceOnDelete;
    if (sendPreviousResourceOnDeleteValue != null) {
      map['sendPreviousResourceOnDelete'] = sendPreviousResourceOnDeleteValue;
    }
    return map;
  }

  factory FhirStoreNotificationConfig.fromMap(Map<String, dynamic> map) {
    return FhirStoreNotificationConfig(
      pubsubTopic: map['pubsubTopic'] as String,
      sendFullResource: map['sendFullResource'] == null
          ? null
          : map['sendFullResource'] as bool,
      sendPreviousResourceOnDelete: map['sendPreviousResourceOnDelete'] == null
          ? null
          : map['sendPreviousResourceOnDelete'] as bool,
    );
  }
}
