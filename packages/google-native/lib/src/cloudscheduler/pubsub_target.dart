// ignore_for_file: unused_element, unnecessary_cast

/// Pub/Sub target. The job will be delivered by publishing a message to the given Pub/Sub topic.
class PubsubTarget {
  /// Attributes for PubsubMessage. Pubsub message must contain either non-empty data, or at least one attribute.
  final Map<String, String>? attributes;

  /// The message payload for PubsubMessage. Pubsub message must contain either non-empty data, or at least one attribute.
  final String? data;

  /// The name of the Cloud Pub/Sub topic to which messages will be published when a job is delivered. The topic name must be in the same format as required by Pub/Sub's [PublishRequest.name](https://cloud.google.com/pubsub/docs/reference/rpc/google.pubsub.v1#publishrequest), for example `projects/PROJECT_ID/topics/TOPIC_ID`. The topic must be in the same project as the Cloud Scheduler job.
  final String topicName;

  /// Creates a new [PubsubTarget].
  /// [attributes] Attributes for PubsubMessage. Pubsub message must contain either non-empty data, or at least one attribute.
  /// [data] The message payload for PubsubMessage. Pubsub message must contain either non-empty data, or at least one attribute.
  /// [topicName] The name of the Cloud Pub/Sub topic to which messages will be published when a job is delivered. The topic name must be in the same format as required by Pub/Sub's [PublishRequest.name](https://cloud.google.com/pubsub/docs/reference/rpc/google.pubsub.v1#publishrequest), for example `projects/PROJECT_ID/topics/TOPIC_ID`. The topic must be in the same project as the Cloud Scheduler job.
  PubsubTarget({
    this.attributes,
    this.data,
    required this.topicName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attributesValue = attributes;
    if (attributesValue != null) {
      map['attributes'] = attributesValue;
    }
    final dataValue = data;
    if (dataValue != null) {
      map['data'] = dataValue;
    }
    map['topicName'] = topicName;
    return map;
  }

  factory PubsubTarget.fromMap(Map<String, dynamic> map) {
    return PubsubTarget(
      attributes: map['attributes'] == null
          ? null
          : (map['attributes'] as Map).cast<String, String>(),
      data: map['data'] == null ? null : map['data'] as String,
      topicName: map['topicName'] as String,
    );
  }
}
