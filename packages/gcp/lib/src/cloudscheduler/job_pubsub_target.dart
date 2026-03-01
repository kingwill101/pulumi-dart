// ignore_for_file: unused_element, unnecessary_cast

class JobPubsubTarget {
  /// Attributes for PubsubMessage.
  /// Pubsub message must contain either non-empty data, or at least one attribute.
  final Map<String, String>? attributes;

  /// The message payload for PubsubMessage.
  /// Pubsub message must contain either non-empty data, or at least one attribute.
  /// A base64-encoded string.
  final String? data;

  /// The full resource name for the Cloud Pub/Sub topic to which
  /// messages will be published when a job is delivered. ~>**NOTE:**
  /// The topic name must be in the same format as required by PubSub's
  /// PublishRequest.name, e.g. `projects/my-project/topics/my-topic`.
  final String topicName;

  /// Creates a new [JobPubsubTarget].
  /// [attributes] Attributes for PubsubMessage.
  /// [data] The message payload for PubsubMessage.
  /// [topicName] The full resource name for the Cloud Pub/Sub topic to which
  JobPubsubTarget({this.attributes, this.data, required this.topicName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?attributes,
      'data': ?data,
      'topicName': topicName,
    };
  }

  factory JobPubsubTarget.fromMap(Map<String, dynamic> map) {
    return JobPubsubTarget(
      attributes: map['attributes'] == null
          ? null
          : (map['attributes'] as Map).cast<String, String>(),
      data: map['data'] == null ? null : map['data'] as String,
      topicName: map['topicName'] as String,
    );
  }
}
